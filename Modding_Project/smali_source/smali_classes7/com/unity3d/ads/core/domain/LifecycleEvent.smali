.class public interface abstract Lcom/unity3d/ads/core/domain/LifecycleEvent;
.super Ljava/lang/Object;
.source "AndroidGetLifecycleFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Created;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Destroyed;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Paused;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Resumed;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Started;,
        Lcom/unity3d/ads/core/domain/LifecycleEvent$Stopped;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
