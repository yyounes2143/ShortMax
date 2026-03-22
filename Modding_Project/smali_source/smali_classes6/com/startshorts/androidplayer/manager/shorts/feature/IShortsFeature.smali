.class public interface abstract Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;
.super Ljava/lang/Object;
.source "IShortsFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$a;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method

.method public abstract type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
