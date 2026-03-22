.class public Lcom/bytedance/vcloud/abrmodule/ABRResultElement;
.super Ljava/lang/Object;
.source "ABRResultElement.java"


# static fields
.field public static final FULL_SCREEN_NO_SR_ONCE_RESULT:I = 0x3

.field public static final FULL_SCREEN_ONCE_RESULT:I = 0x2

.field public static final NORMAL_ONCE_RESULT:I = 0x0

.field public static final NO_SR_ONCE_RESULT:I = 0x1


# instance fields
.field private bitrate:J

.field private cacheTime:I

.field private mediaType:I

.field private onceSelectType:I

.field private seconds:I

.field private useSR:I


# direct methods
.method public constructor <init>(JIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->bitrate:J

    .line 3
    iput p3, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->seconds:I

    .line 4
    iput p4, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->mediaType:I

    .line 5
    iput p5, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->cacheTime:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->useSR:I

    .line 7
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->onceSelectType:I

    return-void
.end method

.method public constructor <init>(JIIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->bitrate:J

    .line 10
    iput p3, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->seconds:I

    .line 11
    iput p4, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->mediaType:I

    .line 12
    iput p5, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->cacheTime:I

    .line 13
    iput p6, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->useSR:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->onceSelectType:I

    return-void
.end method

.method public constructor <init>(JIIIII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->bitrate:J

    .line 17
    iput p3, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->seconds:I

    .line 18
    iput p4, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->mediaType:I

    .line 19
    iput p5, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->cacheTime:I

    .line 20
    iput p6, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->useSR:I

    .line 21
    iput p7, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->onceSelectType:I

    return-void
.end method


# virtual methods
.method public getBitrate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->bitrate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCacheTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->cacheTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getMediaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->mediaType:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnceSelectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->onceSelectType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->seconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getUseSR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->useSR:I

    .line 2
    .line 3
    return v0
.end method
