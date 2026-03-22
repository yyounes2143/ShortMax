.class public final Lcom/facebook/imagepipeline/backends/okhttp3/a$c;
.super Lcom/facebook/imagepipeline/producers/f;
.source "OkHttpNetworkFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/backends/okhttp3/a;->k(Lcom/facebook/imagepipeline/backends/okhttp3/a$b;Lcom/facebook/imagepipeline/producers/v0$a;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Lcom/facebook/imagepipeline/backends/okhttp3/a;


# direct methods
.method constructor <init>(Lokhttp3/Call;Lcom/facebook/imagepipeline/backends/okhttp3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->a:Lokhttp3/Call;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic e(Lokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->f(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Lokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->a:Lokhttp3/Call;

    .line 16
    .line 17
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->f(Lcom/facebook/imagepipeline/backends/okhttp3/a;)Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->a:Lokhttp3/Call;

    .line 28
    .line 29
    new-instance v2, Lp3/b;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lp3/b;-><init>(Lokhttp3/Call;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
