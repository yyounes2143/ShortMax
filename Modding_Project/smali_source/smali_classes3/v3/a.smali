.class public interface abstract Lv3/a;
.super Ljava/lang/Object;
.source "CloseableReferenceLeakTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .param p1    # Lcom/facebook/common/references/SharedReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method
