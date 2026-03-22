.class public final synthetic Landroidx/room/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Landroidx/room/TransactionExecutor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/t;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/t;->b:Landroidx/room/TransactionExecutor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/t;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/t;->b:Landroidx/room/TransactionExecutor;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/room/TransactionExecutor;->a(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
