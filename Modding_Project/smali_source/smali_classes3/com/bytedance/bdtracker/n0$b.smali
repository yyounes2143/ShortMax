.class public Lcom/bytedance/bdtracker/n0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/n0;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/b$e;

.field public final synthetic b:Lcom/bytedance/bdtracker/b4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/n0;Lcom/bytedance/bdtracker/b$e;Lcom/bytedance/bdtracker/b4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/bdtracker/n0$b;->a:Lcom/bytedance/bdtracker/b$e;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/bdtracker/n0$b;->b:Lcom/bytedance/bdtracker/b4;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/n0$b;->a:Lcom/bytedance/bdtracker/b$e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/bdtracker/n0$b;->b:Lcom/bytedance/bdtracker/b4;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->flush()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
