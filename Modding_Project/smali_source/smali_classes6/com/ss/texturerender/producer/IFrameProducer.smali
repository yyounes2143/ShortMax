.class public interface abstract Lcom/ss/texturerender/producer/IFrameProducer;
.super Ljava/lang/Object;
.source "IFrameProducer.java"


# virtual methods
.method public abstract getEffectTexture()Lcom/ss/texturerender/effect/EffectTexture;
.end method

.method public abstract getProducerType()I
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTransformMatrix([F)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOffScreenSurface()V
.end method

.method public abstract setOnFrameAvailableListener(Lcom/ss/texturerender/IFrameAvailableListener;Landroid/os/Handler;)V
.end method

.method public abstract updateImage()V
.end method

.method public abstract updateTexDimension(II)V
.end method
