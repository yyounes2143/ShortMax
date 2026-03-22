.class final Lio/bidmachine/media3/exoplayer/hls/k$d;
.super Lio/bidmachine/media3/exoplayer/source/f0;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lio/bidmachine/media3/common/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lwn/b;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/b;",
            "Lio/bidmachine/media3/exoplayer/drm/i;",
            "Lio/bidmachine/media3/exoplayer/drm/h$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/f0;-><init>(Lwn/b;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 3
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/k$d;->H:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lwn/b;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Ljava/util/Map;Lio/bidmachine/media3/exoplayer/hls/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/hls/k$d;-><init>(Lwn/b;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Ljava/util/Map;)V

    return-void
.end method

.method private k0(Lzm/t;)Lzm/t;
    .locals 7
    .param p1    # Lzm/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lzm/t;->e()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const/4 v4, -0x1

    .line 12
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Lzm/t;->d(I)Lzm/t$a;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    instance-of v6, v5, Lpo/m;

    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    check-cast v5, Lpo/m;

    .line 23
    .line 24
    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    .line 25
    .line 26
    iget-object v5, v5, Lpo/m;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v3, v4

    .line 39
    :goto_1
    if-ne v3, v4, :cond_3

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    const/4 v4, 0x1

    .line 43
    if-ne v1, v4, :cond_4

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_4
    add-int/lit8 v0, v1, -0x1

    .line 47
    .line 48
    new-array v0, v0, [Lzm/t$a;

    .line 49
    .line 50
    :goto_2
    if-ge v2, v1, :cond_7

    .line 51
    .line 52
    if-eq v2, v3, :cond_6

    .line 53
    .line 54
    if-ge v2, v3, :cond_5

    .line 55
    .line 56
    move v4, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    add-int/lit8 v4, v2, -0x1

    .line 59
    .line 60
    :goto_3
    invoke-virtual {p1, v2}, Lzm/t;->d(I)Lzm/t$a;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v0, v4

    .line 65
    .line 66
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_7
    new-instance p1, Lzm/t;

    .line 70
    .line 71
    invoke-direct {p1, v0}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method


# virtual methods
.method public c(JIIILao/o0$a;)V
    .locals 0
    .param p6    # Lao/o0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/f0;->c(JIIILao/o0$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l0(Lio/bidmachine/media3/common/DrmInitData;)V
    .locals 0
    .param p1    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/k$d;->I:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/f0;->L()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m0(Lio/bidmachine/media3/exoplayer/hls/d;)V
    .locals 2

    .line 1
    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/d;->k:I

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/f0;->i0(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public z(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/k$d;->I:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/k$d;->H:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v2, v0, Lio/bidmachine/media3/common/DrmInitData;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lio/bidmachine/media3/common/DrmInitData;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_1
    iget-object v1, p1, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/hls/k$d;->k0(Lzm/t;)Lzm/t;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 30
    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 34
    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/a$b;->Y(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_3
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/source/f0;->z(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method
