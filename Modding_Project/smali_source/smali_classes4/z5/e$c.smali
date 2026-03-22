.class public final Lz5/e$c;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:[B

.field public O:I

.field public P:I

.field public Q:I

.field public R:J

.field public S:J

.field public T:Lt5/c0;

.field public U:Z

.field public V:Z

.field private W:Ljava/lang/String;

.field public X:Lt5/b0;

.field public Y:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:I

.field public h:Z

.field public i:[B

.field public j:Lt5/b0$a;

.field public k:[B

.field public l:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:[B

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lz5/e$c;->m:I

    .line 6
    .line 7
    iput v0, p0, Lz5/e$c;->n:I

    .line 8
    .line 9
    iput v0, p0, Lz5/e$c;->o:I

    .line 10
    .line 11
    iput v0, p0, Lz5/e$c;->p:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lz5/e$c;->q:I

    .line 15
    .line 16
    iput v0, p0, Lz5/e$c;->r:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lz5/e$c;->s:F

    .line 20
    .line 21
    iput v2, p0, Lz5/e$c;->t:F

    .line 22
    .line 23
    iput v2, p0, Lz5/e$c;->u:F

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lz5/e$c;->v:[B

    .line 27
    .line 28
    iput v0, p0, Lz5/e$c;->w:I

    .line 29
    .line 30
    iput-boolean v1, p0, Lz5/e$c;->x:Z

    .line 31
    .line 32
    iput v0, p0, Lz5/e$c;->y:I

    .line 33
    .line 34
    iput v0, p0, Lz5/e$c;->z:I

    .line 35
    .line 36
    iput v0, p0, Lz5/e$c;->A:I

    .line 37
    .line 38
    const/16 v1, 0x3e8

    .line 39
    .line 40
    iput v1, p0, Lz5/e$c;->B:I

    .line 41
    .line 42
    const/16 v1, 0xc8

    .line 43
    .line 44
    iput v1, p0, Lz5/e$c;->C:I

    .line 45
    .line 46
    const/high16 v1, -0x40800000    # -1.0f

    .line 47
    .line 48
    iput v1, p0, Lz5/e$c;->D:F

    .line 49
    .line 50
    iput v1, p0, Lz5/e$c;->E:F

    .line 51
    .line 52
    iput v1, p0, Lz5/e$c;->F:F

    .line 53
    .line 54
    iput v1, p0, Lz5/e$c;->G:F

    .line 55
    .line 56
    iput v1, p0, Lz5/e$c;->H:F

    .line 57
    .line 58
    iput v1, p0, Lz5/e$c;->I:F

    .line 59
    .line 60
    iput v1, p0, Lz5/e$c;->J:F

    .line 61
    .line 62
    iput v1, p0, Lz5/e$c;->K:F

    .line 63
    .line 64
    iput v1, p0, Lz5/e$c;->L:F

    .line 65
    .line 66
    iput v1, p0, Lz5/e$c;->M:F

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput v1, p0, Lz5/e$c;->O:I

    .line 70
    .line 71
    iput v0, p0, Lz5/e$c;->P:I

    .line 72
    .line 73
    const/16 v0, 0x1f40

    .line 74
    .line 75
    iput v0, p0, Lz5/e$c;->Q:I

    .line 76
    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .line 79
    iput-wide v2, p0, Lz5/e$c;->R:J

    .line 80
    .line 81
    iput-wide v2, p0, Lz5/e$c;->S:J

    .line 82
    .line 83
    iput-boolean v1, p0, Lz5/e$c;->V:Z

    .line 84
    .line 85
    const-string v0, "eng"

    .line 86
    .line 87
    iput-object v0, p0, Lz5/e$c;->W:Ljava/lang/String;

    .line 88
    .line 89
    return-void
.end method

.method static synthetic a(Lz5/e$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz5/e$c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lz5/e$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lz5/e$c;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lz5/e$c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lz5/e$c;->g:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lz5/e$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lz5/e$c;->W:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lz5/e$c;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz5/e$c;->o(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz5/e$c;->X:Lt5/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private g(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$c;->k:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Missing CodecPrivate for codec "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1
.end method

.method private h()[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lz5/e$c;->D:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lz5/e$c;->E:F

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lz5/e$c;->F:F

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lz5/e$c;->G:F

    .line 22
    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lz5/e$c;->H:F

    .line 28
    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lz5/e$c;->I:F

    .line 34
    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lz5/e$c;->J:F

    .line 40
    .line 41
    cmpl-float v0, v0, v1

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, p0, Lz5/e$c;->K:F

    .line 46
    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget v0, p0, Lz5/e$c;->L:F

    .line 52
    .line 53
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lz5/e$c;->M:F

    .line 58
    .line 59
    cmpl-float v0, v0, v1

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/16 v0, 0x19

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lz5/e$c;->D:F

    .line 83
    .line 84
    const v3, 0x47435000    # 50000.0f

    .line 85
    .line 86
    .line 87
    mul-float/2addr v2, v3

    .line 88
    const/high16 v4, 0x3f000000    # 0.5f

    .line 89
    .line 90
    add-float/2addr v2, v4

    .line 91
    float-to-int v2, v2

    .line 92
    int-to-short v2, v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lz5/e$c;->E:F

    .line 97
    .line 98
    mul-float/2addr v2, v3

    .line 99
    add-float/2addr v2, v4

    .line 100
    float-to-int v2, v2

    .line 101
    int-to-short v2, v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lz5/e$c;->F:F

    .line 106
    .line 107
    mul-float/2addr v2, v3

    .line 108
    add-float/2addr v2, v4

    .line 109
    float-to-int v2, v2

    .line 110
    int-to-short v2, v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lz5/e$c;->G:F

    .line 115
    .line 116
    mul-float/2addr v2, v3

    .line 117
    add-float/2addr v2, v4

    .line 118
    float-to-int v2, v2

    .line 119
    int-to-short v2, v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lz5/e$c;->H:F

    .line 124
    .line 125
    mul-float/2addr v2, v3

    .line 126
    add-float/2addr v2, v4

    .line 127
    float-to-int v2, v2

    .line 128
    int-to-short v2, v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    iget v2, p0, Lz5/e$c;->I:F

    .line 133
    .line 134
    mul-float/2addr v2, v3

    .line 135
    add-float/2addr v2, v4

    .line 136
    float-to-int v2, v2

    .line 137
    int-to-short v2, v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    iget v2, p0, Lz5/e$c;->J:F

    .line 142
    .line 143
    mul-float/2addr v2, v3

    .line 144
    add-float/2addr v2, v4

    .line 145
    float-to-int v2, v2

    .line 146
    int-to-short v2, v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    iget v2, p0, Lz5/e$c;->K:F

    .line 151
    .line 152
    mul-float/2addr v2, v3

    .line 153
    add-float/2addr v2, v4

    .line 154
    float-to-int v2, v2

    .line 155
    int-to-short v2, v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    iget v2, p0, Lz5/e$c;->L:F

    .line 160
    .line 161
    add-float/2addr v2, v4

    .line 162
    float-to-int v2, v2

    .line 163
    int-to-short v2, v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    .line 167
    iget v2, p0, Lz5/e$c;->M:F

    .line 168
    .line 169
    add-float/2addr v2, v4

    .line 170
    float-to-int v2, v2

    .line 171
    int-to-short v2, v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    iget v2, p0, Lz5/e$c;->B:I

    .line 176
    .line 177
    int-to-short v2, v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lz5/e$c;->C:I

    .line 182
    .line 183
    int-to-short v2, v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 189
    return-object v0
.end method

.method private static k(Lb7/g0;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/g0;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lb7/g0;->Q(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lb7/g0;->t()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/32 v4, 0x58564944

    .line 12
    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance p0, Landroid/util/Pair;

    .line 19
    .line 20
    const-string v0, "video/divx"

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-wide/32 v4, 0x33363248

    .line 27
    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p0, Landroid/util/Pair;

    .line 34
    .line 35
    const-string v0, "video/3gpp"

    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    const-wide/32 v4, 0x31435657

    .line 42
    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lb7/g0;->e()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    add-int/lit8 v0, v0, 0x14

    .line 53
    .line 54
    invoke-virtual {p0}, Lb7/g0;->d()[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_0
    array-length v2, p0

    .line 59
    add-int/lit8 v2, v2, -0x4

    .line 60
    .line 61
    if-ge v0, v2, :cond_3

    .line 62
    .line 63
    aget-byte v2, p0, v0

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    add-int/lit8 v2, v0, 0x1

    .line 68
    .line 69
    aget-byte v2, p0, v2

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    add-int/lit8 v2, v0, 0x2

    .line 74
    .line 75
    aget-byte v2, p0, v2

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    add-int/lit8 v2, v0, 0x3

    .line 81
    .line 82
    aget-byte v2, p0, v2

    .line 83
    .line 84
    const/16 v3, 0xf

    .line 85
    .line 86
    if-ne v2, v3, :cond_2

    .line 87
    .line 88
    array-length v2, p0

    .line 89
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v0, Landroid/util/Pair;

    .line 94
    .line 95
    const-string v2, "video/wvc1"

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 109
    .line 110
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_4
    const-string p0, "MatroskaExtractor"

    .line 116
    .line 117
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 118
    .line 119
    invoke-static {p0, v0}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p0, Landroid/util/Pair;

    .line 123
    .line 124
    const-string v0, "video/x-unknown"

    .line 125
    .line 126
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :catch_0
    const-string p0, "Error parsing FourCC private data"

    .line 131
    .line 132
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    throw p0
.end method

.method private static l(Lb7/g0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb7/g0;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const v2, 0xfffe

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v2, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x18

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lb7/g0;->P(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lb7/g0;->w()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {}, Lz5/e;->g()Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lb7/g0;->w()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {}, Lz5/e;->g()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    cmp-long p0, v4, v6

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_2
    return v3

    .line 56
    :catch_0
    const-string p0, "Error parsing MS/ACM codec private"

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    throw p0
.end method

.method private static m([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    const-string v0, "Error parsing vorbis codec private"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    aget-byte v3, p0, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    if-ne v3, v4, :cond_5

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    move v6, v2

    .line 12
    move v5, v3

    .line 13
    :goto_0
    aget-byte v7, p0, v5

    .line 14
    .line 15
    and-int/lit16 v8, v7, 0xff

    .line 16
    .line 17
    const/16 v9, 0xff

    .line 18
    .line 19
    if-ne v8, v9, :cond_0

    .line 20
    .line 21
    add-int/lit16 v6, v6, 0xff

    .line 22
    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/2addr v5, v3

    .line 27
    and-int/2addr v7, v9

    .line 28
    add-int/2addr v6, v7

    .line 29
    move v7, v2

    .line 30
    :goto_1
    aget-byte v8, p0, v5

    .line 31
    .line 32
    and-int/lit16 v10, v8, 0xff

    .line 33
    .line 34
    if-ne v10, v9, :cond_1

    .line 35
    .line 36
    add-int/lit16 v7, v7, 0xff

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/2addr v5, v3

    .line 42
    and-int/2addr v8, v9

    .line 43
    add-int/2addr v7, v8

    .line 44
    aget-byte v8, p0, v5

    .line 45
    .line 46
    if-ne v8, v3, :cond_4

    .line 47
    .line 48
    new-array v3, v6, [B

    .line 49
    .line 50
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    add-int/2addr v5, v6

    .line 54
    aget-byte v6, p0, v5

    .line 55
    .line 56
    const/4 v8, 0x3

    .line 57
    if-ne v6, v8, :cond_3

    .line 58
    .line 59
    add-int/2addr v5, v7

    .line 60
    aget-byte v6, p0, v5

    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    if-ne v6, v7, :cond_2

    .line 64
    .line 65
    array-length v6, p0

    .line 66
    sub-int/2addr v6, v5

    .line 67
    new-array v6, v6, [B

    .line 68
    .line 69
    array-length v7, p0

    .line 70
    sub-int/2addr v7, v5

    .line 71
    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :cond_4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    throw p0

    .line 101
    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0
.end method

.method private o(Z)Z
    .locals 2

    .line 1
    const-string v0, "A_OPUS"

    .line 2
    .line 3
    iget-object v1, p0, Lz5/e$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget p1, p0, Lz5/e$c;->f:I

    .line 13
    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method


# virtual methods
.method public i(Lt5/m;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0x10

    .line 1
    iget-object v5, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v7, "application/dvbsubs"

    const-string v8, "application/vobsub"

    const-string v9, "application/pgs"

    const-string v10, "text/x-ssa"

    const-string v11, "text/vtt"

    const-string v12, "application/x-subrip"

    const/16 v14, 0x8

    const/4 v15, 0x3

    const-string v4, ". Setting mimeType to "

    const-string v16, "audio/raw"

    const-string v6, "MatroskaExtractor"

    const-string v3, "audio/x-unknown"

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "A_OPUS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "A_FLAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "A_EAC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "V_MPEG2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "A_PCM/INT/LIT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "A_PCM/INT/BIG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "A_DTS/EXPRESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "V_THEORA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "S_HDMV/PGS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "V_VP9"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "V_VP8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "V_AV1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "A_DTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "A_AC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "A_AAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "S_VOBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "S_DVBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v1, v14

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1a
    const-string v1, "A_MPEG/L3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1b
    const-string v1, "A_MPEG/L2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1c
    const-string v1, "A_VORBIS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v1, "A_TRUEHD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move v1, v15

    goto :goto_1

    :sswitch_1e
    const-string v1, "A_MS/ACM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1f
    const-string v1, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_20
    const-string v1, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2
    const-string v1, "Unrecognized codec identifier."

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 3
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, v0, Lz5/e$c;->R:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lz5/e$c;->S:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v16, "audio/opus"

    const/16 v6, 0x1680

    move-object v2, v13

    const/4 v3, -0x1

    const/4 v5, 0x0

    goto/16 :goto_10

    .line 10
    :pswitch_1
    iget-object v1, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 11
    const-string v16, "audio/flac"

    :goto_2
    move-object v2, v13

    :goto_3
    const/4 v3, -0x1

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/4 v6, -0x1

    goto/16 :goto_10

    .line 12
    :pswitch_2
    const-string v16, "audio/eac3"

    :goto_6
    move-object v1, v13

    move-object v2, v1

    goto :goto_3

    .line 13
    :pswitch_3
    const-string v16, "video/mpeg2"

    goto :goto_6

    :pswitch_4
    move-object/from16 v16, v12

    goto :goto_6

    :pswitch_5
    move-object/from16 v16, v11

    goto :goto_6

    .line 14
    :pswitch_6
    new-instance v1, Lb7/g0;

    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lb7/g0;-><init>([B)V

    invoke-static {v1}, Lc7/f;->a(Lb7/g0;)Lc7/f;

    move-result-object v1

    .line 15
    iget-object v2, v1, Lc7/f;->a:Ljava/util/List;

    .line 16
    iget v3, v1, Lc7/f;->b:I

    iput v3, v0, Lz5/e$c;->Y:I

    .line 17
    iget-object v1, v1, Lc7/f;->f:Ljava/lang/String;

    .line 18
    const-string v16, "video/hevc"

    :goto_7
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_10

    .line 19
    :pswitch_7
    invoke-static {}, Lz5/e;->e()[B

    move-result-object v1

    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->C(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v10

    goto :goto_2

    .line 20
    :pswitch_8
    iget v1, v0, Lz5/e$c;->P:I

    invoke-static {v1}, Lb7/s0;->W(I)I

    move-result v1

    if-nez v1, :cond_21

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lz5/e$c;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v16, v3

    goto :goto_6

    :cond_21
    :goto_9
    move v3, v1

    move-object v1, v13

    move-object v2, v1

    goto :goto_4

    .line 22
    :pswitch_9
    iget v1, v0, Lz5/e$c;->P:I

    if-ne v1, v14, :cond_22

    move-object v1, v13

    move-object v2, v1

    move v3, v15

    goto :goto_4

    :cond_22
    if-ne v1, v2, :cond_23

    const/high16 v1, 0x10000000

    goto :goto_9

    .line 23
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lz5/e$c;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 24
    :pswitch_a
    iget v1, v0, Lz5/e$c;->P:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_24

    move-object v1, v13

    move-object v2, v1

    const/4 v3, 0x4

    goto/16 :goto_4

    .line 25
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lz5/e$c;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 26
    :pswitch_b
    const-string v16, "video/x-unknown"

    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v16, v9

    goto/16 :goto_6

    .line 27
    :pswitch_d
    const-string v16, "video/x-vnd.on2.vp9"

    goto/16 :goto_6

    .line 28
    :pswitch_e
    const-string v16, "video/x-vnd.on2.vp8"

    goto/16 :goto_6

    .line 29
    :pswitch_f
    const-string v16, "video/av01"

    goto/16 :goto_6

    .line 30
    :pswitch_10
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_6

    .line 31
    :pswitch_11
    const-string v16, "audio/ac3"

    goto/16 :goto_6

    .line 32
    :pswitch_12
    iget-object v1, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    iget-object v2, v0, Lz5/e$c;->k:[B

    invoke-static {v2}, Lq5/a;->e([B)Lq5/a$b;

    move-result-object v2

    .line 34
    iget v3, v2, Lq5/a$b;->a:I

    iput v3, v0, Lz5/e$c;->Q:I

    .line 35
    iget v3, v2, Lq5/a$b;->b:I

    iput v3, v0, Lz5/e$c;->O:I

    .line 36
    iget-object v2, v2, Lq5/a$b;->c:Ljava/lang/String;

    .line 37
    const-string v16, "audio/mp4a-latm"

    goto/16 :goto_3

    .line 38
    :pswitch_13
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_6

    .line 39
    :pswitch_14
    iget-object v1, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v8

    goto/16 :goto_2

    .line 40
    :pswitch_15
    new-instance v1, Lb7/g0;

    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lb7/g0;-><init>([B)V

    invoke-static {v1}, Lc7/a;->b(Lb7/g0;)Lc7/a;

    move-result-object v1

    .line 41
    iget-object v2, v1, Lc7/a;->a:Ljava/util/List;

    .line 42
    iget v3, v1, Lc7/a;->b:I

    iput v3, v0, Lz5/e$c;->Y:I

    .line 43
    iget-object v1, v1, Lc7/a;->f:Ljava/lang/String;

    .line 44
    const-string v16, "video/avc"

    goto/16 :goto_7

    :pswitch_16
    const/4 v1, 0x4

    .line 45
    new-array v2, v1, [B

    .line 46
    iget-object v3, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v7

    :goto_a
    move-object v2, v13

    :goto_b
    const/4 v3, -0x1

    goto/16 :goto_5

    :pswitch_17
    const/4 v5, 0x0

    .line 48
    new-instance v1, Lb7/g0;

    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    .line 49
    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lb7/g0;-><init>([B)V

    invoke-static {v1}, Lz5/e$c;->k(Lb7/g0;)Landroid/util/Pair;

    move-result-object v1

    .line 50
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 51
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto :goto_a

    :pswitch_18
    const/4 v5, 0x0

    .line 52
    const-string v16, "audio/mpeg"

    :goto_c
    move-object v1, v13

    move-object v2, v1

    const/4 v3, -0x1

    const/16 v6, 0x1000

    goto/16 :goto_10

    :pswitch_19
    const/4 v5, 0x0

    .line 53
    const-string v16, "audio/mpeg-L2"

    goto :goto_c

    :pswitch_1a
    const/4 v5, 0x0

    .line 54
    iget-object v1, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lz5/e$c;->m([B)Ljava/util/List;

    move-result-object v1

    .line 55
    const-string v16, "audio/vorbis"

    const/16 v6, 0x2000

    move-object v2, v13

    const/4 v3, -0x1

    goto/16 :goto_10

    :pswitch_1b
    const/4 v5, 0x0

    .line 56
    new-instance v1, Lt5/c0;

    invoke-direct {v1}, Lt5/c0;-><init>()V

    iput-object v1, v0, Lz5/e$c;->T:Lt5/c0;

    .line 57
    const-string v16, "audio/true-hd"

    :goto_d
    move-object v1, v13

    move-object v2, v1

    goto :goto_b

    :pswitch_1c
    const/4 v5, 0x0

    .line 58
    new-instance v1, Lb7/g0;

    iget-object v2, v0, Lz5/e$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lz5/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lb7/g0;-><init>([B)V

    invoke-static {v1}, Lz5/e$c;->l(Lb7/g0;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 59
    iget v1, v0, Lz5/e$c;->P:I

    invoke-static {v1}, Lb7/s0;->W(I)I

    move-result v1

    if-nez v1, :cond_25

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lz5/e$c;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v16, v3

    goto :goto_d

    :cond_25
    move v3, v1

    move-object v1, v13

    move-object v2, v1

    goto/16 :goto_5

    .line 61
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lb7/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_1d
    const/4 v5, 0x0

    .line 62
    iget-object v1, v0, Lz5/e$c;->k:[B

    if-nez v1, :cond_27

    move-object v1, v13

    goto :goto_f

    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    :goto_f
    const-string v16, "video/mp4v-es"

    goto/16 :goto_a

    .line 64
    :goto_10
    iget-object v4, v0, Lz5/e$c;->N:[B

    if-eqz v4, :cond_28

    .line 65
    new-instance v14, Lb7/g0;

    invoke-direct {v14, v4}, Lb7/g0;-><init>([B)V

    .line 66
    invoke-static {v14}, Lc7/d;->a(Lb7/g0;)Lc7/d;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 67
    iget-object v2, v4, Lc7/d;->c:Ljava/lang/String;

    .line 68
    const-string v16, "video/dolby-vision"

    :cond_28
    move-object/from16 v4, v16

    .line 69
    iget-boolean v14, v0, Lz5/e$c;->V:Z

    .line 70
    iget-boolean v5, v0, Lz5/e$c;->U:Z

    if-eqz v5, :cond_29

    const/4 v5, 0x2

    goto :goto_11

    :cond_29
    const/4 v5, 0x0

    :goto_11
    or-int/2addr v5, v14

    .line 71
    new-instance v14, Lcom/google/android/exoplayer2/v0$b;

    invoke-direct {v14}, Lcom/google/android/exoplayer2/v0$b;-><init>()V

    .line 72
    invoke-static {v4}, Lb7/u;->l(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2a

    .line 73
    iget v7, v0, Lz5/e$c;->O:I

    .line 74
    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/v0$b;->H(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v7

    iget v8, v0, Lz5/e$c;->Q:I

    .line 75
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/v0$b;->f0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/v0$b;->Y(I)Lcom/google/android/exoplayer2/v0$b;

    const/4 v3, 0x1

    goto/16 :goto_17

    .line 77
    :cond_2a
    invoke-static {v4}, Lb7/u;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 78
    iget v3, v0, Lz5/e$c;->q:I

    if-nez v3, :cond_2d

    .line 79
    iget v3, v0, Lz5/e$c;->o:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_2b

    iget v3, v0, Lz5/e$c;->m:I

    :cond_2b
    iput v3, v0, Lz5/e$c;->o:I

    .line 80
    iget v3, v0, Lz5/e$c;->p:I

    if-ne v3, v7, :cond_2c

    iget v3, v0, Lz5/e$c;->n:I

    :cond_2c
    iput v3, v0, Lz5/e$c;->p:I

    goto :goto_12

    :cond_2d
    const/4 v7, -0x1

    .line 81
    :goto_12
    iget v3, v0, Lz5/e$c;->o:I

    if-eq v3, v7, :cond_2e

    iget v8, v0, Lz5/e$c;->p:I

    if-eq v8, v7, :cond_2e

    .line 82
    iget v9, v0, Lz5/e$c;->n:I

    mul-int/2addr v9, v3

    int-to-float v3, v9

    iget v9, v0, Lz5/e$c;->m:I

    mul-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v3, v8

    goto :goto_13

    :cond_2e
    const/high16 v3, -0x40800000    # -1.0f

    .line 83
    :goto_13
    iget-boolean v8, v0, Lz5/e$c;->x:Z

    if-eqz v8, :cond_2f

    .line 84
    invoke-direct/range {p0 .. p0}, Lz5/e$c;->h()[B

    move-result-object v8

    .line 85
    new-instance v13, Lc7/c;

    iget v9, v0, Lz5/e$c;->y:I

    iget v10, v0, Lz5/e$c;->A:I

    iget v11, v0, Lz5/e$c;->z:I

    invoke-direct {v13, v9, v10, v11, v8}, Lc7/c;-><init>(III[B)V

    .line 86
    :cond_2f
    iget-object v8, v0, Lz5/e$c;->a:Ljava/lang/String;

    if-eqz v8, :cond_30

    invoke-static {}, Lz5/e;->f()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lz5/e$c;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 87
    invoke-static {}, Lz5/e;->f()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lz5/e$c;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 88
    :cond_30
    iget v8, v0, Lz5/e$c;->r:I

    if-nez v8, :cond_35

    iget v8, v0, Lz5/e$c;->s:F

    const/4 v9, 0x0

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_35

    iget v8, v0, Lz5/e$c;->t:F

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_35

    .line 91
    iget v8, v0, Lz5/e$c;->u:F

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_31

    const/4 v7, 0x0

    goto :goto_15

    .line 92
    :cond_31
    iget v8, v0, Lz5/e$c;->t:F

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_32

    const/16 v7, 0x5a

    goto :goto_15

    .line 93
    :cond_32
    iget v8, v0, Lz5/e$c;->t:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_34

    iget v8, v0, Lz5/e$c;->t:F

    const/high16 v9, 0x43340000    # 180.0f

    .line 94
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_33

    goto :goto_14

    .line 95
    :cond_33
    iget v8, v0, Lz5/e$c;->t:F

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_35

    const/16 v7, 0x10e

    goto :goto_15

    :cond_34
    :goto_14
    const/16 v7, 0xb4

    .line 96
    :cond_35
    :goto_15
    iget v8, v0, Lz5/e$c;->m:I

    .line 97
    invoke-virtual {v14, v8}, Lcom/google/android/exoplayer2/v0$b;->j0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v8

    iget v9, v0, Lz5/e$c;->n:I

    .line 98
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/v0$b;->Q(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v8

    .line 99
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/v0$b;->a0(F)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/v0$b;->d0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v3

    iget-object v7, v0, Lz5/e$c;->v:[B

    .line 101
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/v0$b;->b0([B)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v3

    iget v7, v0, Lz5/e$c;->w:I

    .line 102
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/v0$b;->h0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/v0$b;->J(Lc7/c;)Lcom/google/android/exoplayer2/v0$b;

    const/4 v3, 0x2

    goto :goto_17

    .line 104
    :cond_36
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 105
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 106
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 107
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 108
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 109
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_16

    .line 110
    :cond_37
    const-string v1, "Unexpected MIME type."

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    :cond_38
    :goto_16
    move v3, v15

    .line 111
    :goto_17
    iget-object v7, v0, Lz5/e$c;->a:Ljava/lang/String;

    if-eqz v7, :cond_39

    invoke-static {}, Lz5/e;->f()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lz5/e$c;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 112
    iget-object v7, v0, Lz5/e$c;->a:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/v0$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    :cond_39
    move/from16 v7, p2

    .line 113
    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/v0$b;->R(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/v0$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/v0$b;->W(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    iget-object v6, v0, Lz5/e$c;->W:Ljava/lang/String;

    .line 116
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/v0$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->g0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    .line 118
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/v0$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/v0$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v1

    iget-object v2, v0, Lz5/e$c;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/v0$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/v0$b;->E()Lcom/google/android/exoplayer2/v0;

    move-result-object v1

    .line 122
    iget v2, v0, Lz5/e$c;->c:I

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3}, Lt5/m;->track(II)Lt5/b0;

    move-result-object v2

    iput-object v2, v0, Lz5/e$c;->X:Lt5/b0;

    .line 123
    invoke-interface {v2, v1}, Lt5/b0;->b(Lcom/google/android/exoplayer2/v0;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz5/e$c;->T:Lt5/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lz5/e$c;->X:Lt5/b0;

    .line 6
    .line 7
    iget-object v2, p0, Lz5/e$c;->j:Lt5/b0$a;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lt5/c0;->a(Lt5/b0;Lt5/b0$a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz5/e$c;->T:Lt5/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lt5/c0;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
