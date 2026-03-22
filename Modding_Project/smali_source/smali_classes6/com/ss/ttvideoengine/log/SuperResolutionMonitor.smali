.class public Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;
.super Ljava/lang/Object;
.source "SuperResolutionMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SuperResolutionMonitor"


# instance fields
.field private mEnableBmf:I

.field private mProccessSuccessRate:F

.field private mProcessorAverageCostTime:F

.field private mSrAlgorithm:I

.field private mSrScaleType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrAlgorithm:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mEnableBmf:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProccessSuccessRate:F

    .line 13
    .line 14
    iput v1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProcessorAverageCostTime:F

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getEnableBmf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mEnableBmf:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeightFactor()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrAlgorithm:I

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :pswitch_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    const v1, 0x3f8ccccd    # 1.1f

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/16 v4, 0x8

    .line 24
    .line 25
    if-ne v0, v4, :cond_1

    .line 26
    .line 27
    const v1, 0x3f99999a    # 1.2f

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/16 v4, 0x10

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    .line 35
    const v1, 0x3fa66666    # 1.3f

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v4, 0x20

    .line 40
    .line 41
    if-ne v0, v4, :cond_3

    .line 42
    .line 43
    const v1, 0x3fb33333    # 1.4f

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    :goto_0
    :pswitch_1
    move v1, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 v2, 0x2

    .line 52
    if-ne v0, v2, :cond_7

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :pswitch_2
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    if-ne v0, v2, :cond_7

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_3
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 64
    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    if-ne v0, v2, :cond_7

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 72
    :cond_8
    :goto_2
    :pswitch_4
    return v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getProccessSuccessRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProccessSuccessRate:F

    .line 2
    .line 3
    return v0
.end method

.method public getProcessorAverageCostTime()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProcessorAverageCostTime:F

    .line 2
    .line 3
    return v0
.end method

.method public getSrAlgorithm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrAlgorithm:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidthFactor()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrAlgorithm:I

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :pswitch_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    const v1, 0x3f8ccccd    # 1.1f

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/16 v4, 0x8

    .line 24
    .line 25
    if-ne v0, v4, :cond_1

    .line 26
    .line 27
    const v1, 0x3f99999a    # 1.2f

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/16 v4, 0x10

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    .line 35
    const v1, 0x3fa66666    # 1.3f

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v4, 0x20

    .line 40
    .line 41
    if-ne v0, v4, :cond_3

    .line 42
    .line 43
    const v1, 0x3fb33333    # 1.4f

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    :goto_0
    :pswitch_1
    move v1, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 v2, 0x2

    .line 52
    if-ne v0, v2, :cond_7

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :pswitch_2
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    if-ne v0, v2, :cond_7

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_3
    iget v0, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 64
    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    if-ne v0, v2, :cond_7

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 72
    :cond_8
    :goto_2
    :pswitch_4
    return v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAlgorithm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrAlgorithm:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBmf(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mEnableBmf:I

    .line 2
    .line 3
    return-void
.end method

.method public setProccessSuccessRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProccessSuccessRate:F

    .line 2
    .line 3
    return-void
.end method

.method public setProcessorAverageCostTime(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mProcessorAverageCostTime:F

    .line 2
    .line 3
    return-void
.end method

.method public setSrScaleType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->mSrScaleType:I

    .line 2
    .line 3
    return-void
.end method
