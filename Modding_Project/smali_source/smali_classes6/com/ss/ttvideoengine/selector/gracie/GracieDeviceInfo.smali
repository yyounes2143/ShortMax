.class Lcom/ss/ttvideoengine/selector/gracie/GracieDeviceInfo;
.super Ljava/lang/Object;
.source "GracieDeviceInfo.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IDeviceInfo;


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieDeviceInfo;->mWidth:I

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieDeviceInfo;->mHeight:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getHDRInfo()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getHWDecodeMaxLength()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getScreenFps()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieDeviceInfo;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieDeviceInfo;->mWidth:I

    .line 2
    .line 3
    return v0
.end method
