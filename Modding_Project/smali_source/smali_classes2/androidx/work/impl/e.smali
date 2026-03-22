.class public final synthetic Landroidx/work/impl/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic b:Landroidx/work/impl/WorkManagerImpl;

.field public final synthetic c:Landroidx/work/WorkRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/e;->a:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/e;->b:Landroidx/work/impl/WorkManagerImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/e;->c:Landroidx/work/WorkRequest;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/e;->a:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/e;->b:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/e;->c:Landroidx/work/WorkRequest;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/work/impl/WorkerUpdater;->b(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
