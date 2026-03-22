.class public final Lcom/bytedance/bdtracker/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/bdtracker/c$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/c$a;-><init>(Lcom/bytedance/bdtracker/c;Lcom/bytedance/bdtracker/d;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
