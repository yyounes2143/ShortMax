.class public final Landroidx/core/util/RunnableKt;
.super Ljava/lang/Object;
.source "Runnable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final asRunnable(Lrs/c;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/util/ContinuationRunnable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/ContinuationRunnable;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
