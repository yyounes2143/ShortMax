.class public Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;
.super Ljava/lang/Object;
.source "ABRVideoStream.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IVideoStream;


# instance fields
.field public mBandWidth:I

.field private mCodec:Ljava/lang/String;

.field private mFrameRate:I

.field private mHeight:I

.field private mRealBitrate:I

.field private mResolution:I

.field private mSegmentDuration:I

.field private mStreamId:Ljava/lang/String;

.field private mSupportSR:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mStreamId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mBandWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mCodec:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mFrameRate:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getRealBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mRealBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getResolution()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mResolution:I

    .line 2
    .line 3
    return v0
.end method

.method public getSegmentDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mSegmentDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSupportSR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mSupportSR:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mBandWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mCodec:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mFrameRate:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setRealBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mRealBitrate:I

    .line 2
    .line 3
    return-void
.end method

.method public setResolution(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mResolution:I

    .line 2
    .line 3
    return-void
.end method

.method public setSegmentDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mSegmentDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSupportSR(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mSupportSR:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->mWidth:I

    .line 2
    .line 3
    return-void
.end method
