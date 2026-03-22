.class public interface abstract Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract compressToFps(I)V
.end method

.method public abstract getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFrame(III)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onStop()V
.end method

.method public abstract prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
