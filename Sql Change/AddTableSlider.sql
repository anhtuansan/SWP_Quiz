

drop table Slider
Create table Slider(
	ID int identity(1,1) not null primary key,
	Title nvarchar(max),
	SubTitle nvarchar(max),
	Content nvarchar(max),
	Image nvarchar(max),
	LinkUrl nvarchar(max),
	CreatedAt date,
	CreatedBy int,
	Status int,
	CONSTRAINT FK_CreatedBy FOREIGN KEY (CreatedBy) REFERENCES users(ID)
);

delete from Slider;

insert into Slider(Title, SubTitle, Content, Image, LinkUrl)
values(N'Học JSP miễn phí',N'Để đạt được kết quả tốt trong mọi việc ta cần xác định mục tiêu rõ ràng cho việc đó. Học lập trình cũng không là ngoại lệ.',
N'content',N'slider2.jpg','https://fullstack.edu.vn/')

insert into Slider(Title, SubTitle, Content, Image, LinkUrl)
values(N'Học Servlet miễn phí',N'Để đạt được kết quả tốt trong mọi việc ta cần xác định mục tiêu rõ ràng cho việc đó. Học lập trình cũng không là ngoại lệ.',
N'content',N'slider3.jpg','https://fullstack.edu.vn/')

insert into Slider(Title, SubTitle, Content, Image, LinkUrl)
values(N'Học JSP miễn phí',N'Để đạt được kết quả tốt trong mọi việc ta cần xác định mục tiêu rõ ràng cho việc đó. Học lập trình cũng không là ngoại lệ.',
N'content',N'slider2.jpg','https://fullstack.edu.vn/')

insert into Slider(Title, SubTitle, Content, Image, LinkUrl)
values(N'Học JSP miễn phí',N'Để đạt được kết quả tốt trong mọi việc ta cần xác định mục tiêu rõ ràng cho việc đó. Học lập trình cũng không là ngoại lệ.',
N'content',N'slider3.jpg','https://fullstack.edu.vn/')

insert into Slider(Title, SubTitle, Content, Image, LinkUrl)
values(N'Học JSP miễn phí',N'Để đạt được kết quả tốt trong mọi việc ta cần xác định mục tiêu rõ ràng cho việc đó. Học lập trình cũng không là ngoại lệ.',
N'content',N'slider2.jpg','https://fullstack.edu.vn/')



----------------------------------------
select * from slider

SELECT TOP 8 * FROM slider order by ID desc
