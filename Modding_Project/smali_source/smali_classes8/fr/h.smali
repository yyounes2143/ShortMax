.class public interface abstract Lfr/h;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract b(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public run()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lfr/h;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-interface {p0, v0}, Lfr/h;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    .line 8
    .line 9
    :catchall_1
    :goto_0
    return-void
.end method

.method public abstract s()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
