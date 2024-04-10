# Website quản lí tiệm net

### Hướng dẫn cài đặt
Clone và giải nén code vào thư mục htdocs (đối với Xampp hay Apache) hoặc www (đối với Wampp, nginx, docker).

Truy cập vào phpmyadmin, tạo database mới tên là quanlytiemnet, sau khi tạo xong, import file quanlytiemnet.sql  trong thư mục database/ để tạo bảng và dữ liệu.

Cấu hình các thông số kết nối SQL trong file db_connect.php cho phù hợp

 $servername = "localhost";
 
 $username = "root";
 
 $password = "";
 
 $database = "quanlytiemnet";

Gõ đường dẫn http://localhost/quanlytiemnet để chạy ứng dụng web

## 1/	Khảo sát đề tài
Những cửa hàng internet không sử dụng các hệ thống quản lý thì họ quản lý cửa hàng thông qua sổ ghi chép, trong sổ có các nội dung: số máy, giờ bắt đầu, dịch vụ khác, thành tiền Khi có khách đến thuê máy, người quản lý cửa hàng phải ghi số máy, giờ bắt đầu của người khách. Khi khách trả máy thì người quản lý phải tính giờ thuê máy và tính thành tiền cho khách. Khi người chủ quán muốn thống kê doanh số thu từ cửa hàng thì phải tính toán thủ công bằng tay. Việc thống kê doanh thu là việc tốn rất nhiều thời gian và dễ xảy ra sai xót. Không có biểu đồ thống kê doanh thu mỗi ngày, mỗi tuần, mỗi tháng,… nên khó có thể đánh giá tình hình kinh doanh. Việc quản lý như vậy rất mất thời gian và sức lực nhưng hiệu quả mang lại không cao. Dễ sai nên khó quản lý và đưa ra kế hoặc kinh doanh lâu dài.
Chính vì những lẽ đó, việc sử dụng hệ thống hỗ trợ quản lý là điều vô cùng cần thiết. Yêu cầu đặt ra cho các hệ thống đó là:
-	Hỗ trợ quản lý số máy tính trong tiệm.
-	Hỗ trợ cập nhật giá tiền.
-	Hỗ trợ quản lý thông tin khách hàng.
-	Hỗ trợ quản lý các giao dịch.
-	Thống kê doanh thu và thống kê khách hàng.
-	Cho phép đăng ký tài khoản và đăng nhập.
-	Hỗ trợ quản lý tài khoản và đổi mật khẩu.
-	Hỗ trợ biểu đồ thể hiện doanh thu.
-	Hỗ trợ quản lý máy tính.
 
 ### Sơ đồ chức năng
 ![image](https://user-images.githubusercontent.com/91688786/206248950-f0ae4a35-18b7-46f9-9fd0-25bceb335c37.png)

# Thiết kế cơ sở dữ liệu
![image](https://user-images.githubusercontent.com/91688786/207876355-b7180081-0aeb-49d1-a161-2914d3e4623e.png)
- Bảng `thongtinkhachhang` lưu trữ thông tin khách hàng
- Bảng `giaodich` lưu trữ thông tin giao dịch
- Bảng `giatien` cập nhật giá tiền theo từng khoang thời gian kinh doanh của cửa hàng
- Bảng `maytinh` thể hiện số lượng máy tính cũng như tình trạng hỏng/bình thường của từng máy, những thay đổi như thêm/bớt, sửa chữa cảu máy sẽ được cập nhật ở bảng này 
- Bảng `taikhoan` lưu trữ thông tin tài khoản vào hệ thống của nhân viên và quản lý với mật khẩu đã được mã khóa để không rò rỉ thông tin 

## 2/	Những tính năng đã làm được
Nhìn chung, hệ thống đã đáp ứng được các nhu cầu cơ bản của một website quản lý tiệm net. Giao diện thân thiện, thao tác dễ sử dụng, thuận tiện cho người sử dụng. Phần mềm giúp hiện đại hóa việc quản lý tiệm net, giúp cho việc quản lý trở nên dễ dàng hơn, nhanh chóng hơn. Đồng thời, hệ thống còn có thể được nâng cấp để phù hợp với các nhu cầu khác của người quản lý tiệm net. Từ đó giảm thiểu được chi phí quản lý và tiết kiệm được thời gian của người sử dụng.


## 3/	Những tính năng chưa làm được
Tuy nhiên do kiến thức còn hạn chế và thời gian có hạn nên trang web còn khá đơn giản, chưa tối ưu các chức năng. Chưa thể quản lý hết các hoạt động của tiệm net trong thực tế. Hệ thống chỉ hỗ trợ trên nền tảng web, chưa có ứng dụng di động. Còn phụ thuộc nhiều vào thư viện của ngôn ngữ JavaScript, nếu có sự thay đổi thì cần phải sửa lại nhiều chỗ. Tính nâng bảo mật của trang web còn khá thấp.


## 4/ Hướng phát triển 
- Chỉnh giao diện cho bắt mắt hơn.
- Viết thêm các chức năng khác để đáp ứng yêu cầu ứng dụng trong thực tế.
- Tối ưu các tính năng đã có.
- Hỗ trợ đa nền tảng, đặc biệt là trên thiết bị di động như Android, IOS. 
- Sử dụng công nghệ lazy loading để tối ưu tốc độ tải trang.
- Tối ưu hóa cấu trúc database.
