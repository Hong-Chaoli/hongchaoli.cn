# 主题：yihui/hugo-lithium
# blogdown书:
# https://bookdown.org/yihui/blogdown/a-quick-example.html

# 用 R 语言的 blogdown + hugo + netlify + github 搭建静态博客系统
# https://cosx.org/2018/01/build-blog-with-blogdown-hugo-netlify-github/
# rstudio连接到github -》github连接到netlify进行deployment -》将自己注册的域名绑定到netlify
# -》在个人域名的提供商网站修改nameservers为netlify提供的nameservers。
# -》申请ssl证书 -》将网站提交到各大搜索引擎

# 可对照谢益辉的网站及对应代码进行学习：https://github.com/yihui/yihui.org/tree/master


# https://www.shenxt.info/post/blogdown/
# https://jiaxiangli.netlify.app/2017/12/17/blogdown/

# 更改icon:
# config.yaml中找到favicon: favicon.ico
# theme -> hugo-lithium -> static -> favicon.ico
# theme -> hugo-lithium -> static -> images -> logo.png

library(blogdown)
check_gitignore()
check_content()
hugo_version()
serve_site()

#新建博客 .Rmd文件
blogdown::new_post()
blogdown::new_post(title = "1998 Science Bruce Beutler LPS信号缺陷小鼠：Tlr4基因突变",  
                   ext = '.Rmd', 
                   subdir = "post")

#启动本地服务，一边写文档，网页渲染效果随时可见
blogdown::serve_site()

#停止本地服务
blogdown::stop_server()

#将.Rmd文件渲染为html等站点文件
blogdown::build_site()











