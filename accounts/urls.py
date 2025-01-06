from django.urls import include, path
from . import views


urlpatterns = [
    path('', views.myAccount),
    path('registerUser/', views.registerUser, name='registerUser'),
    path('registerVendor/', views.registerVendor, name='registerVendor'),

    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('myAccount/', views.myAccount, name='myAccount'),
    path('custDashboard/', views.custDashboard, name='custDashboard'),
    path('vendorDashboard/', views.vendorDashboard, name='vendorDashboard'),

    #paths for validating email 
    path('activate/<uidb64>/<token>', views.activate, name ='activate'),

    #path for frgot password
     path('forgot_password/', views.forgot_password, name='forgot_password'),

     #path for reser passord validating 
    path('reset_password_validate/<uidb64>/<token>/', views.reset_password_validate, name='reset_password_validate'),
    # path for resettig password
    path('reset_password/', views.reset_password, name='reset_password'),

    path('vendor/', include('vendor.urls'))

]