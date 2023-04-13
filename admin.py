from django.contrib import admin
from.models import onlinetraining,offlinetraining,paymenttrainee,paymenttrainer,batch,user_registration
# Register your models here.
admin.site.register(onlinetraining)
admin.site.register(offlinetraining)
admin.site.register(paymenttrainee)
admin.site.register(paymenttrainer)
admin.site.register(batch)
admin.site.register(user_registration)

