User.destroy_all
User.create!([
	{
		username: 'lgm1213',
		email: 'lgm1213@gmail.com',
		password: 'password',
		password_confirmation: 'password',
		title: 'SuperAdmin',
		role: 100,
		company_id: 09
		},
	{
		username: 'javier',
		email: 'javier@realestateshoppefl.com.com',
		password: 'password',
		password_confirmation: 'password',
		title: 'Admin',
		role: 99,
		company_id: 09
	},
	{
		username: 'nick',
		email: 'itskcin@gmail.com',
		password: 'password',
		password_confirmation: 'password',
		title: 'Admin',
		role: 99,
		company_id: 09
	},
	{
		username: 'amanda',
		email: 'amanda@realestateshoppefl.com',
		password: 'password',
		password_confirmation: 'password',
		title: 'Admin',
		role: 99,
		company_id: 09
	},	
	{
		username: 'megan',
		email: 'mgreen@realestateshoppefl.com',
		password: 'password',
		password_confirmation: 'password',
		title: 'Admin',
		role: 99,
		company_id: 09
	}])	
