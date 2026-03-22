.class public final Ltu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltu/a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    const-string v1, "onError: "

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Ltu/a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 2
    .line 3
    iget-object p1, p0, Ltu/a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
