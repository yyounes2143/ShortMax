.class public interface abstract Lcom/ss/ttvideoengine/TextureRenderStrategyInterface;
.super Ljava/lang/Object;
.source "TextureRenderStrategyInterface.java"


# static fields
.field public static final KEY_STRATEGY_HAS_FIRST_FRAME_SHOW:Ljava/lang/String; = "HasFirstFrameShown"

.field public static final KEY_TRERENDERCONFIG_ASYNCINIT:Ljava/lang/String; = "asyncInit"


# virtual methods
.method public abstract didInitTextureRender(Lcom/ss/texturerender/VideoSurface;)V
.end method

.method public abstract isInitEffect()Z
.end method

.method public abstract isNeedAsyncEffect(Lcom/ss/texturerender/effect/EffectConfig;)Z
.end method

.method public abstract isPlaybackUse()Z
.end method

.method public abstract onRenderStart(FLcom/ss/texturerender/VideoSurface;Z)V
.end method

.method public abstract reset(Lcom/ss/texturerender/VideoSurface;Z)V
.end method

.method public abstract setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface;)V
.end method

.method public abstract setIsInitEffect(Z)V
.end method
