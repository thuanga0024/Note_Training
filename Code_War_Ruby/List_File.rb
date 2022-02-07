def create_list(var1,var2,var3,var4)
  file = File.new("List.txt", "w+")
  file.puts("Danh Sach Cac File Cua ThuanVPK \n")
  file.puts(var1) unless var1.empty?
  file.puts("\n")
  file.puts("Danh Sach Cac File Cua DuyBC \n")
  file.puts(var2) unless var2.empty?
  file.puts("\n")
  file.puts("Danh Sach Cac File Cua LamPM \n")
  file.puts(var3) unless var3.empty?
  file.puts("\n")
  file.puts("Danh Sach Cac File Cua HieuAM \n")
  file.puts(var4) unless var4.empty?
  file.puts("\n")
  file.close
end

def sendmail(var1,var2,var3,var4,var5)
  file = File.new("sendmail.txt", "w+")
  unless var1.empty?
  file.puts("Danh Sach Cac File Cua ThuanVPK \n")
  file.puts(var1)
  file.puts("\n")
  end

  unless var2.empty?
  file.puts("Danh Sach Cac File Cua DuyBC \n")
  file.puts(var2)
  file.puts("\n")
  end

  unless var3.empty?
  file.puts("Danh Sach Cac File Cua LamPM \n")
  file.puts(var3)
  file.puts("\n")
  end

  unless var4.empty?
  file.puts("Danh Sach Cac File Cua HieuAM \n")
  file.puts(var4) unless var4.empty?
  file.puts("\n")
  end
  file.close

  `mail -s "Warning_File $(date +"%d-%m-%y")" nguyennam16214@gmail.com < sendmail.txt`

  `curl https://slack.com/api/files.upload -F token="xoxb-3076572536385-3064006457491-oJrdyM7q2R68VbUtz7C7YG3X" -F channels="C032KLP97A4" -F title="File_Warning" -F filename="List_Waring" -F file=@"#{var5}"`
end

output = `ls -ltdh * --time-style="+%y-%m-%d %H:%M" | grep -v '^total'`
pwd=`pwd`
link = pwd.gsub("\n","")+ "/sendmail.txt"

thuanvpk=""
duyBC=""
lamPM=""
hieuAM=""

thuan_warning=""
duy_warning=""
lam_warning=""
hieu_warning=""

check_count=0

output.each_line do |line|
  values = line.split
  owner = values[2]
  day = values[5]
  time = values[6]
  file = values[7]

  minutes = `date +"%M"`.to_i - time.split(':')[1].to_i
  hour = `date +"%H"`.to_i - time.split(':')[0].to_i

  if `date +"%y"`.to_i - day.split('-')[0].to_i == 0 and `date +"%m"`.to_i - day.split('-')[1].to_i == 0 and `date +"%d"`.to_i - day.split('-')[2].to_i == 0
    summary_minutes = hour*60 + minutes
    puts summary_minutes
    if owner == "thuanvpk"
      thuanvpk.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
      if summary_minutes >= 1
        thuan_warning.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
        check_count+=1
      end
    elsif owner == "duybc"
      duyBC.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
      if summary_minutes >= 5
        duy_warning.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
        check_count+=1
      end
    elsif owner == "lampm"
      lamPM.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
      if summary_minutes >= 10
        lam_warning.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
        check_count+=1
      end
    elsif owner == "hieuam"
      hieuAM.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
      if summary_minutes >= 3
        hieu_warning.concat file + " Tao Ra Khoang " + summary_minutes.to_s + " Phut \n"
        check_count+=1
      end
    end
  end
end

create_list thuanvpk,duyBC,lamPM,hieuAM
if check_count > 0
  sendmail thuan_warning,duy_warning,lam_warning,hieu_warning,link
end