from django.shortcuts import render
from emergency.models import HospitalDetails, resourceRequirements
# Create your views here.
def home(request):
    return render(request,"index.html")

def submitInjuryType(request):
    try:
        if request.method=="POST":
            itype=request.POST.get('injuryType')
            hospitalData=HospitalDetails.objects.all()
            resourceRequirementsData=resourceRequirements.objects.all()
            hospitalData=sorted(hospitalData,lambda x:60*x[5]+x[6])
            for a in hospitalData:
                for i in range(3):
                    if resourceRequirementsData[i]!=0 and HospitalDetails[i+2]==0 and resourceRequirementsData[2]==itype:
                        continue
                
        return render(request,"type.html")   
    except Exception as e:
        print("error"+str(e))
