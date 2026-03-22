.class public interface abstract Landroidx/webkit/OutcomeReceiverCompat;
.super Ljava/lang/Object;
.source "OutcomeReceiverCompat.java"


# annotations
.annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
