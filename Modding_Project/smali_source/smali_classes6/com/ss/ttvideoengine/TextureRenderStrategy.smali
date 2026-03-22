.class public Lcom/ss/ttvideoengine/TextureRenderStrategy;
.super Ljava/lang/Object;
.source "TextureRenderStrategy.java"


# instance fields
.field private strategyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;",
            ">;"
        }
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
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method didInitTextureRender(Lcom/ss/texturerender/VideoSurface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->didInitTextureRender(Lcom/ss/texturerender/VideoSurface;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public getAsyncEffect(Lcom/ss/texturerender/effect/EffectConfig;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 23
    .line 24
    invoke-interface {v2, p1}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->isNeedAsyncEffect(Lcom/ss/texturerender/effect/EffectConfig;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method isInitForEffect(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->isInitEffect()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public isPlaybackUseForEffect(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->isPlaybackUse()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onRenderStart(FLcom/ss/texturerender/VideoSurface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 22
    .line 23
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->onRenderStart(FLcom/ss/texturerender/VideoSurface;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method reset(Lcom/ss/texturerender/VideoSurface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->reset(Lcom/ss/texturerender/VideoSurface;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface;)V
    .locals 4

    .line 1
    const-string v0, "effect_type"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v2, "action"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/16 v3, 0x15

    .line 28
    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/ss/ttvideoengine/TextureRenderStrategySharpen;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method setIsInitForEffect(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TextureRenderStrategy;->strategyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;->setIsInitEffect(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
