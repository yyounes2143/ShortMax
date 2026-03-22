.class public final Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;
.super Ljava/lang/Object;
.source "FrescoConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private autoPlayAnim:Z

.field private borderColor:I

.field private borderWidth:F

.field private circleCrop:Z

.field private controllerListener:Lz2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/a<",
            "Ly3/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cornerRadius:F

.field private cornerTransform:Z

.field private fadeDuration:I

.field private iterativeBoxBlurPostProcessor:Ld4/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossHeight:I

.field private ossProcess:Z

.field private ossWidth:I

.field private placeholderResId:I

.field private placeholderScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resizeHeight:I

.field private resizeWidth:I

.field private roundingParams:Lcom/facebook/drawee/generic/RoundingParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossProcess:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->fadeDuration:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAutoPlayAnim()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->autoPlayAnim:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderColor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBorderWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCircleCrop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->circleCrop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getControllerListener()Lz2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/a<",
            "Ly3/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->controllerListener:Lz2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerTransform()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerTransform:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFadeDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->fadeDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIterativeBoxBlurPostProcessor()Ld4/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->iterativeBoxBlurPostProcessor:Ld4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOssHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOssProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossProcess:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOssWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderResId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResizeHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getResizeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->roundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->scaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAutoPlayAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->autoPlayAnim:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBorderColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderColor:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBorderWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderWidth:F

    .line 2
    .line 3
    return-void
.end method

.method public final setCircleCrop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->circleCrop:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerListener(Lz2/a;)V
    .locals 0
    .param p1    # Lz2/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/a<",
            "Ly3/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->controllerListener:Lz2/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerRadius:F

    .line 2
    .line 3
    return-void
.end method

.method public final setCornerTransform(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerTransform:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFadeDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->fadeDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIterativeBoxBlurPostProcessor(Ld4/a;)V
    .locals 0
    .param p1    # Ld4/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->iterativeBoxBlurPostProcessor:Ld4/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setOssHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOssProcess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossProcess:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOssWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaceholderResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderResId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaceholderScaleType(Lc3/q;)V
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-void
.end method

.method public final setResizeHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setResizeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->roundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-void
.end method

.method public final setScaleType(Lc3/q;)V
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->scaleType:Lc3/q;

    .line 2
    .line 3
    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FrescoConfig(url="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->url:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", uri="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->uri:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", ossWidth="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossWidth:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", ossHeight="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossHeight:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", resizeWidth="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeWidth:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", resizeHeight="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->resizeHeight:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", ossProcess="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->ossProcess:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", circleCrop="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->circleCrop:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", cornerTransform="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerTransform:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", cornerRadius="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->cornerRadius:F

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", roundingParams="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->roundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", autoPlayAnim="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->autoPlayAnim:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", controllerListener="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->controllerListener:Lz2/a;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", scaleType="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->scaleType:Lc3/q;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", placeholderScaleType="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderScaleType:Lc3/q;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", placeholderResId="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->placeholderResId:I

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", borderWidth="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderWidth:F

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", borderColor="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->borderColor:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", iterativeBoxBlurPostProcessor="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->iterativeBoxBlurPostProcessor:Ld4/a;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", fadeDuration="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->fadeDuration:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const/16 v1, 0x29

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0
.end method
