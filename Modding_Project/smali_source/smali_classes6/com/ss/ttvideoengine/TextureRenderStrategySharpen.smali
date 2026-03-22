.class public Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;
.super Ljava/lang/Object;
.source "TextureRenderStrategySharpen.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;


# instance fields
.field private mAsyncInit:Z

.field private mInitBundle:Landroid/os/Bundle;

.field private mIsInitSharpen:Z

.field private mOpensharpen:Z

.field private mPlaybackUseSharpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mPlaybackUseSharpen:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mAsyncInit:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method

.method private openSharpen(ZLcom/ss/texturerender/VideoSurface;Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p3, "action"

    .line 13
    .line 14
    const/16 v0, 0x13

    .line 15
    .line 16
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string p3, "effect_type"

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string p3, "int_value"

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 28
    .line 29
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/ss/texturerender/VideoSurface;->setEffect(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p3, "[SALog]doOpenSharpen catch exception e="

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "[SALog]"

    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public didInitTextureRender(Lcom/ss/texturerender/VideoSurface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableBmf()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "enable_bmf"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string v1, "moduleName"

    .line 19
    .line 20
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->getModuleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/VideoSurface;->setEffect(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public isInitEffect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedAsyncEffect(Lcom/ss/texturerender/effect/EffectConfig;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mPlaybackUseSharpen:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mAsyncInit:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0, v0}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mAsyncInit:Z

    .line 14
    .line 15
    return p1
.end method

.method public isPlaybackUse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mPlaybackUseSharpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public onRenderStart(FLcom/ss/texturerender/VideoSurface;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 2
    .line 3
    const/high16 v1, 0x41f80000    # 31.0f

    .line 4
    .line 5
    cmpl-float v1, p1, v1

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float p1, p1, v1

    .line 11
    .line 12
    if-gtz p1, :cond_1

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 16
    .line 17
    invoke-direct {p0, v0, p2, p3}, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->openSharpen(ZLcom/ss/texturerender/VideoSurface;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public reset(Lcom/ss/texturerender/VideoSurface;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->openSharpen(ZLcom/ss/texturerender/VideoSurface;Z)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mPlaybackUseSharpen:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mAsyncInit:Z

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method

.method public setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface;)V
    .locals 4

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    const-string/jumbo v3, "use_effect"

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 22
    .line 23
    const-string p2, "asyncInit"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mAsyncInit:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mInitBundle:Landroid/os/Bundle;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v1, 0x13

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 47
    .line 48
    const-string v0, "HasFirstFrameShown"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mOpensharpen:Z

    .line 55
    .line 56
    invoke-direct {p0, v0, p2, p1}, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->openSharpen(ZLcom/ss/texturerender/VideoSurface;Z)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public setIsInitEffect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;->mIsInitSharpen:Z

    .line 2
    .line 3
    return-void
.end method
