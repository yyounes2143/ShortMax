.class public interface abstract Lcom/moloco/sdk/publisher/FullscreenAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/AdLoad;
.implements Lcom/moloco/sdk/publisher/Destroyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/moloco/sdk/publisher/AdShowListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/publisher/AdLoad;",
        "Lcom/moloco/sdk/publisher/Destroyable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract show(Lcom/moloco/sdk/publisher/AdShowListener;)V
    .param p1    # Lcom/moloco/sdk/publisher/AdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
