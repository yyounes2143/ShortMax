.class public Lio/bidmachine/media3/exoplayer/audio/m;
.super Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lgn/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/m$c;,
        Lio/bidmachine/media3/exoplayer/audio/m$b;
    }
.end annotation


# instance fields
.field private final F0:Landroid/content/Context;

.field private final G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

.field private final H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

.field private final I0:Lpn/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J0:I

.field private K0:Z

.field private L0:Z

.field private M0:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N0:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O0:J

.field private P0:Z

.field private Q0:Z

.field private R0:Z

.field private S0:I

.field private T0:Z

.field private U0:J

.field private V0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Lio/bidmachine/media3/exoplayer/audio/AudioSink;)V
    .locals 10
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/media3/exoplayer/audio/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcn/m0;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lpn/c;

    invoke-direct {v0}, Lpn/c;-><init>()V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 2
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/audio/m;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Lio/bidmachine/media3/exoplayer/audio/AudioSink;Lpn/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Lio/bidmachine/media3/exoplayer/audio/AudioSink;Lpn/c;)V
    .locals 6
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/media3/exoplayer/audio/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lpn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZF)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->F0:Landroid/content/Context;

    .line 6
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 7
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/audio/m;->I0:Lpn/c;

    const/16 p1, -0x3e8

    .line 8
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->S0:I

    .line 9
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/e$a;

    invoke-direct {p1, p5, p6}, Lio/bidmachine/media3/exoplayer/audio/e$a;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 11
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/m$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/audio/m$c;-><init>(Lio/bidmachine/media3/exoplayer/audio/m;Lio/bidmachine/media3/exoplayer/audio/m$a;)V

    invoke-interface {p7, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->i(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;)V

    return-void
.end method

.method static synthetic I1(Lio/bidmachine/media3/exoplayer/audio/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->R0:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/h2$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()Lio/bidmachine/media3/exoplayer/h2$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic L1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/h2$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()Lio/bidmachine/media3/exoplayer/h2$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic M1(Lio/bidmachine/media3/exoplayer/audio/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static N1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    const-string v0, "OMX.SEC.aac.dec"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p0, "samsung"

    .line 16
    .line 17
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "zeroflte"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, "herolte"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const-string v0, "heroqlte"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    :cond_0
    const/4 p0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    :goto_0
    return p0
.end method

.method private static O1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "OMX.google.opus.decoder"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "c2.android.opus.decoder"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "OMX.google.vorbis.decoder"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "c2.android.vorbis.decoder"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method

.method private static P1()Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "ZTE B2017G"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "AXON 7 mini"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private Q1(Lio/bidmachine/media3/common/a;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->j(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/audio/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/audio/d;->a:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/audio/d;->b:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x600

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v0, 0x200

    .line 21
    .line 22
    :goto_0
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/audio/d;->c:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    or-int/lit16 v0, v0, 0x800

    .line 27
    .line 28
    :cond_2
    return v0
.end method

.method private R1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Lcn/m0;->a:I

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->F0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcn/m0;->K0(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    iget p1, p2, Lio/bidmachine/media3/common/a;->p:I

    .line 32
    .line 33
    return p1
.end method

.method private static T1(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/l;",
            "Lio/bidmachine/media3/common/a;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p3, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->a(Lio/bidmachine/media3/common/a;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->p()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private W1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->setAudioSessionId(I)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcn/m0;->a:I

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->I0:Lpn/c;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lpn/c;->e(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private X1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v1, Lcn/m0;->a:I

    .line 9
    .line 10
    const/16 v2, 0x23

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->S0:I

    .line 20
    .line 21
    neg-int v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, "importance"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->a(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->isEnded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->P0:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->O0:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->O0:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->P0:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method protected A0(FLio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)F
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    aget-object v3, p3, v1

    .line 8
    .line 9
    iget v3, v3, Lio/bidmachine/media3/common/a;->F:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    int-to-float p2, v2

    .line 26
    mul-float/2addr p1, p2

    .line 27
    :goto_1
    return p1
.end method

.method protected C0(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/l;",
            "Lio/bidmachine/media3/common/a;",
            "Z)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Lio/bidmachine/media3/exoplayer/audio/m;->T1(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Lio/bidmachine/media3/common/a;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected C1(Lio/bidmachine/media3/common/a;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lgn/g0;->a:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/m;->Q1(Lio/bidmachine/media3/common/a;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit16 v1, v0, 0x200

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v1, v1, Lgn/g0;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget v0, p1, Lio/bidmachine/media3/common/a;->H:I

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget v0, p1, Lio/bidmachine/media3/common/a;->I:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->a(Lio/bidmachine/media3/common/a;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method protected D0(JJZ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-super/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(JJZ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    return-wide p1

    .line 17
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 18
    .line 19
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->g()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/audio/m;->V0:Z

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-super/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(JJZ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    return-wide p1

    .line 36
    :cond_1
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 37
    .line 38
    sub-long/2addr v4, p1

    .line 39
    cmp-long p1, v0, v2

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    :cond_2
    long-to-float p1, v4

    .line 48
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->getPlaybackParameters()Lzm/v;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->getPlaybackParameters()Lzm/v;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget p2, p2, Lzm/v;->a:F

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    :goto_0
    div-float/2addr p1, p2

    .line 64
    const/high16 p2, 0x40000000    # 2.0f

    .line 65
    .line 66
    div-float/2addr p1, p2

    .line 67
    float-to-long p1, p1

    .line 68
    iget-boolean p5, p0, Lio/bidmachine/media3/exoplayer/audio/m;->T0:Z

    .line 69
    .line 70
    if-eqz p5, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 73
    .line 74
    .line 75
    move-result-object p5

    .line 76
    invoke-interface {p5}, Lcn/h;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    sub-long/2addr v0, p3

    .line 85
    sub-long/2addr p1, v0

    .line 86
    :cond_4
    const-wide/16 p3, 0x2710

    .line 87
    .line 88
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    return-wide p1
.end method

.method protected D1(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lzm/u;->o(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    iget v0, p2, Lio/bidmachine/media3/common/a;->N:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->E1(Lio/bidmachine/media3/common/a;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->p()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    :cond_2
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/m;->Q1(Lio/bidmachine/media3/common/a;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 45
    .line 46
    invoke-interface {v6, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->a(Lio/bidmachine/media3/common/a;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    const/16 p1, 0x20

    .line 53
    .line 54
    invoke-static {v5, v4, p1, v0}, Lio/bidmachine/media3/exoplayer/i2;->m(IIII)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3
    move v6, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move v6, v1

    .line 62
    :goto_1
    const-string v0, "audio/raw"

    .line 63
    .line 64
    iget-object v7, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 73
    .line 74
    invoke-interface {v0, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->a(Lio/bidmachine/media3/common/a;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 86
    .line 87
    iget v7, p2, Lio/bidmachine/media3/common/a;->E:I

    .line 88
    .line 89
    iget v8, p2, Lio/bidmachine/media3/common/a;->F:I

    .line 90
    .line 91
    const/4 v9, 0x2

    .line 92
    invoke-static {v9, v7, v8}, Lcn/m0;->j0(III)Lio/bidmachine/media3/common/a;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v0, v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->a(Lio/bidmachine/media3/common/a;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 108
    .line 109
    invoke-static {p1, p2, v1, v0}, Lio/bidmachine/media3/exoplayer/audio/m;->T1(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1

    .line 124
    :cond_7
    if-nez v3, :cond_8

    .line 125
    .line 126
    invoke-static {v9}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 136
    .line 137
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->o(Lio/bidmachine/media3/common/a;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_a

    .line 142
    .line 143
    move v7, v2

    .line 144
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-ge v7, v8, :cond_a

    .line 149
    .line 150
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 155
    .line 156
    invoke-virtual {v8, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->o(Lio/bidmachine/media3/common/a;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_9

    .line 161
    .line 162
    move p1, v1

    .line 163
    move-object v0, v8

    .line 164
    goto :goto_3

    .line 165
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_a
    move p1, v2

    .line 169
    move v2, v3

    .line 170
    :goto_3
    if-eqz v2, :cond_b

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    const/4 v5, 0x3

    .line 174
    :goto_4
    if-eqz v2, :cond_c

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->r(Lio/bidmachine/media3/common/a;)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_c

    .line 181
    .line 182
    const/16 v4, 0x10

    .line 183
    .line 184
    :cond_c
    iget-boolean p2, v0, Lio/bidmachine/media3/exoplayer/mediacodec/j;->h:Z

    .line 185
    .line 186
    if-eqz p2, :cond_d

    .line 187
    .line 188
    const/16 p2, 0x40

    .line 189
    .line 190
    move v3, p2

    .line 191
    goto :goto_5

    .line 192
    :cond_d
    move v3, v1

    .line 193
    :goto_5
    if-eqz p1, :cond_e

    .line 194
    .line 195
    const/16 v1, 0x80

    .line 196
    .line 197
    :cond_e
    move p1, v1

    .line 198
    const/16 v2, 0x20

    .line 199
    .line 200
    move v0, v5

    .line 201
    move v1, v4

    .line 202
    move v4, p1

    .line 203
    move v5, v6

    .line 204
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/i2;->q(IIIIII)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    return p1
.end method

.method protected F0(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;Landroid/media/MediaCrypto;F)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
    .locals 2
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->J()[Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/audio/m;->S1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->J0:I

    .line 10
    .line 11
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->N1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->K0:Z

    .line 18
    .line 19
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->O1(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->L0:Z

    .line 26
    .line 27
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->J0:I

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0, v1, p4}, Lio/bidmachine/media3/exoplayer/audio/m;->U1(Lio/bidmachine/media3/common/a;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->b:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "audio/raw"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    move-object v0, p2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->N0:Lio/bidmachine/media3/common/a;

    .line 57
    .line 58
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->I0:Lpn/c;

    .line 59
    .line 60
    invoke-static {p1, p4, p2, p3, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->a(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/media/MediaCrypto;Lpn/c;)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method protected K0(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .locals 4

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b:Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "audio/opus"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->g:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b:Lio/bidmachine/media3/common/a;

    .line 36
    .line 37
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lio/bidmachine/media3/common/a;

    .line 42
    .line 43
    iget p1, p1, Lio/bidmachine/media3/common/a;->H:I

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    if-ne v1, v2, :cond_0

    .line 52
    .line 53
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    const-wide/32 v2, 0xbb80

    .line 64
    .line 65
    .line 66
    mul-long/2addr v0, v2

    .line 67
    const-wide/32 v2, 0x3b9aca00

    .line 68
    .line 69
    .line 70
    div-long/2addr v0, v2

    .line 71
    long-to-int v0, v0

    .line 72
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 73
    .line 74
    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->q(II)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method protected N()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->Q0:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->M0:Lio/bidmachine/media3/common/a;

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->V0:Z

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 18
    .line 19
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 26
    .line 27
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->s(Lgn/b;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 35
    .line 36
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->s(Lgn/b;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    :try_start_2
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 47
    .line 48
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->s(Lgn/b;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 56
    .line 57
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->s(Lgn/b;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method protected O(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->O(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 5
    .line 6
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->t(Lgn/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-boolean p1, p1, Lgn/g0;->b:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 20
    .line 21
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->c()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 26
    .line 27
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->disableTunneling()V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->I()Lhn/b2;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->l(Lhn/b2;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 40
    .line 41
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->p(Lcn/h;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method protected Q(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(JZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 5
    .line 6
    invoke-interface {p3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->flush()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->O0:J

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->V0:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->R0:Z

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->P0:Z

    .line 25
    .line 26
    return-void
.end method

.method protected R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->release()V

    .line 4
    .line 5
    .line 6
    sget v0, Lcn/m0;->a:I

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->I0:Lpn/c;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lpn/c;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method protected S1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)I
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/m;->R1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    array-length v1, p3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    array-length v1, p3

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, p3, v2

    .line 15
    .line 16
    invoke-virtual {p1, p2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->e(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;)Lgn/c;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v4, v4, Lgn/c;->d:I

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1, v3}, Lio/bidmachine/media3/exoplayer/audio/m;->R1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method protected T()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->R0:Z

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 10
    .line 11
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->V0:Z

    .line 12
    .line 13
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->Q0:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->Q0:Z

    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 23
    .line 24
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->reset()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->Q0:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->Q0:Z

    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 36
    .line 37
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->reset()V

    .line 38
    .line 39
    .line 40
    :cond_1
    throw v1
.end method

.method protected U()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 5
    .line 6
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->play()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->T0:Z

    .line 11
    .line 12
    return-void
.end method

.method protected U1(Lio/bidmachine/media3/common/a;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mime"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p1, Lio/bidmachine/media3/common/a;->E:I

    .line 12
    .line 13
    const-string v1, "channel-count"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string p2, "sample-rate"

    .line 19
    .line 20
    iget v1, p1, Lio/bidmachine/media3/common/a;->F:I

    .line 21
    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lio/bidmachine/media3/common/a;->r:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v0, p2}, Lcn/u;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "max-input-size"

    .line 31
    .line 32
    invoke-static {v0, p2, p3}, Lcn/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sget p2, Lcn/m0;->a:I

    .line 36
    .line 37
    const/16 p3, 0x17

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    if-lt p2, p3, :cond_0

    .line 41
    .line 42
    const-string p3, "priority"

    .line 43
    .line 44
    invoke-virtual {v0, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    cmpl-float p3, p4, p3

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/m;->P1()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_0

    .line 58
    .line 59
    const-string p3, "operating-rate"

    .line 60
    .line 61
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const/16 p3, 0x1c

    .line 65
    .line 66
    if-gt p2, p3, :cond_1

    .line 67
    .line 68
    const-string p3, "audio/ac4"

    .line 69
    .line 70
    iget-object p4, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_1

    .line 77
    .line 78
    const-string p3, "ac4-is-sync"

    .line 79
    .line 80
    const/4 p4, 0x1

    .line 81
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const/16 p3, 0x18

    .line 85
    .line 86
    if-lt p2, p3, :cond_2

    .line 87
    .line 88
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 89
    .line 90
    iget p4, p1, Lio/bidmachine/media3/common/a;->E:I

    .line 91
    .line 92
    iget p1, p1, Lio/bidmachine/media3/common/a;->F:I

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-static {v2, p4, p1}, Lcn/m0;->j0(III)Lio/bidmachine/media3/common/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p3, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->m(Lio/bidmachine/media3/common/a;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 p3, 0x2

    .line 104
    if-ne p1, p3, :cond_2

    .line 105
    .line 106
    const-string p1, "pcm-encoding"

    .line 107
    .line 108
    invoke-virtual {v0, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    const/16 p1, 0x20

    .line 112
    .line 113
    if-lt p2, p1, :cond_3

    .line 114
    .line 115
    const-string p1, "max-output-channel-count"

    .line 116
    .line 117
    const/16 p3, 0x63

    .line 118
    .line 119
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    const/16 p1, 0x23

    .line 123
    .line 124
    if-lt p2, p1, :cond_4

    .line 125
    .line 126
    iget p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->S0:I

    .line 127
    .line 128
    neg-int p1, p1

    .line 129
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const-string p2, "importance"

    .line 134
    .line 135
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-object v0
.end method

.method protected V()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->Y1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->T0:Z

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->pause()V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected V1()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->P0:Z

    .line 3
    .line 4
    return-void
.end method

.method protected X0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcn/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->m(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected Y0(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/h$a;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p3

    .line 5
    move-wide v4, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/audio/e$a;->q(Ljava/lang/String;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected Z0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected a1(Lgn/c0;)Lgn/c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lgn/c0;->b:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->M0:Lio/bidmachine/media3/common/a;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1(Lgn/c0;)Lgn/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->G0:Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 16
    .line 17
    invoke-virtual {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->u(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public b(Lzm/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->b(Lzm/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b1(Lio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V
    .locals 5
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->N0:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "audio/raw"

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget v0, p1, Lio/bidmachine/media3/common/a;->G:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget v0, Lcn/m0;->a:I

    .line 35
    .line 36
    const/16 v4, 0x18

    .line 37
    .line 38
    if-lt v0, v4, :cond_3

    .line 39
    .line 40
    const-string v0, "pcm-encoding"

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Lcn/m0;->i0(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v0, 0x2

    .line 71
    :goto_0
    new-instance v4, Lio/bidmachine/media3/common/a$b;

    .line 72
    .line 73
    invoke-direct {v4}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/a$b;->o0(I)Lio/bidmachine/media3/common/a$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v3, p1, Lio/bidmachine/media3/common/a;->H:I

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->Z(I)Lio/bidmachine/media3/common/a$b;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v3, p1, Lio/bidmachine/media3/common/a;->I:I

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->a0(I)Lio/bidmachine/media3/common/a$b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->m:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->X(Ljava/lang/Object;)Lio/bidmachine/media3/common/a$b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->b:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->c:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->i0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v3, p1, Lio/bidmachine/media3/common/a;->e:I

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->w0(I)Lio/bidmachine/media3/common/a$b;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget v3, p1, Lio/bidmachine/media3/common/a;->f:I

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v3, "channel-count"

    .line 145
    .line 146
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v3, "sample-rate"

    .line 155
    .line 156
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/a$b;->v0(I)Lio/bidmachine/media3/common/a$b;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->K0:Z

    .line 169
    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    iget v0, p2, Lio/bidmachine/media3/common/a;->E:I

    .line 173
    .line 174
    const/4 v3, 0x6

    .line 175
    if-ne v0, v3, :cond_6

    .line 176
    .line 177
    iget v0, p1, Lio/bidmachine/media3/common/a;->E:I

    .line 178
    .line 179
    if-ge v0, v3, :cond_6

    .line 180
    .line 181
    new-array v2, v0, [I

    .line 182
    .line 183
    move v0, v1

    .line 184
    :goto_1
    iget v3, p1, Lio/bidmachine/media3/common/a;->E:I

    .line 185
    .line 186
    if-ge v0, v3, :cond_5

    .line 187
    .line 188
    aput v0, v2, v0

    .line 189
    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_5
    :goto_2
    move-object p1, p2

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->L0:Z

    .line 196
    .line 197
    if-eqz p1, :cond_5

    .line 198
    .line 199
    iget p1, p2, Lio/bidmachine/media3/common/a;->E:I

    .line 200
    .line 201
    invoke-static {p1}, Lao/r0;->a(I)[I

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    goto :goto_2

    .line 206
    :goto_3
    :try_start_0
    sget p2, Lcn/m0;->a:I

    .line 207
    .line 208
    const/16 v0, 0x1d

    .line 209
    .line 210
    if-lt p2, v0, :cond_8

    .line 211
    .line 212
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_7

    .line 217
    .line 218
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    iget p2, p2, Lgn/g0;->a:I

    .line 223
    .line 224
    if-eqz p2, :cond_7

    .line 225
    .line 226
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 227
    .line 228
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget v0, v0, Lgn/g0;->a:I

    .line 233
    .line 234
    invoke-interface {p2, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->h(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_0
    move-exception p1

    .line 239
    goto :goto_5

    .line 240
    :cond_7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 241
    .line 242
    invoke-interface {p2, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->h(I)V

    .line 243
    .line 244
    .line 245
    :cond_8
    :goto_4
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 246
    .line 247
    invoke-interface {p2, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->o(Lio/bidmachine/media3/common/a;I[I)V
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :goto_5
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;->a:Lio/bidmachine/media3/common/a;

    .line 252
    .line 253
    const/16 v0, 0x1389

    .line 254
    .line 255
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/h;->B(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    throw p1
.end method

.method protected c1(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->e(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected e0(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;)Lgn/c;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->e(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;)Lgn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lgn/c;->e:I

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Lio/bidmachine/media3/common/a;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const v2, 0x8000

    .line 14
    .line 15
    .line 16
    or-int/2addr v1, v2

    .line 17
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/m;->R1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lio/bidmachine/media3/exoplayer/audio/m;->J0:I

    .line 22
    .line 23
    if-le v2, v3, :cond_1

    .line 24
    .line 25
    or-int/lit8 v1, v1, 0x40

    .line 26
    .line 27
    :cond_1
    move v7, v1

    .line 28
    new-instance v1, Lgn/c;

    .line 29
    .line 30
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_0
    move v6, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget p1, v0, Lgn/c;->d:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    move-object v2, v1

    .line 41
    move-object v4, p2

    .line 42
    move-object v5, p3

    .line 43
    invoke-direct/range {v2 .. v7}, Lgn/c;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;II)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method protected e1()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 5
    .line 6
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getMediaClock()Lgn/e0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlaybackParameters()Lzm/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->getPlaybackParameters()Lzm/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->Y1()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->O0:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_6

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/m;->W1(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 45
    .line 46
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->f(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->S0:I

    .line 71
    .line 72
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/m;->X1()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    sget p1, Lcn/m0;->a:I

    .line 77
    .line 78
    const/16 v0, 0x17

    .line 79
    .line 80
    if-lt p1, v0, :cond_7

    .line 81
    .line 82
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 83
    .line 84
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/m$b;->a(Lio/bidmachine/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    check-cast p2, Lzm/d;

    .line 89
    .line 90
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 91
    .line 92
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lzm/d;

    .line 97
    .line 98
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->k(Lzm/d;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    check-cast p2, Lzm/c;

    .line 103
    .line 104
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 105
    .line 106
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lzm/c;

    .line 111
    .line 112
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->n(Lzm/c;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 117
    .line 118
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Ljava/lang/Float;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_0
    return-void
.end method

.method protected i1(JJLio/bidmachine/media3/exoplayer/mediacodec/h;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/a;)Z
    .locals 0
    .param p5    # Lio/bidmachine/media3/exoplayer/mediacodec/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-static {p6}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->N0:Lio/bidmachine/media3/common/a;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    const/4 p3, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    and-int/lit8 p1, p8, 0x2

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p5}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 26
    .line 27
    invoke-interface {p1, p7, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->g(IZ)V

    .line 28
    .line 29
    .line 30
    return p2

    .line 31
    :cond_0
    if-eqz p12, :cond_2

    .line 32
    .line 33
    if-eqz p5, :cond_1

    .line 34
    .line 35
    invoke-interface {p5, p7, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->g(IZ)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 39
    .line 40
    iget p3, p1, Lgn/b;->f:I

    .line 41
    .line 42
    add-int/2addr p3, p9

    .line 43
    iput p3, p1, Lgn/b;->f:I

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 46
    .line 47
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    .line 48
    .line 49
    .line 50
    return p2

    .line 51
    :cond_2
    :try_start_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 52
    .line 53
    invoke-interface {p1, p6, p10, p11, p9}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->d(Ljava/nio/ByteBuffer;JI)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    if-eqz p5, :cond_3

    .line 60
    .line 61
    invoke-interface {p5, p7, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->g(IZ)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 65
    .line 66
    iget p3, p1, Lgn/b;->e:I

    .line 67
    .line 68
    add-int/2addr p3, p9

    .line 69
    iput p3, p1, Lgn/b;->e:I

    .line 70
    .line 71
    return p2

    .line 72
    :cond_4
    iput-wide p10, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 73
    .line 74
    return p3

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :goto_0
    iget-boolean p2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->b:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    iget p3, p3, Lgn/g0;->a:I

    .line 92
    .line 93
    if-eqz p3, :cond_5

    .line 94
    .line 95
    const/16 p3, 0x138b

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/16 p3, 0x138a

    .line 99
    .line 100
    :goto_1
    invoke-virtual {p0, p1, p14, p2, p3}, Lio/bidmachine/media3/exoplayer/h;->C(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    throw p1

    .line 105
    :goto_2
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/m;->M0:Lio/bidmachine/media3/common/a;

    .line 106
    .line 107
    iget-boolean p3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->b:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0()Z

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    if-eqz p4, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    iget p4, p4, Lgn/g0;->a:I

    .line 120
    .line 121
    if-eqz p4, :cond_6

    .line 122
    .line 123
    const/16 p4, 0x138c

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    const/16 p4, 0x1389

    .line 127
    .line 128
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/h;->C(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->isEnded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->R0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/m;->R0:Z

    .line 5
    .line 6
    return v0
.end method

.method protected n1()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->H0:Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->U0:J

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/m;->V0:Z
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->c:Lio/bidmachine/media3/common/a;

    .line 33
    .line 34
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->b:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/16 v3, 0x138b

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/16 v3, 0x138a

    .line 46
    .line 47
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/h;->C(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0
.end method
