.class public final Lcom/facebook/imagepipeline/producers/g0;
.super Lcom/facebook/imagepipeline/producers/k0;
.source "LocalAssetFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/g0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/facebook/imagepipeline/producers/g0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/res/AssetManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/g0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/g0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/imagepipeline/producers/g0;->d:Lcom/facebook/imagepipeline/producers/g0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ln2/g;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln2/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "executor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pooledByteBufferFactory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "assetManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/k0;-><init>(Ljava/util/concurrent/Executor;Ln2/g;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/g0;->c:Landroid/content/res/AssetManager;

    .line 20
    .line 21
    return-void
.end method

.method private final g(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/g0;->c:Landroid/content/res/AssetManager;

    .line 3
    .line 4
    sget-object v2, Lcom/facebook/imagepipeline/producers/g0;->d:Lcom/facebook/imagepipeline/producers/g0$a;

    .line 5
    .line 6
    invoke-static {v2, p1}, Lcom/facebook/imagepipeline/producers/g0$a;->a(Lcom/facebook/imagepipeline/producers/g0$a;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    long-to-int p1, v1

    .line 19
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_0
    throw p1

    .line 30
    :catch_1
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 33
    .line 34
    .line 35
    :catch_2
    :cond_1
    const/4 p1, -0x1

    .line 36
    :catch_3
    :goto_0
    return p1
.end method


# virtual methods
.method protected d(Lcom/facebook/imagepipeline/request/ImageRequest;)Ly3/k;
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "imageRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g0;->c:Landroid/content/res/AssetManager;

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/imagepipeline/producers/g0;->d:Lcom/facebook/imagepipeline/producers/g0$a;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/facebook/imagepipeline/producers/g0$a;->a(Lcom/facebook/imagepipeline/producers/g0$a;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/g0;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/k0;->e(Ljava/io/InputStream;I)Ly3/k;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "LocalAssetFetchProducer"

    .line 2
    .line 3
    return-object v0
.end method
