.class public interface abstract Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;
.super Ljava/lang/Object;
.source "IVideoPlayerFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    .param p1    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
