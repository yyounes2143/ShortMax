.class public final synthetic Landroidx/work/impl/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkerWrapper;

.field public final synthetic b:Lcom/google/common/util/concurrent/e;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/g;->a:Landroidx/work/impl/WorkerWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/g;->b:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/g;->a:Landroidx/work/impl/WorkerWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/g;->b:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/WorkerWrapper;->a(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
