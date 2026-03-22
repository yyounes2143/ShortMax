.class public Lio/bidmachine/media3/exoplayer/video/h;
.super Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/n$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/h$d;,
        Lio/bidmachine/media3/exoplayer/video/h$c;,
        Lio/bidmachine/media3/exoplayer/video/h$f;,
        Lio/bidmachine/media3/exoplayer/video/h$e;
    }
.end annotation


# static fields
.field private static final u1:[I

.field private static v1:Z

.field private static w1:Z


# instance fields
.field private final F0:Landroid/content/Context;

.field private final G0:Z

.field private final H0:Lio/bidmachine/media3/exoplayer/video/p$a;

.field private final I0:I

.field private final J0:Z

.field private final K0:Lio/bidmachine/media3/exoplayer/video/n;

.field private final L0:Lio/bidmachine/media3/exoplayer/video/n$a;

.field private final M0:Lio/bidmachine/media3/exoplayer/video/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final N0:J

.field private final O0:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private P0:Lio/bidmachine/media3/exoplayer/video/h$e;

.field private Q0:Z

.field private R0:Z

.field private S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

.field private T0:Z

.field private U0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private V0:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private X0:Lcn/d0;

.field private Y0:Z

.field private Z0:I

.field private a1:I

.field private b1:J

.field private c1:I

.field private d1:I

.field private e1:I

.field private f1:J

.field private g1:I

.field private h1:J

.field private i1:Lzm/i0;

.field private j1:Lzm/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k1:I

.field private l1:Z

.field private m1:I

.field n1:Lio/bidmachine/media3/exoplayer/video/h$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o1:Lyn/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p1:J

.field private q1:J

.field private r1:Z

.field private s1:Z

.field private t1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/bidmachine/media3/exoplayer/video/h;->u1:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Lio/bidmachine/media3/exoplayer/video/h$d;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->a(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->b(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->e(Lio/bidmachine/media3/exoplayer/video/h$d;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->f(Lio/bidmachine/media3/exoplayer/video/h$d;)F

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v1, 0x2

    .line 18
    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZF)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->g(Lio/bidmachine/media3/exoplayer/video/h$d;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->h(Lio/bidmachine/media3/exoplayer/video/h$d;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->I0:I

    .line 37
    .line 38
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->i(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 43
    .line 44
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 45
    .line 46
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->j(Lio/bidmachine/media3/exoplayer/video/h$d;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->k(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/video/p;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/p$a;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 58
    .line 59
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    const/4 v3, 0x0

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v1, v3

    .line 68
    :goto_0
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->G0:Z

    .line 69
    .line 70
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/n;

    .line 71
    .line 72
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->l(Lio/bidmachine/media3/exoplayer/video/h$d;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-direct {v1, v0, p0, v4, v5}, Lio/bidmachine/media3/exoplayer/video/n;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/n$b;J)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 80
    .line 81
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 82
    .line 83
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 87
    .line 88
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/h;->R1()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->J0:Z

    .line 93
    .line 94
    sget-object v0, Lcn/d0;->c:Lcn/d0;

    .line 95
    .line 96
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->X0:Lcn/d0;

    .line 97
    .line 98
    iput v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->Z0:I

    .line 99
    .line 100
    iput v3, p0, Lio/bidmachine/media3/exoplayer/video/h;->a1:I

    .line 101
    .line 102
    sget-object v0, Lzm/i0;->e:Lzm/i0;

    .line 103
    .line 104
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->i1:Lzm/i0;

    .line 105
    .line 106
    iput v3, p0, Lio/bidmachine/media3/exoplayer/video/h;->m1:I

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 110
    .line 111
    const/16 v1, -0x3e8

    .line 112
    .line 113
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->k1:I

    .line 114
    .line 115
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 121
    .line 122
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 123
    .line 124
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->c(Lio/bidmachine/media3/exoplayer/video/h$d;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/a;

    .line 131
    .line 132
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/a;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_1
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 136
    .line 137
    new-instance v0, Ljava/util/PriorityQueue;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 143
    .line 144
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->d(Lio/bidmachine/media3/exoplayer/video/h$d;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    cmp-long v0, v3, v1

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->d(Lio/bidmachine/media3/exoplayer/video/h$d;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    neg-long v1, v0

    .line 157
    :cond_2
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->N0:J

    .line 158
    .line 159
    return-void
.end method

.method static synthetic I1(Lio/bidmachine/media3/exoplayer/video/h;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J1(Lio/bidmachine/media3/exoplayer/video/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->q2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static J2(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;)I
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
    invoke-static {v0}, Lzm/u;->t(Ljava/lang/String;)Z

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
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p2, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

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
    invoke-static {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/video/h;->Y1(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-static {p0, p1, p2, v1, v1}, Lio/bidmachine/media3/exoplayer/video/h;->Y1(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_3
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->E1(Lio/bidmachine/media3/common/a;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_4

    .line 55
    .line 56
    const/4 p0, 0x2

    .line 57
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 67
    .line 68
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->o(Lio/bidmachine/media3/common/a;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_6

    .line 73
    .line 74
    move v6, v2

    .line 75
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-ge v6, v7, :cond_6

    .line 80
    .line 81
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 86
    .line 87
    invoke-virtual {v7, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->o(Lio/bidmachine/media3/common/a;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_5

    .line 92
    .line 93
    move v3, v1

    .line 94
    move v5, v2

    .line 95
    move-object v4, v7

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move v3, v2

    .line 101
    :goto_2
    if-eqz v5, :cond_7

    .line 102
    .line 103
    const/4 v6, 0x4

    .line 104
    goto :goto_3

    .line 105
    :cond_7
    const/4 v6, 0x3

    .line 106
    :goto_3
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->r(Lio/bidmachine/media3/common/a;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_8

    .line 111
    .line 112
    const/16 v7, 0x10

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_8
    const/16 v7, 0x8

    .line 116
    .line 117
    :goto_4
    iget-boolean v4, v4, Lio/bidmachine/media3/exoplayer/mediacodec/j;->h:Z

    .line 118
    .line 119
    if-eqz v4, :cond_9

    .line 120
    .line 121
    const/16 v4, 0x40

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move v4, v1

    .line 125
    :goto_5
    if-eqz v3, :cond_a

    .line 126
    .line 127
    const/16 v3, 0x80

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_a
    move v3, v1

    .line 131
    :goto_6
    sget v8, Lcn/m0;->a:I

    .line 132
    .line 133
    const/16 v9, 0x1a

    .line 134
    .line 135
    if-lt v8, v9, :cond_b

    .line 136
    .line 137
    const-string v8, "video/dolby-vision"

    .line 138
    .line 139
    iget-object v9, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_b

    .line 146
    .line 147
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/h$c;->a(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_b

    .line 152
    .line 153
    const/16 v3, 0x100

    .line 154
    .line 155
    :cond_b
    if-eqz v5, :cond_c

    .line 156
    .line 157
    invoke-static {p0, p1, p2, v0, v2}, Lio/bidmachine/media3/exoplayer/video/h;->Y1(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_c

    .line 166
    .line 167
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Lio/bidmachine/media3/common/a;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 176
    .line 177
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->o(Lio/bidmachine/media3/common/a;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->r(Lio/bidmachine/media3/common/a;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_c

    .line 188
    .line 189
    const/16 v1, 0x20

    .line 190
    .line 191
    :cond_c
    invoke-static {v6, v7, v1, v4, v3}, Lio/bidmachine/media3/exoplayer/i2;->i(IIIII)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0
.end method

.method static synthetic K1(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/video/h;->v2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private K2()V
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
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->k1:I

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

.method static synthetic L1(Lio/bidmachine/media3/exoplayer/video/h;)Lio/bidmachine/media3/exoplayer/mediacodec/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic M1(Lio/bidmachine/media3/exoplayer/video/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->s2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M2(J)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Long;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v2, v2, p1

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/video/h;->L2(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic N1(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private N2(Lio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->L()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 24
    .line 25
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Lzm/a0$b;

    .line 28
    .line 29
    invoke-direct {v1}, Lzm/a0$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lzm/a0$b;->j()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 41
    .line 42
    return-void
.end method

.method private static R1()Z
    .locals 2

    .line 1
    const-string v0, "NVIDIA"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static T1()Z
    .locals 16

    const/16 v0, 0x1a

    const/16 v1, 0x8

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1
    sget v11, Lcn/m0;->a:I

    const/16 v12, 0x1c

    const/4 v13, 0x1

    if-gt v11, v12, :cond_8

    .line 2
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_0
    move v14, v9

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "machuca"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v3

    goto :goto_1

    :sswitch_1
    const-string v15, "once"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    move v14, v4

    goto :goto_1

    :sswitch_2
    const-string v15, "magnolia"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    move v14, v5

    goto :goto_1

    :sswitch_3
    const-string v15, "aquaman"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    move v14, v6

    goto :goto_1

    :sswitch_4
    const-string v15, "oneday"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    move v14, v7

    goto :goto_1

    :sswitch_5
    const-string v15, "dangalUHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_0

    :cond_5
    move v14, v8

    goto :goto_1

    :sswitch_6
    const-string v15, "dangalFHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_0

    :cond_6
    move v14, v13

    goto :goto_1

    :sswitch_7
    const-string v15, "dangal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_0

    :cond_7
    move v14, v10

    :goto_1
    packed-switch v14, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v13

    :cond_8
    :goto_2
    if-gt v11, v2, :cond_9

    .line 3
    const-string v14, "HWEML"

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    return v13

    .line 4
    :cond_9
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_3
    move v15, v9

    goto/16 :goto_4

    :sswitch_8
    const-string v15, "AFTEUFF014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_3

    :cond_a
    move v15, v1

    goto/16 :goto_4

    :sswitch_9
    const-string v15, "AFTSO001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_3

    :cond_b
    move v15, v3

    goto :goto_4

    :sswitch_a
    const-string v15, "AFTEU014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_3

    :cond_c
    move v15, v4

    goto :goto_4

    :sswitch_b
    const-string v15, "AFTEU011"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_3

    :cond_d
    move v15, v5

    goto :goto_4

    :sswitch_c
    const-string v15, "AFTR"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_3

    :cond_e
    move v15, v6

    goto :goto_4

    :sswitch_d
    const-string v15, "AFTN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_3

    :cond_f
    move v15, v7

    goto :goto_4

    :sswitch_e
    const-string v15, "AFTA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_3

    :cond_10
    move v15, v8

    goto :goto_4

    :sswitch_f
    const-string v15, "AFTKMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_3

    :cond_11
    move v15, v13

    goto :goto_4

    :sswitch_10
    const-string v15, "AFTJMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_3

    :cond_12
    move v15, v10

    :goto_4
    packed-switch v15, :pswitch_data_1

    if-gt v11, v0, :cond_a0

    .line 5
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    :goto_5
    move v0, v9

    goto/16 :goto_6

    :sswitch_11
    const-string v0, "HWWAS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    const/16 v0, 0x8b

    goto/16 :goto_6

    :sswitch_12
    const-string v0, "HWVNS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    :cond_14
    const/16 v0, 0x8a

    goto/16 :goto_6

    :sswitch_13
    const-string v0, "ELUGA_Prim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    const/16 v0, 0x89

    goto/16 :goto_6

    :sswitch_14
    const-string v0, "ELUGA_Note"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5

    :cond_16
    const/16 v0, 0x88

    goto/16 :goto_6

    :sswitch_15
    const-string v0, "ASUS_X00AD_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    const/16 v0, 0x87

    goto/16 :goto_6

    :sswitch_16
    const-string v0, "HWCAM-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5

    :cond_18
    const/16 v0, 0x86

    goto/16 :goto_6

    :sswitch_17
    const-string v0, "HWBLN-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    const/16 v0, 0x85

    goto/16 :goto_6

    :sswitch_18
    const-string v0, "DM-01K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v0, 0x84

    goto/16 :goto_6

    :sswitch_19
    const-string v0, "BRAVIA_ATV3_4K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    const/16 v0, 0x83

    goto/16 :goto_6

    :sswitch_1a
    const-string v0, "Infinix-X572"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v0, 0x82

    goto/16 :goto_6

    :sswitch_1b
    const-string v0, "PB2-670M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v0, 0x81

    goto/16 :goto_6

    :sswitch_1c
    const-string v0, "santoni"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v0, 0x80

    goto/16 :goto_6

    :sswitch_1d
    const-string v0, "iball8735_9806"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/16 v0, 0x7f

    goto/16 :goto_6

    :sswitch_1e
    const-string v0, "CPH1715"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_5

    :cond_20
    const/16 v0, 0x7e

    goto/16 :goto_6

    :sswitch_1f
    const-string v0, "CPH1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_5

    :cond_21
    const/16 v0, 0x7d

    goto/16 :goto_6

    :sswitch_20
    const-string v0, "woods_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_5

    :cond_22
    const/16 v0, 0x7c

    goto/16 :goto_6

    :sswitch_21
    const-string v0, "htc_e56ml_dtul"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const/16 v0, 0x7b

    goto/16 :goto_6

    :sswitch_22
    const-string v0, "EverStar_S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_5

    :cond_24
    const/16 v0, 0x7a

    goto/16 :goto_6

    :sswitch_23
    const-string v0, "hwALE-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_5

    :cond_25
    const/16 v0, 0x79

    goto/16 :goto_6

    :sswitch_24
    const-string v0, "itel_S41"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_5

    :cond_26
    const/16 v0, 0x78

    goto/16 :goto_6

    :sswitch_25
    const-string v0, "LS-5017"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_5

    :cond_27
    const/16 v0, 0x77

    goto/16 :goto_6

    :sswitch_26
    const-string v0, "panell_d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_5

    :cond_28
    const/16 v0, 0x76

    goto/16 :goto_6

    :sswitch_27
    const-string v0, "j2xlteins"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_5

    :cond_29
    const/16 v0, 0x75

    goto/16 :goto_6

    :sswitch_28
    const-string v0, "A7000plus"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_5

    :cond_2a
    const/16 v0, 0x74

    goto/16 :goto_6

    :sswitch_29
    const-string v0, "manning"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_5

    :cond_2b
    const/16 v0, 0x73

    goto/16 :goto_6

    :sswitch_2a
    const-string v0, "GIONEE_WBL7519"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_5

    :cond_2c
    const/16 v0, 0x72

    goto/16 :goto_6

    :sswitch_2b
    const-string v0, "GIONEE_WBL7365"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_5

    :cond_2d
    const/16 v0, 0x71

    goto/16 :goto_6

    :sswitch_2c
    const-string v0, "GIONEE_WBL5708"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_5

    :cond_2e
    const/16 v0, 0x70

    goto/16 :goto_6

    :sswitch_2d
    const-string v0, "QM16XE_U"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_5

    :cond_2f
    const/16 v0, 0x6f

    goto/16 :goto_6

    :sswitch_2e
    const-string v0, "Pixi5-10_4G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_5

    :cond_30
    const/16 v0, 0x6e

    goto/16 :goto_6

    :sswitch_2f
    const-string v0, "TB3-850M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_5

    :cond_31
    const/16 v0, 0x6d

    goto/16 :goto_6

    :sswitch_30
    const-string v0, "TB3-850F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_5

    :cond_32
    const/16 v0, 0x6c

    goto/16 :goto_6

    :sswitch_31
    const-string v0, "TB3-730X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_5

    :cond_33
    const/16 v0, 0x6b

    goto/16 :goto_6

    :sswitch_32
    const-string v0, "TB3-730F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_5

    :cond_34
    const/16 v0, 0x6a

    goto/16 :goto_6

    :sswitch_33
    const-string v0, "A7020a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_5

    :cond_35
    const/16 v0, 0x69

    goto/16 :goto_6

    :sswitch_34
    const-string v0, "A7010a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_5

    :cond_36
    const/16 v0, 0x68

    goto/16 :goto_6

    :sswitch_35
    const-string v0, "griffin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_5

    :cond_37
    const/16 v0, 0x67

    goto/16 :goto_6

    :sswitch_36
    const-string v0, "marino_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_5

    :cond_38
    const/16 v0, 0x66

    goto/16 :goto_6

    :sswitch_37
    const-string v0, "CPY83_I00"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_5

    :cond_39
    const/16 v0, 0x65

    goto/16 :goto_6

    :sswitch_38
    const-string v0, "A2016a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_5

    :cond_3a
    const/16 v0, 0x64

    goto/16 :goto_6

    :sswitch_39
    const-string v0, "le_x6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_5

    :cond_3b
    const/16 v0, 0x63

    goto/16 :goto_6

    :sswitch_3a
    const-string v0, "l5460"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_5

    :cond_3c
    const/16 v0, 0x62

    goto/16 :goto_6

    :sswitch_3b
    const-string v0, "i9031"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_5

    :cond_3d
    const/16 v0, 0x61

    goto/16 :goto_6

    :sswitch_3c
    const-string v0, "X3_HK"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_5

    :cond_3e
    const/16 v0, 0x60

    goto/16 :goto_6

    :sswitch_3d
    const-string v0, "V23GB"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_5

    :cond_3f
    const/16 v0, 0x5f

    goto/16 :goto_6

    :sswitch_3e
    const-string v0, "Q4310"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_5

    :cond_40
    const/16 v0, 0x5e

    goto/16 :goto_6

    :sswitch_3f
    const-string v0, "Q4260"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_5

    :cond_41
    const/16 v0, 0x5d

    goto/16 :goto_6

    :sswitch_40
    const-string v0, "PRO7S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_5

    :cond_42
    const/16 v0, 0x5c

    goto/16 :goto_6

    :sswitch_41
    const-string v0, "F3311"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_5

    :cond_43
    const/16 v0, 0x5b

    goto/16 :goto_6

    :sswitch_42
    const-string v0, "F3215"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_5

    :cond_44
    const/16 v0, 0x5a

    goto/16 :goto_6

    :sswitch_43
    const-string v0, "F3213"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_5

    :cond_45
    const/16 v0, 0x59

    goto/16 :goto_6

    :sswitch_44
    const-string v0, "F3211"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_5

    :cond_46
    const/16 v0, 0x58

    goto/16 :goto_6

    :sswitch_45
    const-string v0, "F3116"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_5

    :cond_47
    const/16 v0, 0x57

    goto/16 :goto_6

    :sswitch_46
    const-string v0, "F3113"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_5

    :cond_48
    const/16 v0, 0x56

    goto/16 :goto_6

    :sswitch_47
    const-string v0, "F3111"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_5

    :cond_49
    const/16 v0, 0x55

    goto/16 :goto_6

    :sswitch_48
    const-string v0, "E5643"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_5

    :cond_4a
    const/16 v0, 0x54

    goto/16 :goto_6

    :sswitch_49
    const-string v0, "A1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_5

    :cond_4b
    const/16 v0, 0x53

    goto/16 :goto_6

    :sswitch_4a
    const-string v0, "Aura_Note_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_5

    :cond_4c
    const/16 v0, 0x52

    goto/16 :goto_6

    :sswitch_4b
    const-string v0, "602LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_5

    :cond_4d
    const/16 v0, 0x51

    goto/16 :goto_6

    :sswitch_4c
    const-string v0, "601LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_5

    :cond_4e
    const/16 v0, 0x50

    goto/16 :goto_6

    :sswitch_4d
    const-string v0, "MEIZU_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_5

    :cond_4f
    const/16 v0, 0x4f

    goto/16 :goto_6

    :sswitch_4e
    const-string v0, "p212"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_5

    :cond_50
    const/16 v0, 0x4e

    goto/16 :goto_6

    :sswitch_4f
    const-string v0, "mido"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_5

    :cond_51
    const/16 v0, 0x4d

    goto/16 :goto_6

    :sswitch_50
    const-string v0, "kate"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_5

    :cond_52
    const/16 v0, 0x4c

    goto/16 :goto_6

    :sswitch_51
    const-string v0, "fugu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_5

    :cond_53
    const/16 v0, 0x4b

    goto/16 :goto_6

    :sswitch_52
    const-string v0, "XE2X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_5

    :cond_54
    const/16 v0, 0x4a

    goto/16 :goto_6

    :sswitch_53
    const-string v0, "Q427"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_5

    :cond_55
    const/16 v0, 0x49

    goto/16 :goto_6

    :sswitch_54
    const-string v0, "Q350"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_5

    :cond_56
    const/16 v0, 0x48

    goto/16 :goto_6

    :sswitch_55
    const-string v0, "P681"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_5

    :cond_57
    const/16 v0, 0x47

    goto/16 :goto_6

    :sswitch_56
    const-string v0, "F04J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_5

    :cond_58
    const/16 v0, 0x46

    goto/16 :goto_6

    :sswitch_57
    const-string v0, "F04H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_5

    :cond_59
    const/16 v0, 0x45

    goto/16 :goto_6

    :sswitch_58
    const-string v0, "F03H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_5

    :cond_5a
    const/16 v0, 0x44

    goto/16 :goto_6

    :sswitch_59
    const-string v0, "F02H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_5

    :cond_5b
    const/16 v0, 0x43

    goto/16 :goto_6

    :sswitch_5a
    const-string v0, "F01J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_5

    :cond_5c
    const/16 v0, 0x42

    goto/16 :goto_6

    :sswitch_5b
    const-string v0, "F01H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_5

    :cond_5d
    const/16 v0, 0x41

    goto/16 :goto_6

    :sswitch_5c
    const-string v0, "1714"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_5

    :cond_5e
    const/16 v0, 0x40

    goto/16 :goto_6

    :sswitch_5d
    const-string v0, "1713"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_5

    :cond_5f
    const/16 v0, 0x3f

    goto/16 :goto_6

    :sswitch_5e
    const-string v0, "1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_5

    :cond_60
    const/16 v0, 0x3e

    goto/16 :goto_6

    :sswitch_5f
    const-string v0, "flo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_5

    :cond_61
    const/16 v0, 0x3d

    goto/16 :goto_6

    :sswitch_60
    const-string v0, "deb"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_5

    :cond_62
    const/16 v0, 0x3c

    goto/16 :goto_6

    :sswitch_61
    const-string v0, "cv3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_5

    :cond_63
    const/16 v0, 0x3b

    goto/16 :goto_6

    :sswitch_62
    const-string v0, "cv1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_5

    :cond_64
    const/16 v0, 0x3a

    goto/16 :goto_6

    :sswitch_63
    const-string v0, "Z80"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_5

    :cond_65
    const/16 v0, 0x39

    goto/16 :goto_6

    :sswitch_64
    const-string v0, "QX1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_5

    :cond_66
    const/16 v0, 0x38

    goto/16 :goto_6

    :sswitch_65
    const-string v0, "PLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_5

    :cond_67
    const/16 v0, 0x37

    goto/16 :goto_6

    :sswitch_66
    const-string v0, "P85"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_5

    :cond_68
    const/16 v0, 0x36

    goto/16 :goto_6

    :sswitch_67
    const-string v0, "MX6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_5

    :cond_69
    const/16 v0, 0x35

    goto/16 :goto_6

    :sswitch_68
    const-string v0, "M5c"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_5

    :cond_6a
    const/16 v0, 0x34

    goto/16 :goto_6

    :sswitch_69
    const-string v0, "M04"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_5

    :cond_6b
    const/16 v0, 0x33

    goto/16 :goto_6

    :sswitch_6a
    const-string v0, "JGZ"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_5

    :cond_6c
    const/16 v0, 0x32

    goto/16 :goto_6

    :sswitch_6b
    const-string v0, "mh"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_5

    :cond_6d
    const/16 v0, 0x31

    goto/16 :goto_6

    :sswitch_6c
    const-string v0, "b5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_5

    :cond_6e
    const/16 v0, 0x30

    goto/16 :goto_6

    :sswitch_6d
    const-string v0, "V5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_5

    :cond_6f
    const/16 v0, 0x2f

    goto/16 :goto_6

    :sswitch_6e
    const-string v0, "V1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_5

    :cond_70
    const/16 v0, 0x2e

    goto/16 :goto_6

    :sswitch_6f
    const-string v0, "Q5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_5

    :cond_71
    const/16 v0, 0x2d

    goto/16 :goto_6

    :sswitch_70
    const-string v0, "C1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_5

    :cond_72
    const/16 v0, 0x2c

    goto/16 :goto_6

    :sswitch_71
    const-string v0, "woods_fn"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_5

    :cond_73
    const/16 v0, 0x2b

    goto/16 :goto_6

    :sswitch_72
    const-string v0, "ELUGA_A3_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_5

    :cond_74
    const/16 v0, 0x2a

    goto/16 :goto_6

    :sswitch_73
    const-string v0, "Z12_PRO"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_5

    :cond_75
    const/16 v0, 0x29

    goto/16 :goto_6

    :sswitch_74
    const-string v0, "BLACK-1X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_5

    :cond_76
    const/16 v0, 0x28

    goto/16 :goto_6

    :sswitch_75
    const-string v0, "taido_row"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_5

    :cond_77
    const/16 v0, 0x27

    goto/16 :goto_6

    :sswitch_76
    const-string v0, "Pixi4-7_3G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_5

    :cond_78
    const/16 v0, 0x26

    goto/16 :goto_6

    :sswitch_77
    const-string v0, "GIONEE_GBL7360"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_5

    :cond_79
    const/16 v0, 0x25

    goto/16 :goto_6

    :sswitch_78
    const-string v0, "GiONEE_CBL7513"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_5

    :cond_7a
    const/16 v0, 0x24

    goto/16 :goto_6

    :sswitch_79
    const-string v0, "OnePlus5T"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_5

    :cond_7b
    const/16 v0, 0x23

    goto/16 :goto_6

    :sswitch_7a
    const-string v0, "whyred"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_5

    :cond_7c
    const/16 v0, 0x22

    goto/16 :goto_6

    :sswitch_7b
    const-string v0, "watson"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_5

    :cond_7d
    const/16 v0, 0x21

    goto/16 :goto_6

    :sswitch_7c
    const-string v0, "SVP-DTV15"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_5

    :cond_7e
    const/16 v0, 0x20

    goto/16 :goto_6

    :sswitch_7d
    const-string v0, "A7000-a"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_5

    :cond_7f
    const/16 v0, 0x1f

    goto/16 :goto_6

    :sswitch_7e
    const-string v0, "nicklaus_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_5

    :cond_80
    const/16 v0, 0x1e

    goto/16 :goto_6

    :sswitch_7f
    const-string v0, "tcl_eu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_5

    :cond_81
    const/16 v0, 0x1d

    goto/16 :goto_6

    :sswitch_80
    const-string v0, "ELUGA_Ray_X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_5

    :cond_82
    move v0, v12

    goto/16 :goto_6

    :sswitch_81
    const-string v0, "s905x018"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_5

    :cond_83
    move v0, v2

    goto/16 :goto_6

    :sswitch_82
    const-string v1, "A10-70L"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    goto/16 :goto_5

    :sswitch_83
    const-string v0, "A10-70F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_5

    :cond_84
    const/16 v0, 0x19

    goto/16 :goto_6

    :sswitch_84
    const-string v0, "namath"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_5

    :cond_85
    const/16 v0, 0x18

    goto/16 :goto_6

    :sswitch_85
    const-string v0, "Slate_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_5

    :cond_86
    const/16 v0, 0x17

    goto/16 :goto_6

    :sswitch_86
    const-string v0, "iris60"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_5

    :cond_87
    const/16 v0, 0x16

    goto/16 :goto_6

    :sswitch_87
    const-string v0, "BRAVIA_ATV2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_5

    :cond_88
    const/16 v0, 0x15

    goto/16 :goto_6

    :sswitch_88
    const-string v0, "GiONEE_GBL7319"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_5

    :cond_89
    const/16 v0, 0x14

    goto/16 :goto_6

    :sswitch_89
    const-string v0, "panell_dt"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_5

    :cond_8a
    const/16 v0, 0x13

    goto/16 :goto_6

    :sswitch_8a
    const-string v0, "panell_ds"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_5

    :cond_8b
    const/16 v0, 0x12

    goto/16 :goto_6

    :sswitch_8b
    const-string v0, "panell_dl"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_5

    :cond_8c
    const/16 v0, 0x11

    goto/16 :goto_6

    :sswitch_8c
    const-string v0, "vernee_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_5

    :cond_8d
    const/16 v0, 0x10

    goto/16 :goto_6

    :sswitch_8d
    const-string v0, "pacificrim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_5

    :cond_8e
    const/16 v0, 0xf

    goto/16 :goto_6

    :sswitch_8e
    const-string v0, "Phantom6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_5

    :cond_8f
    const/16 v0, 0xe

    goto/16 :goto_6

    :sswitch_8f
    const-string v0, "ComioS1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_5

    :cond_90
    const/16 v0, 0xd

    goto/16 :goto_6

    :sswitch_90
    const-string v0, "XT1663"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_5

    :cond_91
    const/16 v0, 0xc

    goto/16 :goto_6

    :sswitch_91
    const-string v0, "RAIJIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_5

    :cond_92
    const/16 v0, 0xb

    goto/16 :goto_6

    :sswitch_92
    const-string v0, "AquaPowerM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_5

    :cond_93
    const/16 v0, 0xa

    goto/16 :goto_6

    :sswitch_93
    const-string v0, "PGN611"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_5

    :cond_94
    const/16 v0, 0x9

    goto/16 :goto_6

    :sswitch_94
    const-string v0, "PGN610"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_5

    :cond_95
    move v0, v1

    goto/16 :goto_6

    :sswitch_95
    const-string v0, "PGN528"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_5

    :cond_96
    move v0, v3

    goto :goto_6

    :sswitch_96
    const-string v0, "NX573J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_5

    :cond_97
    move v0, v4

    goto :goto_6

    :sswitch_97
    const-string v0, "NX541J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_5

    :cond_98
    move v0, v5

    goto :goto_6

    :sswitch_98
    const-string v0, "CP8676_I02"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_5

    :cond_99
    move v0, v6

    goto :goto_6

    :sswitch_99
    const-string v0, "K50a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_5

    :cond_9a
    move v0, v7

    goto :goto_6

    :sswitch_9a
    const-string v0, "GIONEE_SWW1631"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_5

    :cond_9b
    move v0, v8

    goto :goto_6

    :sswitch_9b
    const-string v0, "GIONEE_SWW1627"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_5

    :cond_9c
    move v0, v13

    goto :goto_6

    :sswitch_9c
    const-string v0, "GIONEE_SWW1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_5

    :cond_9d
    move v0, v10

    :cond_9e
    :goto_6
    packed-switch v0, :pswitch_data_2

    .line 6
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const-string v0, "JSN-L21"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_7

    :cond_9f
    :pswitch_1
    return v13

    :cond_a0
    :goto_7
    return v10

    :pswitch_2
    return v13

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static V1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "video/hevc"

    .line 3
    .line 4
    const-string v2, "video/avc"

    .line 5
    .line 6
    const-string v3, "video/av01"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    iget v6, p1, Lio/bidmachine/media3/common/a;->v:I

    .line 11
    .line 12
    iget v7, p1, Lio/bidmachine/media3/common/a;->w:I

    .line 13
    .line 14
    const/4 v8, -0x1

    .line 15
    if-eq v6, v8, :cond_e

    .line 16
    .line 17
    if-ne v7, v8, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-object v9, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v9}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    check-cast v9, Ljava/lang/String;

    .line 28
    .line 29
    const-string v10, "video/dolby-vision"

    .line 30
    .line 31
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    if-eqz v10, :cond_4

    .line 36
    .line 37
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Lio/bidmachine/media3/common/a;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/16 v9, 0x200

    .line 52
    .line 53
    if-eq p1, v9, :cond_2

    .line 54
    .line 55
    if-eq p1, v4, :cond_2

    .line 56
    .line 57
    if-ne p1, v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/16 v9, 0x400

    .line 61
    .line 62
    if-ne p1, v9, :cond_3

    .line 63
    .line 64
    move-object v9, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    move-object v9, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v9, v1

    .line 69
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sparse-switch p1, :sswitch_data_0

    .line 77
    .line 78
    .line 79
    :goto_2
    move v4, v8

    .line 80
    goto :goto_3

    .line 81
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 82
    .line 83
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const/4 v4, 0x6

    .line 91
    goto :goto_3

    .line 92
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 93
    .line 94
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    const/4 v4, 0x5

    .line 102
    goto :goto_3

    .line 103
    :sswitch_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move v4, v0

    .line 111
    goto :goto_3

    .line 112
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 113
    .line 114
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    const/4 v4, 0x3

    .line 122
    goto :goto_3

    .line 123
    :sswitch_4
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_9

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_9
    move v4, v5

    .line 131
    goto :goto_3

    .line 132
    :sswitch_5
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_b

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 140
    .line 141
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_a

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    const/4 v4, 0x0

    .line 149
    :cond_b
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 150
    .line 151
    .line 152
    return v8

    .line 153
    :pswitch_0
    mul-int/2addr v6, v7

    .line 154
    invoke-static {v6, v0}, Lio/bidmachine/media3/exoplayer/video/h;->a2(II)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    return p0

    .line 159
    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "BRAVIA 4K 2015"

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_d

    .line 168
    .line 169
    const-string v0, "Amazon"

    .line 170
    .line 171
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_c

    .line 178
    .line 179
    const-string v0, "KFSOWI"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_d

    .line 186
    .line 187
    const-string v0, "AFTS"

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/j;->g:Z

    .line 196
    .line 197
    if-eqz p0, :cond_c

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    const/16 p0, 0x10

    .line 201
    .line 202
    invoke-static {v6, p0}, Lcn/m0;->k(II)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-static {v7, p0}, Lcn/m0;->k(II)I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    mul-int/2addr p1, p0

    .line 211
    mul-int/lit16 p1, p1, 0x100

    .line 212
    .line 213
    invoke-static {p1, v5}, Lio/bidmachine/media3/exoplayer/video/h;->a2(II)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    :cond_d
    :goto_4
    return v8

    .line 219
    :pswitch_2
    mul-int/2addr v6, v7

    .line 220
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/video/h;->a2(II)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    const/high16 p1, 0x200000

    .line 225
    .line 226
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    return p0

    .line 231
    :pswitch_3
    mul-int/2addr v6, v7

    .line 232
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/video/h;->a2(II)I

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    return p0

    .line 237
    :cond_e
    :goto_5
    return v8

    .line 238
    nop

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static W1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)Landroid/graphics/Point;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p1, Lio/bidmachine/media3/common/a;->w:I

    .line 2
    .line 3
    iget v1, p1, Lio/bidmachine/media3/common/a;->v:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v2

    .line 11
    :goto_0
    if-eqz v3, :cond_1

    .line 12
    .line 13
    move v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v4, v1

    .line 16
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_2
    int-to-float v1, v0

    .line 20
    int-to-float v5, v4

    .line 21
    div-float/2addr v1, v5

    .line 22
    sget-object v5, Lio/bidmachine/media3/exoplayer/video/h;->u1:[I

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    :goto_2
    const/4 v7, 0x0

    .line 26
    if-ge v2, v6, :cond_7

    .line 27
    .line 28
    aget v8, v5, v2

    .line 29
    .line 30
    int-to-float v9, v8

    .line 31
    mul-float/2addr v9, v1

    .line 32
    float-to-int v9, v9

    .line 33
    if-le v8, v4, :cond_7

    .line 34
    .line 35
    if-gt v9, v0, :cond_3

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :cond_3
    if-eqz v3, :cond_4

    .line 39
    .line 40
    move v7, v9

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    move v7, v8

    .line 43
    :goto_3
    if-eqz v3, :cond_5

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_5
    move v8, v9

    .line 47
    :goto_4
    invoke-virtual {p0, v7, v8}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->c(II)Landroid/graphics/Point;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v8, p1, Lio/bidmachine/media3/common/a;->x:F

    .line 52
    .line 53
    if-eqz v7, :cond_6

    .line 54
    .line 55
    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    float-to-double v11, v8

    .line 60
    invoke-virtual {p0, v9, v10, v11, v12}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->u(IID)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_6

    .line 65
    .line 66
    return-object v7

    .line 67
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_7
    :goto_5
    return-object v7
.end method

.method private static Y1(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/exoplayer/mediacodec/l;",
            "Lio/bidmachine/media3/common/a;",
            "ZZ)",
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
    iget-object v0, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

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
    sget v1, Lcn/m0;->a:I

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    const-string v1, "video/dolby-vision"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/h$c;->a(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method protected static Z1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I
    .locals 3

    .line 1
    iget v0, p1, Lio/bidmachine/media3/common/a;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object p0, p1, Lio/bidmachine/media3/common/a;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    if-ge v0, p0, :cond_0

    .line 15
    .line 16
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->r:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, [B

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p0, p1, Lio/bidmachine/media3/common/a;->p:I

    .line 30
    .line 31
    add-int/2addr p0, v1

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->V1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method private static a2(II)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    div-int/2addr p0, p1

    .line 6
    return p0
.end method

.method private c2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Landroid/view/Surface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->a()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->G2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->H2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->a:Z

    .line 35
    .line 36
    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->g:Z

    .line 37
    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->u2()V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 48
    .line 49
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->g:Z

    .line 50
    .line 51
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->c(Landroid/content/Context;Z)Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 56
    .line 57
    :cond_4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 58
    .line 59
    return-object p1
.end method

.method private d2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->G2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->H2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    return p1
.end method

.method private e2(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->H()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private f2(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lfn/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 16
    .line 17
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-wide v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 28
    .line 29
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sub-long/2addr v2, v4

    .line 34
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 35
    .line 36
    sub-long/2addr v4, v2

    .line 37
    const-wide/32 v2, 0x186a0

    .line 38
    .line 39
    .line 40
    cmp-long p1, v4, v2

    .line 41
    .line 42
    if-gtz p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :cond_3
    :goto_0
    return v1
.end method

.method private h2()V
    .locals 6

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcn/h;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->b1:J

    .line 14
    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 18
    .line 19
    iget v5, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5, v2, v3}, Lio/bidmachine/media3/exoplayer/video/p$a;->n(IJ)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 26
    .line 27
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->b1:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private i2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->q2()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private j2()V
    .locals 4

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->g1:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 6
    .line 7
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->f1:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/video/p$a;->B(JI)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->f1:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->g1:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private k2(Lzm/i0;)V
    .locals 1

    .line 1
    sget-object v0, Lzm/i0;->e:Lzm/i0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lzm/i0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lzm/i0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->D(Lzm/i0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private l2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->Y0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/p$a;->A(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private m2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/p$a;->D(Lzm/i0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private n2(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcn/m0;->H0(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "allow-frame-drop"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private o2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget v0, Lcn/m0;->a:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/h$f;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/video/h$f;-><init>(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/mediacodec/h;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->n1:Lio/bidmachine/media3/exoplayer/video/h$f;

    .line 25
    .line 26
    const/16 v2, 0x21

    .line 27
    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "tunnel-peek"

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->a(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method private p2(JJLio/bidmachine/media3/common/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->o1:Lyn/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0()Landroid/media/MediaFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    move-wide v1, p1

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-interface/range {v0 .. v6}, Lyn/f;->c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private q2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/p$a;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->Y0:Z

    .line 10
    .line 11
    return-void
.end method

.method private s2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJLio/bidmachine/media3/common/a;)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;->g()J

    .line 5
    .line 6
    .line 7
    move-result-wide v8

    .line 8
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;->f()J

    .line 11
    .line 12
    .line 13
    move-result-wide v10

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/h;->F2()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/video/h;->h1:J

    .line 21
    .line 22
    cmp-long v0, v8, v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p4}, Lio/bidmachine/media3/exoplayer/video/h;->I2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, p0

    .line 31
    move-wide v1, p3

    .line 32
    move-wide v3, v8

    .line 33
    move-object/from16 v5, p5

    .line 34
    .line 35
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/h;->p2(JJLio/bidmachine/media3/common/a;)V

    .line 36
    .line 37
    .line 38
    move-object v1, p1

    .line 39
    move v2, p2

    .line 40
    move-wide v3, p3

    .line 41
    move-wide v5, v8

    .line 42
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/h;->w2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, v10, v11}, Lio/bidmachine/media3/exoplayer/video/h;->O2(J)V

    .line 46
    .line 47
    .line 48
    iput-wide v8, v7, Lio/bidmachine/media3/exoplayer/video/h;->h1:J

    .line 49
    .line 50
    return-void
.end method

.method private u2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->W0:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private v2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/video/h;->w2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static x2(Lio/bidmachine/media3/exoplayer/mediacodec/h;[B)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "hdr10-plus-info"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->a(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private y2(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 11
    .line 12
    if-eq v0, p1, :cond_8

    .line 13
    .line 14
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/n;->q(Landroid/view/Surface;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->Y0:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->getState()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 51
    .line 52
    invoke-direct {p0, v3}, Lio/bidmachine/media3/exoplayer/video/h;->d2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sget v5, Lcn/m0;->a:I

    .line 57
    .line 58
    const/16 v6, 0x17

    .line 59
    .line 60
    if-lt v5, v6, :cond_2

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->Q0:Z

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    invoke-direct {p0, v3}, Lio/bidmachine/media3/exoplayer/video/h;->c2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Landroid/view/Surface;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/video/h;->z2(Lio/bidmachine/media3/exoplayer/mediacodec/h;Landroid/view/Surface;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->m2()V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 89
    .line 90
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->v()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    const/4 p1, 0x2

    .line 98
    if-ne v0, p1, :cond_7

    .line 99
    .line 100
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->y(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/n;->e(Z)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_3
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->o2()V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    if-eqz p1, :cond_9

    .line 119
    .line 120
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->m2()V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->l2()V

    .line 124
    .line 125
    .line 126
    :cond_9
    :goto_4
    return-void
.end method

.method private z2(Lio/bidmachine/media3/exoplayer/mediacodec/h;Landroid/view/Surface;)V
    .locals 2
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->A2(Lio/bidmachine/media3/exoplayer/mediacodec/h;Landroid/view/Surface;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p2, 0x23

    .line 14
    .line 15
    if-lt v0, p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->Q1(Lio/bidmachine/media3/exoplayer/mediacodec/h;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method protected A0(FLio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)F
    .locals 5

    .line 1
    array-length p2, p3

    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v1, p2, :cond_1

    .line 7
    .line 8
    aget-object v3, p3, v1

    .line 9
    .line 10
    iget v3, v3, Lio/bidmachine/media3/common/a;->x:F

    .line 11
    .line 12
    cmpl-float v4, v3, v0

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float p2, v2, v0

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    mul-float v0, v2, p1

    .line 29
    .line 30
    :goto_1
    return v0
.end method

.method protected A2(Lio/bidmachine/media3/exoplayer/mediacodec/h;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->j(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public B2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->U0:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->o(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected C0(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;Z)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/video/h;->Y1(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;ZZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Lio/bidmachine/media3/common/a;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected C2(JJZ)Z
    .locals 0

    .line 1
    const-wide/32 p3, -0x7a120

    .line 2
    .line 3
    .line 4
    cmp-long p1, p1, p3

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method protected D1(Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->J2(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/l;Lio/bidmachine/media3/common/a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected D2(JJZ)Z
    .locals 0

    .line 1
    const-wide/16 p3, -0x7530

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    if-nez p5, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected E2(JJ)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x7530

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    const-wide/32 p1, 0x186a0

    .line 8
    .line 9
    .line 10
    cmp-long p1, p3, p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method protected F0(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;Landroid/media/MediaCrypto;F)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;
    .locals 7
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->J()[Lio/bidmachine/media3/common/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/video/h;->X1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/h;->P0:Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 12
    .line 13
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/video/h;->J0:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->m1:I

    .line 20
    .line 21
    :goto_0
    move v6, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    move-object v0, p0

    .line 26
    move-object v1, p2

    .line 27
    move v4, p4

    .line 28
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/h;->b2(Lio/bidmachine/media3/common/a;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/video/h$e;FZI)Landroid/media/MediaFormat;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->c2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Landroid/view/Surface;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, p4}, Lio/bidmachine/media3/exoplayer/video/h;->n2(Landroid/media/MediaFormat;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p4, p2, v0, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->b(Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/a;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lio/bidmachine/media3/exoplayer/mediacodec/h$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method protected F2()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected G2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->k:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected H2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/h;->P1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->g:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->b(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method protected I2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V
    .locals 0

    .line 1
    const-string p3, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->g(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcn/i0;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 14
    .line 15
    iget p2, p1, Lgn/b;->f:I

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    iput p2, p1, Lgn/b;->f:I

    .line 20
    .line 21
    return-void
.end method

.method protected K0(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->R0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->g:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x7

    .line 19
    if-lt v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    const/16 v6, -0x4b

    .line 46
    .line 47
    if-ne v0, v6, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x3c

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne v2, v0, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    if-ne v3, v1, :cond_2

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    if-ne v4, v0, :cond_2

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 84
    .line 85
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/video/h;->x2(Lio/bidmachine/media3/exoplayer/mediacodec/h;[B)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method protected L2(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 2
    .line 3
    iget v1, v0, Lgn/b;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lgn/b;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, Lgn/b;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, Lgn/b;->g:I

    .line 13
    .line 14
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 18
    .line 19
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->d1:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->d1:I

    .line 23
    .line 24
    iget p1, v0, Lgn/b;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Lgn/b;->i:I

    .line 31
    .line 32
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->I0:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->h2()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method protected N()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->j1:Lzm/i0;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->q1:J

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->u()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/n;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->o2()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->Y0:Z

    .line 29
    .line 30
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->n1:Lio/bidmachine/media3/exoplayer/video/h$f;

    .line 31
    .line 32
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 36
    .line 37
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/p$a;->m(Lgn/b;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 43
    .line 44
    sget-object v1, Lzm/i0;->e:Lzm/i0;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/p$a;->D(Lzm/i0;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 52
    .line 53
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/video/p$a;->m(Lgn/b;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 59
    .line 60
    sget-object v2, Lzm/i0;->e:Lzm/i0;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/video/p$a;->D(Lzm/i0;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method protected O(ZZ)V
    .locals 4
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
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->E()Lgn/g0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean p1, p1, Lgn/g0;->b:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->m1:I

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v2, v1

    .line 22
    :goto_1
    invoke-static {v2}, Lcn/a;->g(Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 26
    .line 27
    if-eq v2, p1, :cond_2

    .line 28
    .line 29
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 35
    .line 36
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/video/p$a;->o(Lgn/b;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->T0:Z

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->U0:Ljava/util/List;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/i$b;

    .line 54
    .line 55
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->F0:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 58
    .line 59
    invoke-direct {p1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/i$b;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/n;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/video/i$b;->i(Lcn/h;)Lio/bidmachine/media3/exoplayer/video/i$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->h()Lio/bidmachine/media3/exoplayer/video/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/video/i;->P(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/i;->C(I)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 82
    .line 83
    :cond_3
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->T0:Z

    .line 84
    .line 85
    :cond_4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 86
    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/h$a;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/h$a;-><init>(Lio/bidmachine/media3/exoplayer/video/h;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/google/common/util/concurrent/f;->a()Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->w(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->o1:Lyn/f;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 106
    .line 107
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->j(Lyn/f;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->X0:Lcn/d0;

    .line 115
    .line 116
    sget-object v0, Lcn/d0;->c:Lcn/d0;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcn/d0;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 125
    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 127
    .line 128
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->X0:Lcn/d0;

    .line 129
    .line 130
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->x(Landroid/view/Surface;Lcn/d0;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 134
    .line 135
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->a1:I

    .line 136
    .line 137
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->k(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 141
    .line 142
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0()F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->r(F)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->U0:Ljava/util/List;

    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 154
    .line 155
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->o(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 159
    .line 160
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->g(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()Lio/bidmachine/media3/exoplayer/h2$a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 170
    .line 171
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->l(Lio/bidmachine/media3/exoplayer/h2$a;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 176
    .line 177
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/n;->o(Lcn/h;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/n;->h(Z)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_2
    return-void
.end method

.method protected O1(Lio/bidmachine/media3/exoplayer/video/VideoSink;ILio/bidmachine/media3/common/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->U0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {p1, p2, p3, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->f(ILio/bidmachine/media3/common/a;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected O2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgn/b;->a(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->f1:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->f1:J

    .line 10
    .line 11
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->g1:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->g1:I

    .line 16
    .line 17
    return-void
.end method

.method protected P()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/h;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected P1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "OMX.google"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const-class p1, Lio/bidmachine/media3/exoplayer/video/h;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    sget-boolean v0, Lio/bidmachine/media3/exoplayer/video/h;->v1:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/h;->T1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Lio/bidmachine/media3/exoplayer/video/h;->w1:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lio/bidmachine/media3/exoplayer/video/h;->v1:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-boolean p1, Lio/bidmachine/media3/exoplayer/video/h;->w1:Z

    .line 32
    .line 33
    return p1

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method protected Q(JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->b(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/h;->U1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-interface {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->m(JJ)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->r1:Z

    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(JZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/n;->m()V

    .line 36
    .line 37
    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->y(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/n;->e(Z)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->o2()V

    .line 55
    .line 56
    .line 57
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->d1:I

    .line 58
    .line 59
    return-void
.end method

.method protected Q1(Lio/bidmachine/media3/exoplayer/mediacodec/h;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x23
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected R()V
    .locals 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/h;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->G0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected S1(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V
    .locals 0

    .line 1
    const-string p3, "dropVideoBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->g(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcn/i0;->b()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p3, p1}, Lio/bidmachine/media3/exoplayer/video/h;->L2(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected T()V
    .locals 4

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->T0:Z

    .line 11
    .line 12
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 13
    .line 14
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->u2()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v3

    .line 19
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->T0:Z

    .line 20
    .line 21
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 22
    .line 23
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->u2()V

    .line 24
    .line 25
    .line 26
    throw v3
.end method

.method protected U()V
    .locals 3

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->c1:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcn/h;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->b1:J

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->f1:J

    .line 20
    .line 21
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->g1:I

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->s()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->k()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method protected U1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 2
    .line 3
    neg-long v0, v0

    .line 4
    return-wide v0
.end method

.method protected V()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->h2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->j2()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->e()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->l()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected W([Lio/bidmachine/media3/common/a;JJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->W([Lio/bidmachine/media3/common/a;JJLio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 2
    .line 3
    .line 4
    iget-wide p4, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p1, p4, v0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->p1:J

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p6}, Lio/bidmachine/media3/exoplayer/video/h;->N2(Lio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected W0(Lio/bidmachine/media3/common/a;)Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->i(Lio/bidmachine/media3/common/a;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/16 v1, 0x1b58

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/h;->B(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method protected X0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcn/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->C(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected X1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;[Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/video/h$e;
    .locals 12

    .line 1
    iget v0, p2, Lio/bidmachine/media3/common/a;->v:I

    .line 2
    .line 3
    iget v1, p2, Lio/bidmachine/media3/common/a;->w:I

    .line 4
    .line 5
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->Z1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    array-length v3, p3

    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v3, v5, :cond_1

    .line 13
    .line 14
    if-eq v2, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->V1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq p1, v4, :cond_0

    .line 21
    .line 22
    int-to-float p2, v2

    .line 23
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 24
    .line 25
    mul-float/2addr p2, p3

    .line 26
    float-to-int p2, p2

    .line 27
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_0
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 32
    .line 33
    invoke-direct {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/h$e;-><init>(III)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    array-length v3, p3

    .line 38
    const/4 v6, 0x0

    .line 39
    move v7, v6

    .line 40
    move v8, v7

    .line 41
    :goto_0
    if-ge v7, v3, :cond_6

    .line 42
    .line 43
    aget-object v9, p3, v7

    .line 44
    .line 45
    iget-object v10, p2, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v10, v9, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-object v10, p2, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/a$b;->T(Lzm/g;)Lio/bidmachine/media3/common/a$b;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    :cond_2
    invoke-virtual {p1, p2, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->e(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;)Lgn/c;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget v10, v10, Lgn/c;->d:I

    .line 72
    .line 73
    if-eqz v10, :cond_5

    .line 74
    .line 75
    iget v10, v9, Lio/bidmachine/media3/common/a;->v:I

    .line 76
    .line 77
    if-eq v10, v4, :cond_4

    .line 78
    .line 79
    iget v11, v9, Lio/bidmachine/media3/common/a;->w:I

    .line 80
    .line 81
    if-ne v11, v4, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v11, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    move v11, v5

    .line 87
    :goto_2
    or-int/2addr v8, v11

    .line 88
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget v10, v9, Lio/bidmachine/media3/common/a;->w:I

    .line 93
    .line 94
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {p1, v9}, Lio/bidmachine/media3/exoplayer/video/h;->Z1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    if-eqz v8, :cond_7

    .line 110
    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "Resolutions unknown. Codec max resolution: "

    .line 117
    .line 118
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, "x"

    .line 125
    .line 126
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const-string v4, "MediaCodecVideoRenderer"

    .line 137
    .line 138
    invoke-static {v4, p3}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->W1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)Landroid/graphics/Point;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    if-eqz p3, :cond_7

    .line 146
    .line 147
    iget v5, p3, Landroid/graphics/Point;->x:I

    .line 148
    .line 149
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 154
    .line 155
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->V1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string p2, "Codec max resolution adjusted to: "

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v4, p1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 210
    .line 211
    invoke-direct {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/h$e;-><init>(III)V

    .line 212
    .line 213
    .line 214
    return-object p1
.end method

.method protected Y0(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/h$a;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p3

    .line 5
    move-wide v4, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/p$a;->k(Ljava/lang/String;JJ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->P1(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->Q0:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/j;->p()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->R0:Z

    .line 30
    .line 31
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->o2()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected Z0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/p$a;->l(Ljava/lang/String;)V

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
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1(Lgn/c0;)Lgn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->H0:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 6
    .line 7
    iget-object p1, p1, Lgn/c0;->b:Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/bidmachine/media3/common/a;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Lio/bidmachine/media3/exoplayer/video/p$a;->p(Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method protected b1(Lio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V
    .locals 8
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->Z0:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->setVideoScalingMode(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget p2, p1, Lio/bidmachine/media3/common/a;->v:I

    .line 19
    .line 20
    iget v0, p1, Lio/bidmachine/media3/common/a;->w:I

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v0, "crop-right"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "crop-top"

    .line 33
    .line 34
    const-string v5, "crop-bottom"

    .line 35
    .line 36
    const-string v6, "crop-left"

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v3, v1

    .line 61
    :goto_0
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    sub-int/2addr v0, v6

    .line 72
    add-int/2addr v0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string v0, "width"

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_1
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    sub-int/2addr v3, p2

    .line 91
    add-int/2addr v3, v2

    .line 92
    move p2, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const-string v3, "height"

    .line 95
    .line 96
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :goto_2
    move v7, v0

    .line 101
    move v0, p2

    .line 102
    move p2, v7

    .line 103
    :goto_3
    iget v3, p1, Lio/bidmachine/media3/common/a;->z:F

    .line 104
    .line 105
    iget v4, p1, Lio/bidmachine/media3/common/a;->y:I

    .line 106
    .line 107
    const/16 v5, 0x5a

    .line 108
    .line 109
    if-eq v4, v5, :cond_5

    .line 110
    .line 111
    const/16 v5, 0x10e

    .line 112
    .line 113
    if-ne v4, v5, :cond_6

    .line 114
    .line 115
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    .line 117
    div-float v3, v4, v3

    .line 118
    .line 119
    move v7, v0

    .line 120
    move v0, p2

    .line 121
    move p2, v7

    .line 122
    :cond_6
    new-instance v4, Lzm/i0;

    .line 123
    .line 124
    invoke-direct {v4, p2, v0, v3}, Lzm/i0;-><init>(IIF)V

    .line 125
    .line 126
    .line 127
    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->i1:Lzm/i0;

    .line 128
    .line 129
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/video/h;->r1:Z

    .line 134
    .line 135
    if-eqz v5, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/a$b;->q0(F)Lio/bidmachine/media3/common/a$b;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, v4, v2, p1}, Lio/bidmachine/media3/exoplayer/video/h;->O1(Lio/bidmachine/media3/exoplayer/video/VideoSink;ILio/bidmachine/media3/common/a;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 162
    .line 163
    iget p1, p1, Lio/bidmachine/media3/common/a;->x:F

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/n;->p(F)V

    .line 166
    .line 167
    .line 168
    :goto_4
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->r1:Z

    .line 169
    .line 170
    return-void
.end method

.method protected b2(Lio/bidmachine/media3/common/a;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/video/h$e;FZI)Landroid/media/MediaFormat;
    .locals 2
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
    iget p2, p1, Lio/bidmachine/media3/common/a;->v:I

    .line 12
    .line 13
    const-string v1, "width"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string p2, "height"

    .line 19
    .line 20
    iget v1, p1, Lio/bidmachine/media3/common/a;->w:I

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
    const-string p2, "frame-rate"

    .line 31
    .line 32
    iget v1, p1, Lio/bidmachine/media3/common/a;->x:F

    .line 33
    .line 34
    invoke-static {v0, p2, v1}, Lcn/u;->c(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 35
    .line 36
    .line 37
    const-string p2, "rotation-degrees"

    .line 38
    .line 39
    iget v1, p1, Lio/bidmachine/media3/common/a;->y:I

    .line 40
    .line 41
    invoke-static {v0, p2, v1}, Lcn/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p1, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 45
    .line 46
    invoke-static {v0, p2}, Lcn/u;->b(Landroid/media/MediaFormat;Lzm/g;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "video/dolby-vision"

    .line 50
    .line 51
    iget-object v1, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Lio/bidmachine/media3/common/a;)Landroid/util/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string p2, "profile"

    .line 74
    .line 75
    invoke-static {v0, p2, p1}, Lcn/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget p1, p3, Lio/bidmachine/media3/exoplayer/video/h$e;->a:I

    .line 79
    .line 80
    const-string p2, "max-width"

    .line 81
    .line 82
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string p1, "max-height"

    .line 86
    .line 87
    iget p2, p3, Lio/bidmachine/media3/exoplayer/video/h$e;->b:I

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string p1, "max-input-size"

    .line 93
    .line 94
    iget p2, p3, Lio/bidmachine/media3/exoplayer/video/h$e;->c:I

    .line 95
    .line 96
    invoke-static {v0, p1, p2}, Lcn/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sget p1, Lcn/m0;->a:I

    .line 100
    .line 101
    const/16 p2, 0x17

    .line 102
    .line 103
    const/4 p3, 0x0

    .line 104
    if-lt p1, p2, :cond_1

    .line 105
    .line 106
    const-string p2, "priority"

    .line 107
    .line 108
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const/high16 p2, -0x40800000    # -1.0f

    .line 112
    .line 113
    cmpl-float p2, p4, p2

    .line 114
    .line 115
    if-eqz p2, :cond_1

    .line 116
    .line 117
    const-string p2, "operating-rate"

    .line 118
    .line 119
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 120
    .line 121
    .line 122
    :cond_1
    const/4 p2, 0x1

    .line 123
    if-eqz p5, :cond_2

    .line 124
    .line 125
    const-string p4, "no-post-process"

    .line 126
    .line 127
    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string p4, "auto-frc"

    .line 131
    .line 132
    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    :cond_2
    if-eqz p6, :cond_3

    .line 136
    .line 137
    const-string p4, "tunneled-playback"

    .line 138
    .line 139
    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    const-string p2, "audio-session-id"

    .line 143
    .line 144
    invoke-virtual {v0, p2, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    :cond_3
    const/16 p2, 0x23

    .line 148
    .line 149
    if-lt p1, p2, :cond_4

    .line 150
    .line 151
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->k1:I

    .line 152
    .line 153
    neg-int p1, p1

    .line 154
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const-string p2, "importance"

    .line 159
    .line 160
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-object v0
.end method

.method protected d1(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1(J)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 13
    .line 14
    :cond_0
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
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->P0:Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 8
    .line 9
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 14
    .line 15
    iget v3, p3, Lio/bidmachine/media3/common/a;->v:I

    .line 16
    .line 17
    iget v4, v2, Lio/bidmachine/media3/exoplayer/video/h$e;->a:I

    .line 18
    .line 19
    if-gt v3, v4, :cond_0

    .line 20
    .line 21
    iget v3, p3, Lio/bidmachine/media3/common/a;->w:I

    .line 22
    .line 23
    iget v4, v2, Lio/bidmachine/media3/exoplayer/video/h$e;->b:I

    .line 24
    .line 25
    if-le v3, v4, :cond_1

    .line 26
    .line 27
    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 28
    .line 29
    :cond_1
    invoke-static {p1, p3}, Lio/bidmachine/media3/exoplayer/video/h;->Z1(Lio/bidmachine/media3/exoplayer/mediacodec/j;Lio/bidmachine/media3/common/a;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v2, v2, Lio/bidmachine/media3/exoplayer/video/h$e;->c:I

    .line 34
    .line 35
    if-le v3, v2, :cond_2

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x40

    .line 38
    .line 39
    :cond_2
    move v7, v1

    .line 40
    new-instance v1, Lgn/c;

    .line 41
    .line 42
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    :goto_0
    move v6, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget p1, v0, Lgn/c;->d:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    move-object v2, v1

    .line 53
    move-object v4, p2

    .line 54
    move-object v5, p3

    .line 55
    invoke-direct/range {v2 .. v7}, Lgn/c;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;II)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method protected e1()V
    .locals 5

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->d()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/h;->U1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->m(JJ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->j()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->r1:Z

    .line 32
    .line 33
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->o2()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected f1(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 14
    .line 15
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/j;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "video/av01"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/a;->b(Ljava/nio/ByteBuffer;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 36
    .line 37
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 46
    .line 47
    :cond_1
    sget v1, Lcn/m0;->a:I

    .line 48
    .line 49
    const/16 v2, 0x17

    .line 50
    .line 51
    if-ge v1, v2, :cond_2

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/video/h;->r2(J)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method protected g1(Lio/bidmachine/media3/exoplayer/h2$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->l(Lio/bidmachine/media3/exoplayer/h2$a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected g2(JZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/h;->a0(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 13
    .line 14
    iget v1, p3, Lgn/b;->d:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    iput v1, p3, Lgn/b;->d:I

    .line 18
    .line 19
    iget p1, p3, Lgn/b;->f:I

    .line 20
    .line 21
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 22
    .line 23
    add-int/2addr p1, v2

    .line 24
    iput p1, p3, Lgn/b;->f:I

    .line 25
    .line 26
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr v1, p1

    .line 33
    iput v1, p3, Lgn/b;->d:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 37
    .line 38
    iget v1, p3, Lgn/b;->j:I

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    iput v1, p3, Lgn/b;->j:I

    .line 42
    .line 43
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/util/PriorityQueue;->size()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    add-int/2addr p1, p3

    .line 50
    iget p3, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/media3/exoplayer/video/h;->L2(II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->b(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->h()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n;->a()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
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
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-eq p1, v1, :cond_8

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq p1, v1, :cond_7

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_6

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_4

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq p1, v1, :cond_3

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x11

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/video/h;->y2(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/h;

    .line 49
    .line 50
    invoke-virtual {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->handleMessage(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->k1:I

    .line 66
    .line 67
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->K2()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_2
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcn/d0;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcn/d0;->b()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_a

    .line 83
    .line 84
    invoke-virtual {p1}, Lcn/d0;->a()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_a

    .line 89
    .line 90
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->X0:Lcn/d0;

    .line 91
    .line 92
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 93
    .line 94
    if-eqz p2, :cond_a

    .line 95
    .line 96
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 97
    .line 98
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/Surface;

    .line 103
    .line 104
    invoke-interface {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->x(Landroid/view/Surface;Lcn/d0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/List;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->B2(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->a1:I

    .line 129
    .line 130
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 131
    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->k(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/n;->n(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->Z0:I

    .line 155
    .line 156
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_a

    .line 161
    .line 162
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->Z0:I

    .line 163
    .line 164
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->setVideoScalingMode(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_7
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->m1:I

    .line 179
    .line 180
    if-eq p2, p1, :cond_a

    .line 181
    .line 182
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->m1:I

    .line 183
    .line 184
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1()V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_8
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lyn/f;

    .line 197
    .line 198
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->o1:Lyn/f;

    .line 199
    .line 200
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 201
    .line 202
    if-eqz p2, :cond_a

    .line 203
    .line 204
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->j(Lyn/f;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_9
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/video/h;->y2(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_a
    :goto_0
    return-void
.end method

.method protected i1(JJLio/bidmachine/media3/exoplayer/mediacodec/h;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/a;)Z
    .locals 19
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
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    move-wide/from16 v0, p10

    .line 8
    .line 9
    move/from16 v14, p13

    .line 10
    .line 11
    invoke-static/range {p5 .. p5}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sub-long v4, v0, v4

    .line 19
    .line 20
    invoke-direct {v6, v0, v1}, Lio/bidmachine/media3/exoplayer/video/h;->M2(J)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    const/4 v15, 0x1

    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    if-eqz p12, :cond_0

    .line 29
    .line 30
    if-nez v14, :cond_0

    .line 31
    .line 32
    invoke-virtual {v6, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/h;->I2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 33
    .line 34
    .line 35
    return v15

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/video/h;->U1()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    add-long/2addr v7, v0

    .line 41
    iget-object v9, v6, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 42
    .line 43
    new-instance v10, Lio/bidmachine/media3/exoplayer/video/h$b;

    .line 44
    .line 45
    move-object v0, v10

    .line 46
    move-object/from16 v1, p0

    .line 47
    .line 48
    move-object/from16 v2, p5

    .line 49
    .line 50
    move/from16 v3, p7

    .line 51
    .line 52
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/h$b;-><init>(Lio/bidmachine/media3/exoplayer/video/h;Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v9, v7, v8, v14, v10}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->t(JZLio/bidmachine/media3/exoplayer/video/VideoSink$b;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :cond_1
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0()J

    .line 63
    .line 64
    .line 65
    move-result-wide v16

    .line 66
    iget-object v12, v6, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 67
    .line 68
    move-wide/from16 v8, p10

    .line 69
    .line 70
    move-wide/from16 v10, p1

    .line 71
    .line 72
    move-object v0, v12

    .line 73
    move-wide/from16 v12, p3

    .line 74
    .line 75
    move v1, v15

    .line 76
    move-wide/from16 v14, v16

    .line 77
    .line 78
    move/from16 v16, p12

    .line 79
    .line 80
    move/from16 v17, p13

    .line 81
    .line 82
    move-object/from16 v18, v0

    .line 83
    .line 84
    invoke-virtual/range {v7 .. v18}, Lio/bidmachine/media3/exoplayer/video/n;->c(JJJJZZLio/bidmachine/media3/exoplayer/video/n$a;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    if-eq v0, v1, :cond_6

    .line 91
    .line 92
    const/4 v7, 0x2

    .line 93
    if-eq v0, v7, :cond_5

    .line 94
    .line 95
    const/4 v7, 0x3

    .line 96
    if-eq v0, v7, :cond_4

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    const/4 v1, 0x5

    .line 102
    if-ne v0, v1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 116
    return v0

    .line 117
    :cond_4
    invoke-virtual {v6, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/h;->I2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;->f()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    invoke-virtual {v6, v2, v3}, Lio/bidmachine/media3/exoplayer/video/h;->O2(J)V

    .line 127
    .line 128
    .line 129
    return v1

    .line 130
    :cond_5
    invoke-virtual {v6, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/h;->S1(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJ)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 134
    .line 135
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;->f()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v6, v2, v3}, Lio/bidmachine/media3/exoplayer/video/h;->O2(J)V

    .line 140
    .line 141
    .line 142
    return v1

    .line 143
    :cond_6
    invoke-static/range {p5 .. p5}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 148
    .line 149
    move-object/from16 p1, p0

    .line 150
    .line 151
    move-object/from16 p2, v0

    .line 152
    .line 153
    move/from16 p3, p7

    .line 154
    .line 155
    move-wide/from16 p4, v4

    .line 156
    .line 157
    move-object/from16 p6, p14

    .line 158
    .line 159
    invoke-direct/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/video/h;->t2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJLio/bidmachine/media3/common/a;)V

    .line 160
    .line 161
    .line 162
    return v1

    .line 163
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/h;->D()Lcn/h;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0}, Lcn/h;->nanoTime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    move-object/from16 p8, p0

    .line 172
    .line 173
    move-wide/from16 p9, v4

    .line 174
    .line 175
    move-wide/from16 p11, v7

    .line 176
    .line 177
    move-object/from16 p13, p14

    .line 178
    .line 179
    invoke-direct/range {p8 .. p13}, Lio/bidmachine/media3/exoplayer/video/h;->p2(JJLio/bidmachine/media3/common/a;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 p9, p5

    .line 183
    .line 184
    move/from16 p10, p7

    .line 185
    .line 186
    move-wide/from16 p11, v4

    .line 187
    .line 188
    move-wide/from16 p13, v7

    .line 189
    .line 190
    invoke-direct/range {p8 .. p14}, Lio/bidmachine/media3/exoplayer/video/h;->v2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->L0:Lio/bidmachine/media3/exoplayer/video/n$a;

    .line 194
    .line 195
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/n$a;->f()J

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    invoke-virtual {v6, v2, v3}, Lio/bidmachine/media3/exoplayer/video/h;->O2(J)V

    .line 200
    .line 201
    .line 202
    return v1
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
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isEnded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->p(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()Lio/bidmachine/media3/exoplayer/mediacodec/h;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_2
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/n;->d(Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method protected k0(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/j;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 2
    .param p2    # Lio/bidmachine/media3/exoplayer/mediacodec/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoDecoderException;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/h;->V0:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/j;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public l(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->l(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->r(F)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/h;->K0:Lio/bidmachine/media3/exoplayer/video/n;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/n;->r(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method protected n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected o1()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->o1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->s1:Z

    .line 11
    .line 12
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->e1:I

    .line 13
    .line 14
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/a;->c()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public p(JJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/h;->E2(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected r2(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->H1(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->i1:Lzm/i0;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/video/h;->k2(Lzm/i0;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 10
    .line 11
    iget v1, v0, Lgn/b;->e:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, v0, Lgn/b;->e:I

    .line 16
    .line 17
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->i2()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/h;->d1(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;->a:Lio/bidmachine/media3/common/a;

    .line 11
    .line 12
    const/16 p3, 0x1b59

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/h;->B(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1

    .line 19
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public s(JJZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/video/h;->D2(JJZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected w2(Lio/bidmachine/media3/exoplayer/mediacodec/h;IJJ)V
    .locals 0

    .line 1
    const-string p3, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p5, p6}, Lio/bidmachine/media3/exoplayer/mediacodec/h;->e(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcn/i0;->b()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 13
    .line 14
    iget p2, p1, Lgn/b;->e:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    iput p2, p1, Lgn/b;->e:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->d1:I

    .line 22
    .line 23
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->S0:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->i1:Lzm/i0;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->k2(Lzm/i0;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/h;->i2()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method protected x0(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)I
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->e2(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/16 p1, 0x20

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public y(JJJZZ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    move-wide v7, p3

    .line 3
    iget-wide v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->N0:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->H()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x30d40

    .line 21
    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    cmp-long v0, v7, v0

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-wide v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->N0:J

    .line 29
    .line 30
    cmp-long v0, p1, v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    move v0, v10

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v9

    .line 37
    :goto_0
    iput-boolean v0, v6, Lio/bidmachine/media3/exoplayer/video/h;->s1:Z

    .line 38
    .line 39
    :cond_1
    move-object v0, p0

    .line 40
    move-wide v1, p1

    .line 41
    move-wide/from16 v3, p5

    .line 42
    .line 43
    move/from16 v5, p7

    .line 44
    .line 45
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/h;->C2(JJZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move/from16 v0, p8

    .line 52
    .line 53
    invoke-virtual {p0, p3, p4, v0}, Lio/bidmachine/media3/exoplayer/video/h;->g2(JZ)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    move v9, v10

    .line 60
    :cond_2
    return v9
.end method

.method protected y1(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->f2(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->e2(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->s1:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Lfn/a;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    invoke-virtual {p1}, Lfn/a;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b()V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 47
    .line 48
    iget v0, p1, Lgn/b;->d:I

    .line 49
    .line 50
    add-int/2addr v0, v3

    .line 51
    iput v0, p1, Lgn/b;->d:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->s1:Z

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    iget-wide v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 61
    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 70
    .line 71
    add-int/2addr p1, v3

    .line 72
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 73
    .line 74
    :cond_5
    :goto_0
    return v3

    .line 75
    :cond_6
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 76
    .line 77
    if-eqz v2, :cond_c

    .line 78
    .line 79
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 88
    .line 89
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/mediacodec/j;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string v4, "video/av01"

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_c

    .line 98
    .line 99
    iget-object v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    if-eqz v2, :cond_c

    .line 102
    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    iget v4, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 106
    .line 107
    if-gtz v4, :cond_7

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    move v4, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_8
    :goto_1
    move v4, v3

    .line 113
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/h;->M0:Lio/bidmachine/media3/exoplayer/video/a;

    .line 121
    .line 122
    invoke-virtual {v5, v2, v4}, Lio/bidmachine/media3/exoplayer/video/a;->d(Ljava/nio/ByteBuffer;Z)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/h;->P0:Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 127
    .line 128
    invoke-static {v5}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lio/bidmachine/media3/exoplayer/video/h$e;

    .line 133
    .line 134
    iget v5, v5, Lio/bidmachine/media3/exoplayer/video/h$e;->c:I

    .line 135
    .line 136
    add-int/2addr v5, v4

    .line 137
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-ge v5, v6, :cond_9

    .line 142
    .line 143
    move v5, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_9
    move v5, v1

    .line 146
    :goto_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eq v4, v2, :cond_c

    .line 151
    .line 152
    if-eqz v5, :cond_c

    .line 153
    .line 154
    iget-object v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    .line 164
    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Lgn/b;

    .line 168
    .line 169
    iget v0, p1, Lgn/b;->d:I

    .line 170
    .line 171
    add-int/2addr v0, v3

    .line 172
    iput v0, p1, Lgn/b;->d:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->s1:Z

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->O0:Ljava/util/PriorityQueue;

    .line 180
    .line 181
    iget-wide v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 182
    .line 183
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 191
    .line 192
    add-int/2addr p1, v3

    .line 193
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h;->t1:I

    .line 194
    .line 195
    :cond_b
    :goto_4
    return v3

    .line 196
    :cond_c
    return v1
.end method

.method protected z0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h;->l1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcn/m0;->a:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

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

.method protected z1(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/h;->d2(Lio/bidmachine/media3/exoplayer/mediacodec/j;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
