.class public final synthetic Li8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li8/e;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Li8/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/d;->a:Li8/e;

    .line 5
    .line 6
    iput-object p2, p0, Li8/d;->b:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li8/d;->a:Li8/e;

    .line 2
    .line 3
    iget-object v1, p0, Li8/d;->b:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-static {v0, v1}, Li8/e;->b(Li8/e;Ljava/util/concurrent/CountDownLatch;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
