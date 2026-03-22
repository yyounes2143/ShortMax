.class public Lcom/ss/texturerender/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static mIsVRDevice:I = -0x1


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

.method public static isVRDevice()Z
    .locals 2

    .line 1
    sget v0, Lcom/ss/texturerender/DeviceManager;->mIsVRDevice:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Pico"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Lcom/ss/texturerender/DeviceManager;->mIsVRDevice:I

    .line 14
    .line 15
    :cond_0
    sget v0, Lcom/ss/texturerender/DeviceManager;->mIsVRDevice:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1
.end method
