.class public Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;
.super Ljava/lang/Object;
.source "ABRAudioStream.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IAudioStream;


# instance fields
.field public mBandWidth:I

.field private mCodec:Ljava/lang/String;

.field private mRealBitrate:I

.field private mSampleRate:I

.field private mSegmentDuration:I

.field private mStreamId:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mStreamId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mBandWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mCodec:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRealBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mRealBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getSegmentDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mSegmentDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mBandWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mCodec:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRealBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mRealBitrate:I

    .line 2
    .line 3
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mSampleRate:I

    .line 2
    .line 3
    return-void
.end method

.method public setSegmentDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mSegmentDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
