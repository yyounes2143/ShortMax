.class public Lcom/ss/ttvideoengine/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field public static sBoard:Ljava/lang/String;

.field public static sHardware:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDeviceBoard()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sBoard:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sBoard:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sBoard:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    :goto_0
    sget-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sBoard:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getDeviceHardware()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sHardware:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sHardware:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sHardware:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    :goto_0
    sget-object v0, Lcom/ss/ttvideoengine/utils/DeviceUtil;->sHardware:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
