.class public Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lio/bidmachine/media3/exoplayer/mediacodec/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/a;Ljava/lang/Throwable;ZI)V
    .locals 10
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    invoke-static {p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->d(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 3
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/j;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/a;Ljava/lang/Throwable;ZLio/bidmachine/media3/exoplayer/mediacodec/j;)V
    .locals 10
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 5
    instance-of p1, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v8, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .line 6
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/j;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/j;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/media3/exoplayer/mediacodec/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a:Ljava/lang/String;

    .line 9
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->b:Z

    .line 10
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->c:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 11
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->d:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->e:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    return-void
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->e(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const-string v0, "neg_"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ""

    .line 7
    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "io.bidmachine.media3.exoplayer.mediacodec"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ".MediaCodecRenderer_"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private e(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v8, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->b:Z

    .line 14
    .line 15
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->c:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 16
    .line 17
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->d:Ljava/lang/String;

    .line 18
    .line 19
    move-object v0, v8

    .line 20
    move-object v7, p1

    .line 21
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/j;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 22
    .line 23
    .line 24
    return-object v8
.end method
