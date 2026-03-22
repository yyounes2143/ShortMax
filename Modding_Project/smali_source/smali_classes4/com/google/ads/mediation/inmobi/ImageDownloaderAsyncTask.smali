.class Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloaderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field static final KEY_ICON:Ljava/lang/String; = "icon_key"

.field static final KEY_IMAGE:Ljava/lang/String; = "image_key"


# instance fields
.field private final drawableFutureTimeoutSeconds:J

.field private final listener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

.field final memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    .line 3
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->listener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    const-wide/16 v0, 0xa

    .line 4
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->drawableFutureTimeoutSeconds:J

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;Ljava/lang/Long;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    .line 7
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->listener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->drawableFutureTimeoutSeconds:J

    return-void
.end method

.method private getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$1;-><init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;Ljava/net/URL;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "icon_key"

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/util/HashMap;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-direct {p0, v2, v1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->drawableFutureTimeoutSeconds:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->memoryCache:Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 9
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->listener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    invoke-interface {v0, p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;->onDownloadSuccess(Ljava/util/HashMap;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->listener:Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;->onDownloadFailure()V

    :goto_0
    return-void
.end method
