.class public final Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/media3/exoplayer/mediacodec/j;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lio/bidmachine/media3/common/a;

.field public final d:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lpn/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/view/Surface;Landroid/media/MediaCrypto;Lpn/c;)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lpn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->b:Landroid/media/MediaFormat;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->c:Lio/bidmachine/media3/common/a;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->d:Landroid/view/Surface;

    .line 11
    .line 12
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->e:Landroid/media/MediaCrypto;

    .line 13
    .line 14
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->f:Lpn/c;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/media/MediaCrypto;Lpn/c;)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
    .locals 8
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lpn/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v7, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v5, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/view/Surface;Landroid/media/MediaCrypto;Lpn/c;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public static b(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
    .locals 8
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v7, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/view/Surface;Landroid/media/MediaCrypto;Lpn/c;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method
