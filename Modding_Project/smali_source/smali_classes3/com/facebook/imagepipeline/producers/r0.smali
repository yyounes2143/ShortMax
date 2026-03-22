.class public Lcom/facebook/imagepipeline/producers/r0;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/r0;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/r0;->b:Landroid/content/ContentResolver;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/r0;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/r0;->b:Landroid/content/ContentResolver;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/facebook/imagepipeline/producers/r0;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/r0;->i(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic e(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/r0;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic f(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/r0;->h(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static g(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x60

    .line 6
    .line 7
    if-gt v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-le p0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x3

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private static h(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "r"

    .line 3
    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    move-object v0, p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-object p1, v0

    .line 39
    goto :goto_1

    .line 40
    :goto_0
    if-eqz v0, :cond_0

    .line 41
    .line 42
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 43
    .line 44
    .line 45
    :catch_2
    :cond_0
    throw p0

    .line 46
    :catch_3
    :goto_1
    if-eqz p1, :cond_1

    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 49
    .line 50
    .line 51
    :catch_4
    :cond_1
    return-object v0
.end method

.method private i(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r0;->b:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lr2/d;->e(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->l()Lcom/facebook/imagepipeline/producers/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/c1;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    const-string v0, "local"

    .line 10
    .line 11
    const-string v1, "video"

    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/c1;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v9, Lcom/facebook/imagepipeline/producers/r0$a;

    .line 17
    .line 18
    const-string v5, "VideoThumbnailProducer"

    .line 19
    .line 20
    move-object v0, v9

    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, v6

    .line 24
    move-object v4, p2

    .line 25
    move-object v7, p2

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/r0$a;-><init>(Lcom/facebook/imagepipeline/producers/r0;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/e1;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/facebook/imagepipeline/producers/r0$b;

    .line 30
    .line 31
    invoke-direct {p1, p0, v9}, Lcom/facebook/imagepipeline/producers/r0$b;-><init>(Lcom/facebook/imagepipeline/producers/r0;Lcom/facebook/imagepipeline/producers/k1;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/c1;->p(Lcom/facebook/imagepipeline/producers/d1;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/r0;->a:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
