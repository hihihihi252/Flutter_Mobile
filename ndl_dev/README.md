<!-- # ndl_dev

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
-----------------------------Kiến thức cơ bả--------------------------------
Toán tử số học

Ký hiệu	Mô tả toán tử
+ 	Cộng hai toán hạng
–	Trừ hai toán hạng
-expr	Đảo ngược dấu của biểu thức
* 	Nhân hai toán hạng
/ 	Chia hai toán hạng
~/	Chia lấy phần nguyên
% 	Chia lấy phần dư
----------------------------------------------
Toán tử đẳng thức và quan hệ

Ký hiệu	Mô tả toán tử
> 	Kiểm tra lớn hơn.
<	Kiểm tra nhỏ hơn.
>=	Kiểm tra lớn hơn hoặc bằng.
<=	Kiểm tra nhỏ hơn hoặc bằng.
== 	Kiểm tra có bằng nhau hay không.
!=	Kiểm tra có khác nhau hay không.
----------------------------------------------
Toán tử kiểm tra kiểu

Ký hiệu	Mô tả toán tử
is	Đúng nếu đối tượng có kiểu được chỉ định.
is!	Sai nếu đối tượng có kiểu được chỉ định.
as	Typecast (cũng được sử dụng để chỉ định tiền tố thư viện).
----------------------------------------------
Toán tử gán

Ký hiệu	Mô tả toán tử
=	Gán giá trị
+=	Cộng trước rồi gán.
----------------------------------------------
Toán tử logic

Ký hiệu	Mô tả toán tử
&& 	Nếu cả hai điều kiện đều đúng trả về true.
||	Nếu một trong hai điều kiện đúng sẽ trả về true.
!	Đảo ngược kết quả.
----------------------------------------------
Bitwise và shift

Ký hiệu	Mô tả toán tử
& 	Và.
|	Hoặc.
^ 	XOR.
~ 	NOT.
<< 	Dịch trái>> Dịch phải.
----------------------------------------------
Biểu thức điều kiện

Ký hiệu	Mô tả toán tử
điều kiện ? expersion1: expersion2	Phiên bản đơn giản của câu lệnh if-else. Nếu điều kiện đúng thì expersion1 được thực thi, nếu sai expersion2 được thực thi.
expersion1 ?? expersion2	Nếu expersion1 khác null trả về giá trị của expersion1, ngược lại trả về giá trị expersion2.
----------------------------------------------
Cascade notation

Ký hiệu	Mô tả toán tử
...	Thao tác một chuỗi hành động trên cùng một đối tượng.
----------------------------------------------
Các toán tử khác

Ký hiệu	Mô tả toán tử
[]	Truy cập danh sách.
?[]	Truy cập danh sách có điều kiện (nếu không null).
()	Gọi hàm.
?.	Truy cập thành viên.
?.	Truy cập thành viên có điều kiện (nếu không null).
!	Null assertion operator.






-------------------------------Bài Học--------------------------------------
- Widget là gì ? 
- Phân loại Widget 
- Một số loại widget cơ bản (Text,Container,Button,Column,Row,Stack,SingleChildScrollView)
- Cách sử dụng Widget 
- Stateless và Stateful widget
- MaterialApp, CupertinoApp, WidgetsApp
*-------------------------------------------------------------------------
* Định nghĩa của Widget
- widget là một mô tả bất biến của một phần giao diện người dùng
- Mỗi phần tử trên màn hình của ứng dụng Flutter là một widget
- Widget là một cách để khai báo và xây dựng nguời dùng
---------------------------------------------------------------------------*
* Phân loại Widget 
- Hiển thị nội dung : Text, Image,...
- Tương tác với người dùng : Button , Slider , .....
- Tạo bố cục : Row, column, stack,.....
*----------------------------------------------------------------------------
- Stateless và Stateful widget
- State là gì ? 
- Stateless widget
- Stateful widget
- Nên chọn cái nào ? 
* Ý tưởng chính là bạn xây dựng giao diện người dùng của mình bằng các widget. Các widget mô tả giao diện của chúng sẽ trông như thế nào dựa trên cấu hình và trạng thái hiện tại. Khi trạng thái của một widget thay đổi, widget sẽ xây dựng lại mô tả của nó.
--------------------*
-VNP
-Text("Đã ngắt kết nối VPN")
-Text("------------")

-isConnected = false
-severName = "Singapore"
-severIp = "1234.5678.9"
---------------------------------------------------------------------------*
- MaterialApp, CupertinoApp, WidgetsApp
???-------------------------------------------------------------------------*

____________________________Trang 2_________________________________________

1- Set state là gì ?
<---------------------------------------------------------------------------> Trong bài viết trước, bạn đã biết stateless widget là gì, stateful widget là gì, và quan trọng hơn đó là state là gì. Mình nhắc lại một chút rằng Stateful widget có nghĩa là widget có state, và state đơn giản đó là thông tin / dữ liệu. Và dữ liệu này sẽ ảnh hưởng đến cách hiển thị của widget (diễn đạt theo một cách khác thì dữ liệu này sẽ được sử dụng trong widget để hiển thị theo cách bạn muốn).
<--------------------------------------------------------------------------->
2- When thì cần dùng set state ?

