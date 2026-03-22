.class public final Lcom/inmobi/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/b;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x7e7

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/inmobi/media/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/inmobi/media/b;->a(Lcom/inmobi/media/b;)[Ljava/lang/StackTraceElement;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/inmobi/media/G3;->a:Lcom/inmobi/media/H3;

    .line 67
    .line 68
    new-instance v3, Lcom/inmobi/media/mf;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v0}, Lcom/inmobi/media/mf;-><init>([Ljava/lang/StackTraceElement;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lcom/inmobi/media/H3;->a(Lcom/inmobi/media/T5;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/inmobi/media/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/inmobi/media/a;->a:Lcom/inmobi/media/b;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/inmobi/media/b;->f:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method
