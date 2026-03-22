.class public final Lon/a;
.super Lfn/f;
.source "BitmapFactoryImageDecoder.java"

# interfaces
.implements Lon/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lon/a$b;,
        Lon/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfn/f<",
        "Lio/bidmachine/media3/decoder/DecoderInputBuffer;",
        "Lon/d;",
        "Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;",
        ">;",
        "Lon/c;"
    }
.end annotation


# instance fields
.field private final o:Lon/a$b;


# direct methods
.method private constructor <init>(Lon/a$b;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    new-array v0, v0, [Lon/d;

    invoke-direct {p0, v1, v0}, Lfn/f;-><init>([Lio/bidmachine/media3/decoder/DecoderInputBuffer;[Lfn/e;)V

    .line 3
    iput-object p1, p0, Lon/a;->o:Lon/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lon/a$b;Lon/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lon/a;-><init>(Lon/a$b;)V

    return-void
.end method

.method static synthetic t([BI)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lon/a;->x([BI)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic u(Lon/a;Lfn/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfn/f;->p(Lfn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static x([BI)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Len/b;->a([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :catch_1
    move-exception v0

    .line 16
    new-instance v1, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "Could not decode image data with BitmapFactory. (data.length = "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    array-length p0, p0

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ", input length = "

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ")"

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method


# virtual methods
.method public bridge synthetic dequeueOutputBuffer()Lon/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lfn/f;->k()Lfn/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lon/d;

    .line 6
    .line 7
    return-object v0
.end method

.method protected e()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected bridge synthetic f()Lfn/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lon/a;->v()Lon/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lon/a;->w(Ljava/lang/Throwable;)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic h(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lfn/e;Z)Lio/bidmachine/media3/decoder/DecoderException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p2, Lon/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lon/a;->y(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lon/d;Z)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected v()Lon/d;
    .locals 1

    .line 1
    new-instance v0, Lon/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lon/a$a;-><init>(Lon/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected w(Ljava/lang/Throwable;)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected y(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lon/d;Z)Lio/bidmachine/media3/exoplayer/image/ImageDecoderException;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {p3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lon/a;->o:Lon/a$b;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-interface {v0, v1, p3}, Lon/a$b;->a([BI)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    iput-object p3, p2, Lon/d;->e:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 45
    .line 46
    iput-wide v0, p2, Lfn/e;->b:J
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    return-object p1
.end method
