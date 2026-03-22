.class public interface abstract Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;
.super Ljava/lang/Object;
.source "IImmersionFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
