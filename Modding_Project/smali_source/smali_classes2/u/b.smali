.class public final synthetic Lu/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

.field public final synthetic b:Lcom/google/common/util/concurrent/e;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 5
    .line 6
    iput-object p2, p0, Lu/b;->b:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    .line 3
    iget-object v1, p0, Lu/b;->b:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
