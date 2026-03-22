.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifOrientation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    .line 28
    .line 29
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 21
    .line 22
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 33
    .line 34
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 39
    .line 40
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 45
    .line 46
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 51
    .line 52
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 53
    .line 54
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 59
    .line 60
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/squareup/picasso/Transformation;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Transformation "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " returned null after "

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v0, 0xa

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 81
    .line 82
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$4;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_1
    if-ne v4, p1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 100
    .line 101
    new-instance p1, Lcom/squareup/picasso/BitmapHunter$5;

    .line 102
    .line 103
    invoke-direct {p1, v2}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    return-object v3

    .line 110
    :cond_2
    if-eq v4, p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 119
    .line 120
    new-instance p1, Lcom/squareup/picasso/BitmapHunter$6;

    .line 121
    .line 122
    invoke-direct {p1, v2}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    return-object v3

    .line 129
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    move-object p1, v4

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    sget-object p1, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 135
    .line 136
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$3;

    .line 137
    .line 138
    invoke-direct {v0, v2, p0}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    return-object v3

    .line 145
    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 6

    .line 1
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    return-object v0

    .line 25
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_3
    if-eqz v1, :cond_5

    .line 32
    .line 33
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_2
    if-ge v2, v1, :cond_5

    .line 40
    .line 41
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/squareup/picasso/Action;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-le v4, v5, :cond_4

    .line 62
    .line 63
    move-object v0, v3

    .line 64
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    return-object v0
.end method

.method static decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->isWebPFile(Lokio/BufferedSource;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-boolean v1, p1, Lcom/squareup/picasso/Request;->purgeable:Z

    .line 10
    .line 11
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Lcom/squareup/picasso/MarkableInputStream;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 35
    .line 36
    .line 37
    const/16 p0, 0x400

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    iget p0, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 47
    .line 48
    iget v5, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 49
    .line 50
    invoke-static {p0, v5, v1, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    invoke-virtual {v2, p0}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 58
    .line 59
    .line 60
    move-object p0, v2

    .line 61
    :cond_0
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 69
    .line 70
    const-string p1, "Failed to decode stream."

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    invoke-interface {p0}, Lokio/BufferedSource;->readByteArray()[B

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    array-length v0, p0

    .line 83
    invoke-static {p0, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    iget v0, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 87
    .line 88
    iget v2, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 89
    .line 90
    invoke-static {v0, v2, v1, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    array-length p1, p0

    .line 94
    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 12

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    move-object v11, v4

    .line 21
    check-cast v11, Lcom/squareup/picasso/RequestHandler;

    .line 22
    .line 23
    invoke-virtual {v11, v0}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    .line 30
    .line 31
    move-object v5, v0

    .line 32
    move-object v6, p0

    .line 33
    move-object v7, p1

    .line 34
    move-object v8, p2

    .line 35
    move-object v9, p3

    .line 36
    move-object/from16 v10, p4

    .line 37
    .line 38
    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    .line 46
    .line 47
    sget-object v10, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    .line 48
    .line 49
    move-object v4, v0

    .line 50
    move-object v5, p0

    .line 51
    move-object v6, p1

    .line 52
    move-object v7, p2

    .line 53
    move-object v8, p3

    .line 54
    move-object/from16 v9, p4

    .line 55
    .line 56
    invoke-direct/range {v4 .. v10}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method static getExifRotation(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    const/16 p0, 0x10e

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    const/16 p0, 0x5a

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_2
    const/16 p0, 0xb4

    .line 13
    .line 14
    :goto_0
    return p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getExifTranslation(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    :goto_0
    return p0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    if-gt p1, p3, :cond_2

    .line 6
    .line 7
    :cond_0
    if-eqz p4, :cond_1

    .line 8
    .line 9
    if-le p2, p4, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-boolean v3, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 12
    .line 13
    new-instance v9, Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v1

    .line 28
    move v5, v2

    .line 29
    move-object v0, v9

    .line 30
    goto/16 :goto_11

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget v4, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 33
    .line 34
    iget v6, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 35
    .line 36
    iget v7, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    cmpl-float v8, v7, v8

    .line 40
    .line 41
    if-eqz v8, :cond_3

    .line 42
    .line 43
    float-to-double v10, v7

    .line 44
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v12

    .line 48
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    iget-boolean v4, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget v4, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    .line 65
    .line 66
    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    .line 67
    .line 68
    invoke-virtual {v9, v7, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 69
    .line 70
    .line 71
    iget v4, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    .line 72
    .line 73
    float-to-double v6, v4

    .line 74
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 75
    .line 76
    sub-double/2addr v14, v12

    .line 77
    mul-double/2addr v6, v14

    .line 78
    iget v8, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    .line 79
    .line 80
    move/from16 v16, v2

    .line 81
    .line 82
    move/from16 v17, v3

    .line 83
    .line 84
    float-to-double v2, v8

    .line 85
    mul-double/2addr v2, v10

    .line 86
    add-double/2addr v6, v2

    .line 87
    float-to-double v2, v8

    .line 88
    mul-double/2addr v2, v14

    .line 89
    float-to-double v14, v4

    .line 90
    mul-double/2addr v14, v10

    .line 91
    sub-double/2addr v2, v14

    .line 92
    iget v4, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 93
    .line 94
    int-to-double v14, v4

    .line 95
    mul-double/2addr v14, v12

    .line 96
    add-double/2addr v14, v6

    .line 97
    move-wide/from16 v18, v6

    .line 98
    .line 99
    int-to-double v5, v4

    .line 100
    mul-double/2addr v5, v10

    .line 101
    add-double/2addr v5, v2

    .line 102
    move-object/from16 v20, v9

    .line 103
    .line 104
    int-to-double v8, v4

    .line 105
    mul-double/2addr v8, v12

    .line 106
    add-double v7, v18, v8

    .line 107
    .line 108
    iget v9, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 109
    .line 110
    move/from16 v22, v1

    .line 111
    .line 112
    int-to-double v0, v9

    .line 113
    mul-double/2addr v0, v10

    .line 114
    sub-double/2addr v7, v0

    .line 115
    int-to-double v0, v4

    .line 116
    mul-double/2addr v0, v10

    .line 117
    add-double/2addr v0, v2

    .line 118
    move-wide/from16 v23, v5

    .line 119
    .line 120
    int-to-double v4, v9

    .line 121
    mul-double/2addr v4, v12

    .line 122
    add-double/2addr v0, v4

    .line 123
    int-to-double v4, v9

    .line 124
    mul-double/2addr v4, v10

    .line 125
    sub-double v4, v18, v4

    .line 126
    .line 127
    int-to-double v9, v9

    .line 128
    mul-double/2addr v9, v12

    .line 129
    add-double/2addr v9, v2

    .line 130
    move-wide/from16 v11, v18

    .line 131
    .line 132
    move-wide/from16 v18, v9

    .line 133
    .line 134
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(DD)D

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    move-wide/from16 v6, v23

    .line 159
    .line 160
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    move-wide/from16 v13, v18

    .line 169
    .line 170
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 171
    .line 172
    .line 173
    move-result-wide v11

    .line 174
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    sub-double/2addr v9, v4

    .line 187
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    double-to-int v4, v2

    .line 192
    sub-double/2addr v11, v0

    .line 193
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    double-to-int v6, v0

    .line 198
    move-object/from16 v0, v20

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_2
    move/from16 v22, v1

    .line 203
    .line 204
    move/from16 v16, v2

    .line 205
    .line 206
    move/from16 v17, v3

    .line 207
    .line 208
    move-object v0, v9

    .line 209
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 210
    .line 211
    .line 212
    move-object/from16 v1, p0

    .line 213
    .line 214
    iget v2, v1, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 215
    .line 216
    int-to-double v3, v2

    .line 217
    mul-double/2addr v3, v12

    .line 218
    int-to-double v5, v2

    .line 219
    mul-double/2addr v5, v10

    .line 220
    int-to-double v7, v2

    .line 221
    mul-double/2addr v7, v12

    .line 222
    iget v9, v1, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 223
    .line 224
    int-to-double v14, v9

    .line 225
    mul-double/2addr v14, v10

    .line 226
    sub-double/2addr v7, v14

    .line 227
    int-to-double v14, v2

    .line 228
    mul-double/2addr v14, v10

    .line 229
    int-to-double v1, v9

    .line 230
    mul-double/2addr v1, v12

    .line 231
    add-double/2addr v14, v1

    .line 232
    int-to-double v1, v9

    .line 233
    mul-double/2addr v1, v10

    .line 234
    neg-double v1, v1

    .line 235
    int-to-double v9, v9

    .line 236
    mul-double/2addr v9, v12

    .line 237
    const-wide/16 v11, 0x0

    .line 238
    .line 239
    move-wide/from16 v18, v9

    .line 240
    .line 241
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 242
    .line 243
    .line 244
    move-result-wide v9

    .line 245
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 250
    .line 251
    .line 252
    move-result-wide v9

    .line 253
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 258
    .line 259
    .line 260
    move-result-wide v3

    .line 261
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 262
    .line 263
    .line 264
    move-result-wide v1

    .line 265
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v3

    .line 273
    move-wide/from16 v7, v18

    .line 274
    .line 275
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 276
    .line 277
    .line 278
    move-result-wide v3

    .line 279
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 280
    .line 281
    .line 282
    move-result-wide v5

    .line 283
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 284
    .line 285
    .line 286
    move-result-wide v5

    .line 287
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 288
    .line 289
    .line 290
    move-result-wide v5

    .line 291
    sub-double/2addr v9, v1

    .line 292
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    double-to-int v1, v1

    .line 297
    sub-double/2addr v3, v5

    .line 298
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    double-to-int v6, v2

    .line 303
    move v4, v1

    .line 304
    goto :goto_1

    .line 305
    :cond_3
    move/from16 v22, v1

    .line 306
    .line 307
    move/from16 v16, v2

    .line 308
    .line 309
    move/from16 v17, v3

    .line 310
    .line 311
    move-object v0, v9

    .line 312
    :goto_1
    if-eqz p2, :cond_6

    .line 313
    .line 314
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifRotation(I)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifTranslation(I)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v1, :cond_5

    .line 323
    .line 324
    int-to-float v3, v1

    .line 325
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 326
    .line 327
    .line 328
    const/16 v3, 0x5a

    .line 329
    .line 330
    if-eq v1, v3, :cond_4

    .line 331
    .line 332
    const/16 v3, 0x10e

    .line 333
    .line 334
    if-ne v1, v3, :cond_5

    .line 335
    .line 336
    :cond_4
    move/from16 v25, v6

    .line 337
    .line 338
    move v6, v4

    .line 339
    move/from16 v4, v25

    .line 340
    .line 341
    :cond_5
    const/4 v1, 0x1

    .line 342
    if-eq v2, v1, :cond_6

    .line 343
    .line 344
    int-to-float v1, v2

    .line 345
    const/high16 v2, 0x3f800000    # 1.0f

    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 348
    .line 349
    .line 350
    :cond_6
    move-object/from16 v1, p0

    .line 351
    .line 352
    iget-boolean v2, v1, Lcom/squareup/picasso/Request;->centerCrop:Z

    .line 353
    .line 354
    if-eqz v2, :cond_10

    .line 355
    .line 356
    if-eqz v4, :cond_7

    .line 357
    .line 358
    int-to-float v2, v4

    .line 359
    move/from16 v3, v22

    .line 360
    .line 361
    int-to-float v5, v3

    .line 362
    div-float/2addr v2, v5

    .line 363
    move/from16 v5, v16

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_7
    move/from16 v3, v22

    .line 367
    .line 368
    int-to-float v2, v6

    .line 369
    move/from16 v5, v16

    .line 370
    .line 371
    int-to-float v7, v5

    .line 372
    div-float/2addr v2, v7

    .line 373
    :goto_2
    if-eqz v6, :cond_8

    .line 374
    .line 375
    int-to-float v7, v6

    .line 376
    int-to-float v8, v5

    .line 377
    :goto_3
    div-float/2addr v7, v8

    .line 378
    goto :goto_4

    .line 379
    :cond_8
    int-to-float v7, v4

    .line 380
    int-to-float v8, v3

    .line 381
    goto :goto_3

    .line 382
    :goto_4
    cmpl-float v8, v2, v7

    .line 383
    .line 384
    if-lez v8, :cond_b

    .line 385
    .line 386
    int-to-float v8, v5

    .line 387
    div-float/2addr v7, v2

    .line 388
    mul-float/2addr v8, v7

    .line 389
    float-to-double v7, v8

    .line 390
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 391
    .line 392
    .line 393
    move-result-wide v7

    .line 394
    double-to-int v7, v7

    .line 395
    iget v1, v1, Lcom/squareup/picasso/Request;->centerCropGravity:I

    .line 396
    .line 397
    and-int/lit8 v8, v1, 0x30

    .line 398
    .line 399
    const/16 v9, 0x30

    .line 400
    .line 401
    if-ne v8, v9, :cond_9

    .line 402
    .line 403
    const/4 v1, 0x0

    .line 404
    goto :goto_5

    .line 405
    :cond_9
    const/16 v8, 0x50

    .line 406
    .line 407
    and-int/2addr v1, v8

    .line 408
    if-ne v1, v8, :cond_a

    .line 409
    .line 410
    sub-int v1, v5, v7

    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_a
    sub-int v1, v5, v7

    .line 414
    .line 415
    div-int/lit8 v1, v1, 0x2

    .line 416
    .line 417
    :goto_5
    int-to-float v8, v6

    .line 418
    int-to-float v9, v7

    .line 419
    div-float/2addr v8, v9

    .line 420
    move v9, v7

    .line 421
    move/from16 v10, v17

    .line 422
    .line 423
    const/16 v21, 0x0

    .line 424
    .line 425
    move v7, v1

    .line 426
    move v1, v3

    .line 427
    goto :goto_7

    .line 428
    :cond_b
    cmpg-float v8, v2, v7

    .line 429
    .line 430
    if-gez v8, :cond_e

    .line 431
    .line 432
    int-to-float v8, v3

    .line 433
    div-float/2addr v2, v7

    .line 434
    mul-float/2addr v8, v2

    .line 435
    float-to-double v8, v8

    .line 436
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 437
    .line 438
    .line 439
    move-result-wide v8

    .line 440
    double-to-int v2, v8

    .line 441
    iget v1, v1, Lcom/squareup/picasso/Request;->centerCropGravity:I

    .line 442
    .line 443
    and-int/lit8 v8, v1, 0x3

    .line 444
    .line 445
    const/4 v9, 0x3

    .line 446
    if-ne v8, v9, :cond_c

    .line 447
    .line 448
    const/4 v1, 0x0

    .line 449
    goto :goto_6

    .line 450
    :cond_c
    const/4 v8, 0x5

    .line 451
    and-int/2addr v1, v8

    .line 452
    if-ne v1, v8, :cond_d

    .line 453
    .line 454
    sub-int v1, v3, v2

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_d
    sub-int v1, v3, v2

    .line 458
    .line 459
    div-int/lit8 v1, v1, 0x2

    .line 460
    .line 461
    :goto_6
    int-to-float v8, v4

    .line 462
    int-to-float v9, v2

    .line 463
    div-float/2addr v8, v9

    .line 464
    move/from16 v21, v1

    .line 465
    .line 466
    move v1, v2

    .line 467
    move v9, v5

    .line 468
    move v2, v8

    .line 469
    move/from16 v10, v17

    .line 470
    .line 471
    move v8, v7

    .line 472
    const/4 v7, 0x0

    .line 473
    goto :goto_7

    .line 474
    :cond_e
    move v1, v3

    .line 475
    move v9, v5

    .line 476
    move v2, v7

    .line 477
    move v8, v2

    .line 478
    move/from16 v10, v17

    .line 479
    .line 480
    const/4 v7, 0x0

    .line 481
    const/16 v21, 0x0

    .line 482
    .line 483
    :goto_7
    invoke-static {v10, v3, v5, v4, v6}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-eqz v3, :cond_f

    .line 488
    .line 489
    invoke-virtual {v0, v2, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 490
    .line 491
    .line 492
    :cond_f
    move v6, v7

    .line 493
    move v8, v9

    .line 494
    move/from16 v5, v21

    .line 495
    .line 496
    move v7, v1

    .line 497
    goto :goto_12

    .line 498
    :cond_10
    move/from16 v5, v16

    .line 499
    .line 500
    move/from16 v10, v17

    .line 501
    .line 502
    move/from16 v3, v22

    .line 503
    .line 504
    iget-boolean v1, v1, Lcom/squareup/picasso/Request;->centerInside:Z

    .line 505
    .line 506
    if-eqz v1, :cond_14

    .line 507
    .line 508
    if-eqz v4, :cond_11

    .line 509
    .line 510
    int-to-float v1, v4

    .line 511
    int-to-float v2, v3

    .line 512
    :goto_8
    div-float/2addr v1, v2

    .line 513
    goto :goto_9

    .line 514
    :cond_11
    int-to-float v1, v6

    .line 515
    int-to-float v2, v5

    .line 516
    goto :goto_8

    .line 517
    :goto_9
    if-eqz v6, :cond_12

    .line 518
    .line 519
    int-to-float v2, v6

    .line 520
    int-to-float v7, v5

    .line 521
    :goto_a
    div-float/2addr v2, v7

    .line 522
    goto :goto_b

    .line 523
    :cond_12
    int-to-float v2, v4

    .line 524
    int-to-float v7, v3

    .line 525
    goto :goto_a

    .line 526
    :goto_b
    cmpg-float v7, v1, v2

    .line 527
    .line 528
    if-gez v7, :cond_13

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_13
    move v1, v2

    .line 532
    :goto_c
    invoke-static {v10, v3, v5, v4, v6}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_19

    .line 537
    .line 538
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 539
    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_14
    if-nez v4, :cond_15

    .line 543
    .line 544
    if-eqz v6, :cond_19

    .line 545
    .line 546
    :cond_15
    if-ne v4, v3, :cond_16

    .line 547
    .line 548
    if-eq v6, v5, :cond_19

    .line 549
    .line 550
    :cond_16
    if-eqz v4, :cond_17

    .line 551
    .line 552
    int-to-float v1, v4

    .line 553
    int-to-float v2, v3

    .line 554
    :goto_d
    div-float/2addr v1, v2

    .line 555
    goto :goto_e

    .line 556
    :cond_17
    int-to-float v1, v6

    .line 557
    int-to-float v2, v5

    .line 558
    goto :goto_d

    .line 559
    :goto_e
    if-eqz v6, :cond_18

    .line 560
    .line 561
    int-to-float v2, v6

    .line 562
    int-to-float v7, v5

    .line 563
    :goto_f
    div-float/2addr v2, v7

    .line 564
    goto :goto_10

    .line 565
    :cond_18
    int-to-float v2, v4

    .line 566
    int-to-float v7, v3

    .line 567
    goto :goto_f

    .line 568
    :goto_10
    invoke-static {v10, v3, v5, v4, v6}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    if-eqz v4, :cond_19

    .line 573
    .line 574
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 575
    .line 576
    .line 577
    :cond_19
    :goto_11
    move v7, v3

    .line 578
    move v8, v5

    .line 579
    const/4 v5, 0x0

    .line 580
    const/4 v6, 0x0

    .line 581
    :goto_12
    const/4 v10, 0x1

    .line 582
    move-object/from16 v4, p1

    .line 583
    .line 584
    move-object v9, v0

    .line 585
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    move-object/from16 v1, p1

    .line 590
    .line 591
    if-eq v0, v1, :cond_1a

    .line 592
    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 594
    .line 595
    .line 596
    goto :goto_13

    .line 597
    :cond_1a
    move-object v0, v1

    .line 598
    :goto_13
    return-object v0
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    add-int/2addr v1, v2

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 4
    .line 5
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 8
    .line 9
    const-string/jumbo v3, "to "

    .line 10
    .line 11
    .line 12
    const-string v4, "joined"

    .line 13
    .line 14
    const-string v5, "Hunter"

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string/jumbo v0, "to empty hunter"

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 67
    .line 68
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v5, v4, v0, v1}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-le v0, v1, :cond_6

    .line 101
    .line 102
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 103
    .line 104
    :cond_6
    return-void
.end method

.method cancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    return v1
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object p1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "from "

    .line 49
    .line 50
    invoke-static {p0, v0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Hunter"

    .line 55
    .line 56
    const-string v2, "removed"

    .line 57
    .line 58
    invoke-static {v1, v2, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 2
    .line 3
    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 2
    .line 3
    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 2
    .line 3
    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 2
    .line 3
    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 2
    .line 3
    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string v1, "Hunter"

    .line 35
    .line 36
    const-string v2, "decoded"

    .line 37
    .line 38
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "from cache"

    .line 45
    .line 46
    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :cond_2
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    .line 56
    .line 57
    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->index:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 61
    .line 62
    :goto_0
    iput v1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 67
    .line 68
    invoke-virtual {v2, v3, v1}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getSource()Lokio/Source;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    :catch_0
    move-object v0, v1

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    :try_start_2
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    .line 111
    :catch_1
    throw v1

    .line 112
    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    .line 113
    .line 114
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 115
    .line 116
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    const-string v1, "Hunter"

    .line 121
    .line 122
    const-string v2, "decoded"

    .line 123
    .line 124
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_6

    .line 145
    .line 146
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 147
    .line 148
    if-eqz v1, :cond_a

    .line 149
    .line 150
    :cond_6
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v1

    .line 153
    :try_start_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_7

    .line 160
    .line 161
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 162
    .line 163
    if-eqz v2, :cond_8

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 169
    .line 170
    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 171
    .line 172
    invoke-static {v2, v0, v3}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 177
    .line 178
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    const-string v2, "Hunter"

    .line 183
    .line 184
    const-string/jumbo v3, "transformed"

    .line 185
    .line 186
    .line 187
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_9

    .line 203
    .line 204
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 205
    .line 206
    iget-object v2, v2, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    .line 207
    .line 208
    invoke-static {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 213
    .line 214
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 215
    .line 216
    if-eqz v2, :cond_9

    .line 217
    .line 218
    const-string v2, "Hunter"

    .line 219
    .line 220
    const-string/jumbo v3, "transformed"

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 224
    .line 225
    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    const-string v5, "from custom transformations"

    .line 230
    .line 231
    invoke-static {v2, v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    throw v0

    .line 245
    :cond_a
    :goto_4
    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    .line 1
    const-string v0, "Picasso-Idle"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Hunter"

    .line 15
    .line 16
    const-string v2, "executing"

    .line 17
    .line 18
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :catch_0
    move-exception v1

    .line 30
    goto :goto_2

    .line 31
    :catch_1
    move-exception v1

    .line 32
    goto :goto_3

    .line 33
    :catch_2
    move-exception v1

    .line 34
    goto :goto_4

    .line 35
    :catch_3
    move-exception v1

    .line 36
    goto :goto_5

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_6

    .line 64
    :goto_2
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_3
    new-instance v2, Ljava/io/StringWriter;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Ljava/io/PrintWriter;

    .line 84
    .line 85
    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    iput-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 103
    .line 104
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_4
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 111
    .line 112
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_5
    iget v2, v1, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->networkPolicy:I

    .line 117
    .line 118
    invoke-static {v2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    iget v2, v1, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->code:I

    .line 125
    .line 126
    const/16 v3, 0x1f8

    .line 127
    .line 128
    if-eq v2, v3, :cond_3

    .line 129
    .line 130
    :cond_2
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 131
    .line 132
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 133
    .line 134
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_6
    return-void

    .line 139
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method supportsReplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
