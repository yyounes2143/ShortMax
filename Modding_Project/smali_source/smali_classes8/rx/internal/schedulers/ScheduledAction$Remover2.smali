.class final Lrx/internal/schedulers/ScheduledAction$Remover2;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lku/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Remover2"
.end annotation


# instance fields
.field final a:Lrx/internal/schedulers/ScheduledAction;

.field final b:Lpu/b;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/ScheduledAction;Lpu/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->a:Lrx/internal/schedulers/ScheduledAction;

    .line 5
    .line 6
    iput-object p2, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->b:Lpu/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->a:Lrx/internal/schedulers/ScheduledAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->b:Lpu/b;

    .line 10
    .line 11
    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->a:Lrx/internal/schedulers/ScheduledAction;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lpu/b;->b(Lku/j;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
