.class public Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocation:Landroid/location/Location;

.field private final mMonitoringStatus:I

.field private final mMonitoringType:I

.field private final mSourceTechnologies:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/location/Location;)V
    .locals 0
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "sourceTechnologies"    # I
    .param p4, "location"    # Landroid/location/Location;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 42
    iput p2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 43
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 44
    iput-object p4, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMonitoringStatus()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    return v0
.end method

.method public getMonitoringType()I
    .locals 1

    .line 51
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    return v0
.end method

.method public getSourceTechnologies()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 113
    const-string v0, "GeofenceHardwareMonitorEvent: type=%d, status=%d, sources=%d, location=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 113
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    return-void
.end method
