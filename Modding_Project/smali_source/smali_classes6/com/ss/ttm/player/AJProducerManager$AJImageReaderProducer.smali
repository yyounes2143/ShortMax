.class public Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;
.super Ljava/lang/Object;
.source "AJProducerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/AJProducerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AJImageReaderProducer"
.end annotation


# instance fields
.field private mApiType:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mUsingPlayerId:J


# direct methods
.method public constructor <init>(JII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mApiType:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mUsingPlayerId:J

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1d

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    if-gtz p3, :cond_0

    .line 19
    .line 20
    move v6, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v6, p3

    .line 23
    :goto_0
    const-wide/16 v7, 0x130

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x1

    .line 27
    const/16 v5, 0x23

    .line 28
    .line 29
    invoke-static/range {v3 .. v8}, Li1/a;->a(IIIIJ)Landroid/media/ImageReader;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iput-object p3, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-gtz p3, :cond_2

    .line 37
    .line 38
    move p3, v2

    .line 39
    :cond_2
    const/4 v0, 0x1

    .line 40
    const/16 v1, 0x23

    .line 41
    .line 42
    invoke-static {v0, v0, v1, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    iput-object p3, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 47
    .line 48
    :goto_1
    iput p4, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mApiType:I

    .line 49
    .line 50
    iput-wide p1, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mUsingPlayerId:J

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string p2, "new:"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "AJProducerManager"

    .line 70
    .line 71
    invoke-static {p2, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mUsingPlayerId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$002(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mUsingPlayerId:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$100(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mApiType:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "setOnImageAvailableListener:"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ",handler:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "AJProducerManager"

    .line 35
    .line 36
    invoke-static {v0, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    invoke-static {p1, p2}, Lcom/ss/ttm/player/AJProducerManager;->access$200(Landroid/media/ImageReader$OnImageAvailableListener;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {p2, v0}, Lcom/ss/ttm/player/AJProducerManager;->access$200(Landroid/media/ImageReader$OnImageAvailableListener;I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iput-object p1, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",pid:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mUsingPlayerId:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ",reader:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "]"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
