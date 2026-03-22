.class public Lcom/ss/texturerender/producer/ImageReaderProducer;
.super Ljava/lang/Object;
.source "ImageReaderProducer.java"

# interfaces
.implements Lcom/ss/texturerender/producer/IFrameProducer;
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation


# static fields
.field public static final IMAGEREADER_STATUS:I = 0x1

.field public static final IMAGEREADER_STATUS_CLOSE:I = 0x1

.field public static final IMAGEREADER_STATUS_OPEN:I = 0x2

.field public static final IMAGEREADER_STATUS_UNKNOWN:I = 0x0

.field private static final MatrixFlipV:[F

.field private static final TAG:Ljava/lang/String; = "TR_ImageReaderProducer"


# instance fields
.field private volatile mCurImage:Landroid/media/Image;

.field private mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field private mFrameAvailableListener:Lcom/ss/texturerender/IFrameAvailableListener;

.field private mImageReader:Landroid/media/ImageReader;

.field private volatile mIsRelease:Z

.field private volatile mStatus:I

.field private mTexType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/ss/texturerender/producer/ImageReaderProducer;->MatrixFlipV:[F

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mIsRelease:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mStatus:I

    .line 13
    .line 14
    iput p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mTexType:I

    .line 15
    .line 16
    return-void
.end method

.method private _updateImage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mIsRelease:Z

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    iget v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mStatus:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :catch_1
    move-exception v0

    .line 45
    move-object v4, v1

    .line 46
    move-object v1, v0

    .line 47
    move-object v0, v4

    .line 48
    :goto_2
    iget v2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mTexType:I

    .line 49
    .line 50
    const-string v3, "TR_ImageReaderProducer"

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getEffectTexture()Lcom/ss/texturerender/effect/EffectTexture;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mIsRelease:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/ss/texturerender/producer/ImageReaderProducer;->_updateImage()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 22
    .line 23
    invoke-static {v0}, Li1/h;->a(Landroid/media/Image;)Landroid/hardware/HardwareBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/ss/texturerender/effect/EffectTexture;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v3}, Lgd/a;->a(Landroid/hardware/HardwareBuffer;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v2, 0x0

    .line 48
    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;Landroid/hardware/HardwareBuffer;III)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iget v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mTexType:I

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "getEffectTexture,e:"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v2, "TR_ImageReaderProducer"

    .line 80
    .line 81
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method public getProducerType()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x10

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/ss/texturerender/producer/ImageReaderProducer;->MatrixFlipV:[F

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    aput v1, p1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mStatus:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/ss/texturerender/producer/ImageReaderProducer;->_updateImage()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mFrameAvailableListener:Lcom/ss/texturerender/IFrameAvailableListener;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/ss/texturerender/IFrameAvailableListener;->onFrameAvailable()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mIsRelease:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mImageReader:Landroid/media/ImageReader;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mFrameAvailableListener:Lcom/ss/texturerender/IFrameAvailableListener;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :catch_0
    :cond_0
    return-void
.end method

.method public releaseOffScreenSurface()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/producer/ImageReaderProducer;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setIntOption(II)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput p2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mStatus:I

    .line 5
    .line 6
    iget p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mTexType:I

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "set status:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mStatus:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "image:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ",this:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "TR_ImageReaderProducer"

    .line 46
    .line 47
    invoke-static {p1, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-ne p2, v0, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mCurImage:Landroid/media/Image;

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/texturerender/IFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/producer/ImageReaderProducer;->mFrameAvailableListener:Lcom/ss/texturerender/IFrameAvailableListener;

    .line 2
    .line 3
    return-void
.end method

.method public updateImage()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateTexDimension(II)V
    .locals 0

    .line 1
    return-void
.end method
