.class public final Lgt/x0;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a()Lgt/u0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lgt/d;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lgt/d;-><init>(Ljava/lang/Thread;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final b()J
    .locals 2

    .line 1
    sget-object v0, Lgt/u1;->a:Lgt/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgt/u1;->a()Lgt/u0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lgt/u0;->R()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    return-wide v0
.end method
