.class public abstract Lgt/w0;
.super Lgt/u0;
.source "EventLoop.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgt/u0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract Y()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected Z(JLgt/v0$c;)V
    .locals 1
    .param p3    # Lgt/v0$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lgt/i0;->g:Lgt/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lgt/v0;->o0(JLgt/v0$c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgt/w0;->Y()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lgt/b;->a()Lgt/a;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
