# coding: utf-8

AdminUser.create(:email => 'alpha@alpha.com', :password => 'alpha', :password_confirmation => 'alpha')

ProjectGroup.create(name: "Web")
ProjectGroup.create(name: "Diseño")
ProjectGroup.create(name: "Ebooks")

Project.create(name: "Bibliomula", title: "Bibliomula", title_link: "http://bibliomula.com", subtitle: "Revista de literatura", img_small: "/assets/portfolio/thumbs/portfolio_small_01.png", zoom_details: "Bibliomula - Revista de literatura", img_large: "/assets/portfolio/originals/portfolio_large_01.png", project_group_id: 1)
Project.create(name: "Pickista", title: "Pickista", title_link: "http://pickista.com", subtitle: '', img_small: "/assets/portfolio/thumbs/portfolio_small_01_1.png", zoom_details: "Pickista - Crea encuestas graficas para que tus amigos te ayuden", img_large: "/assets/portfolio/originals/portfolio_large_01_1.png", project_group_id: 1)
Project.create(name: "The Counterpoint", title: "The Counterpoint", title_link: "http://the-counterpoint.com", subtitle: '', img_small: "/assets/portfolio/thumbs/portfolio_small_02.jpg", zoom_details: "The Counterpoint - Sistema web de discuciones inteligente", img_large: "/assets/portfolio/originals/portfolio_large_02.jpg", project_group_id: 1)
Project.create(name: "Portal Universidad de Los Andes", title: "Universidad de Los Andes", title_link: "http://www.ula.ve/", subtitle: '', img_small: "/assets/portfolio/thumbs/portfolio_small_03.jpg", zoom_details: "Portal web de la Universidad de Los Andes", img_large: "/assets/portfolio/originals/portfolio_large_03.jpg", project_group_id: 1)
Project.create(name: "Parenting Bridge", title: "Parenting Bridge", title_link: "http://parentingbridge.com", subtitle: '', img_small: "/assets/portfolio/thumbs/portfolio_small_04.jpg", zoom_details: "Parenting Bridge - Aplicacion web para gestionar la custodia de hijos de padres divorciados", img_large: "/assets/portfolio/originals/portfolio_large_04.jpg", project_group_id: 1)

 