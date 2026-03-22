.class public interface abstract Lvm/a;
.super Ljava/lang/Object;
.source "LogSafeRunnable.java"

# interfaces
.implements Lfr/h;


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
