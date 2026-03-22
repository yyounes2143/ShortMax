.class public final Lbo/b;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lao/p;


# static fields
.field public static final s:Lao/u;

.field private static final t:[I

.field private static final u:[I

.field private static final v:[B

.field private static final w:[B


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:Lao/o0;

.field private d:Z

.field private e:J

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:I

.field private k:J

.field private l:Lao/r;

.field private m:Lao/o0;

.field private n:Lao/o0;

.field private o:Lao/j0;

.field private p:Z

.field private q:J

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbo/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbo/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbo/b;->s:Lao/u;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v1, Lbo/b;->t:[I

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_1

    .line 20
    .line 21
    .line 22
    sput-object v0, Lbo/b;->u:[I

    .line 23
    .line 24
    const-string v0, "#!AMR\n"

    .line 25
    .line 26
    invoke-static {v0}, Lcn/m0;->u0(Ljava/lang/String;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lbo/b;->v:[B

    .line 31
    .line 32
    const-string v0, "#!AMR-WB\n"

    .line 33
    .line 34
    invoke-static {v0}, Lcn/m0;->u0(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lbo/b;->w:[B

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lbo/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 3
    :cond_0
    iput p1, p0, Lbo/b;->b:I

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lbo/b;->a:[B

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lbo/b;->i:I

    .line 6
    new-instance p1, Lao/m;

    invoke-direct {p1}, Lao/m;-><init>()V

    iput-object p1, p0, Lbo/b;->c:Lao/o0;

    .line 7
    iput-object p1, p0, Lbo/b;->n:Lao/o0;

    return-void
.end method

.method public static synthetic a()[Lao/p;
    .locals 1

    .line 1
    invoke-static {}, Lbo/b;->o()[Lao/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/b;->m:Lao/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lbo/b;->l:Lao/r;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static h(IJ)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, 0x7a1200

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    div-long/2addr v0, p1

    .line 7
    long-to-int p0, v0

    .line 8
    return p0
.end method

.method private i(JZ)Lao/j0;
    .locals 11

    .line 1
    iget v0, p0, Lbo/b;->i:I

    .line 2
    .line 3
    const-wide/16 v1, 0x4e20

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lbo/b;->h(IJ)I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    new-instance v0, Lao/h;

    .line 10
    .line 11
    iget-wide v6, p0, Lbo/b;->h:J

    .line 12
    .line 13
    iget v9, p0, Lbo/b;->i:I

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    move-wide v4, p1

    .line 17
    move v10, p3

    .line 18
    invoke-direct/range {v3 .. v10}, Lao/h;-><init>(JJIIZ)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private j(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lbo/b;->m(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "Illegal AMR "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lbo/b;->d:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "WB"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "NB"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " frame type "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1

    .line 47
    :cond_1
    iget-boolean v0, p0, Lbo/b;->d:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lbo/b;->u:[I

    .line 52
    .line 53
    aget p1, v0, p1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v0, Lbo/b;->t:[I

    .line 57
    .line 58
    aget p1, v0, p1

    .line 59
    .line 60
    :goto_1
    return p1
.end method

.method private k(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbo/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xe

    .line 10
    .line 11
    if-le p1, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private l(JJ)Z
    .locals 0

    .line 1
    sub-long/2addr p3, p1

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1

    .line 6
    const-wide/16 p3, 0x4e20

    .line 7
    .line 8
    cmp-long p1, p1, p3

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method private m(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0xf

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lbo/b;->n(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lbo/b;->k(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private n(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbo/b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-le p1, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private static synthetic o()[Lao/p;
    .locals 3

    .line 1
    new-instance v0, Lbo/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lbo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Lao/p;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method

.method private p()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lbo/b;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lbo/b;->r:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lbo/b;->d:Z

    .line 9
    .line 10
    const-string v2, "audio/amr-wb"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v3, "audio/amr"

    .line 17
    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string v2, "audio/3gpp"

    .line 22
    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x3e80

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/16 v4, 0x1f40

    .line 29
    .line 30
    :goto_2
    if-eqz v1, :cond_3

    .line 31
    .line 32
    sget-object v1, Lbo/b;->u:[I

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    aget v1, v1, v5

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    sget-object v1, Lbo/b;->t:[I

    .line 40
    .line 41
    const/4 v5, 0x7

    .line 42
    aget v1, v1, v5

    .line 43
    .line 44
    :goto_3
    iget-object v5, p0, Lbo/b;->m:Lao/o0;

    .line 45
    .line 46
    new-instance v6, Lio/bidmachine/media3/common/a$b;

    .line 47
    .line 48
    invoke-direct {v6}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v3}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/a$b;->k0(I)Lio/bidmachine/media3/common/a$b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/a$b;->v0(I)Lio/bidmachine/media3/common/a$b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v5, v0}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method private q(JI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lbo/b;->o:Lao/j0;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, p0, Lbo/b;->b:I

    .line 9
    .line 10
    and-int/lit8 v3, v2, 0x4

    .line 11
    .line 12
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    new-instance p1, Lao/e0;

    .line 20
    .line 21
    iget-wide p2, p0, Lbo/b;->h:J

    .line 22
    .line 23
    new-array v2, v1, [J

    .line 24
    .line 25
    aput-wide p2, v2, v0

    .line 26
    .line 27
    new-array p2, v1, [J

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    aput-wide v6, p2, v0

    .line 32
    .line 33
    invoke-direct {p1, v2, p2, v4, v5}, Lao/e0;-><init>([J[JJ)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lbo/b;->o:Lao/j0;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    and-int/lit8 v3, v2, 0x1

    .line 40
    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    iget v3, p0, Lbo/b;->i:I

    .line 44
    .line 45
    const/4 v6, -0x1

    .line 46
    if-eq v3, v6, :cond_2

    .line 47
    .line 48
    iget v7, p0, Lbo/b;->f:I

    .line 49
    .line 50
    if-eq v3, v7, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget v3, p0, Lbo/b;->j:I

    .line 54
    .line 55
    const/16 v4, 0x14

    .line 56
    .line 57
    if-ge v3, v4, :cond_3

    .line 58
    .line 59
    if-ne p3, v6, :cond_6

    .line 60
    .line 61
    :cond_3
    and-int/lit8 p3, v2, 0x2

    .line 62
    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    move v0, v1

    .line 66
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lbo/b;->i(JZ)Lao/j0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lbo/b;->o:Lao/j0;

    .line 71
    .line 72
    iget-object p2, p0, Lbo/b;->m:Lao/o0;

    .line 73
    .line 74
    invoke-interface {p1}, Lao/j0;->getDurationUs()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-interface {p2, v0, v1}, Lao/o0;->d(J)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    :goto_0
    new-instance p1, Lao/j0$b;

    .line 83
    .line 84
    invoke-direct {p1, v4, v5}, Lao/j0$b;-><init>(J)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lbo/b;->o:Lao/j0;

    .line 88
    .line 89
    :cond_6
    :goto_1
    iget-object p1, p0, Lbo/b;->o:Lao/j0;

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    iget-object p2, p0, Lbo/b;->l:Lao/r;

    .line 94
    .line 95
    invoke-interface {p2, p1}, Lao/r;->d(Lao/j0;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method

.method private static r(Lao/q;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lao/q;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    array-length v2, p1

    .line 9
    invoke-interface {p0, v0, v1, v2}, Lao/q;->peekFully([BII)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private s(Lao/q;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lao/q;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lbo/b;->a:[B

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v2, v1}, Lao/q;->peekFully([BII)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbo/b;->a:[B

    .line 12
    .line 13
    aget-byte p1, p1, v2

    .line 14
    .line 15
    and-int/lit16 v0, p1, 0x83

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    shr-int/lit8 p1, p1, 0x3

    .line 20
    .line 21
    and-int/lit8 p1, p1, 0xf

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lbo/b;->j(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "Invalid padding bits for frame header "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    throw p1
.end method

.method private t(Lao/q;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lbo/b;->v:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Lbo/b;->r(Lao/q;[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-boolean v2, p0, Lbo/b;->d:Z

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    invoke-interface {p1, v0}, Lao/q;->skipFully(I)V

    .line 15
    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    sget-object v0, Lbo/b;->w:[B

    .line 19
    .line 20
    invoke-static {p1, v0}, Lbo/b;->r(Lao/q;[B)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iput-boolean v3, p0, Lbo/b;->d:Z

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    invoke-interface {p1, v0}, Lao/q;->skipFully(I)V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    return v2
.end method

.method private u(Lao/q;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lbo/b;->g:I

    .line 2
    .line 3
    const-wide/16 v1, 0x4e20

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, -0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, p1}, Lbo/b;->s(Lao/q;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lbo/b;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    iput v0, p0, Lbo/b;->g:I

    .line 17
    .line 18
    iget v0, p0, Lbo/b;->i:I

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lao/q;->getPosition()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    iput-wide v6, p0, Lbo/b;->h:J

    .line 27
    .line 28
    iget v0, p0, Lbo/b;->f:I

    .line 29
    .line 30
    iput v0, p0, Lbo/b;->i:I

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lbo/b;->i:I

    .line 33
    .line 34
    iget v6, p0, Lbo/b;->f:I

    .line 35
    .line 36
    if-ne v0, v6, :cond_1

    .line 37
    .line 38
    iget v0, p0, Lbo/b;->j:I

    .line 39
    .line 40
    add-int/2addr v0, v3

    .line 41
    iput v0, p0, Lbo/b;->j:I

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lbo/b;->o:Lao/j0;

    .line 44
    .line 45
    instance-of v6, v0, Lao/e0;

    .line 46
    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    check-cast v0, Lao/e0;

    .line 50
    .line 51
    iget-wide v6, p0, Lbo/b;->k:J

    .line 52
    .line 53
    iget-wide v8, p0, Lbo/b;->e:J

    .line 54
    .line 55
    add-long/2addr v6, v8

    .line 56
    add-long/2addr v6, v1

    .line 57
    invoke-interface {p1}, Lao/q;->getPosition()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    iget v10, p0, Lbo/b;->f:I

    .line 62
    .line 63
    int-to-long v10, v10

    .line 64
    add-long/2addr v8, v10

    .line 65
    const-wide/32 v10, 0x186a0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6, v7, v10, v11}, Lao/e0;->c(JJ)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-nez v10, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v6, v7, v8, v9}, Lao/e0;->b(JJ)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-boolean v0, p0, Lbo/b;->p:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-wide v8, p0, Lbo/b;->q:J

    .line 82
    .line 83
    invoke-direct {p0, v6, v7, v8, v9}, Lbo/b;->l(JJ)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iput-boolean v4, p0, Lbo/b;->p:Z

    .line 90
    .line 91
    iget-object v0, p0, Lbo/b;->m:Lao/o0;

    .line 92
    .line 93
    iput-object v0, p0, Lbo/b;->n:Lao/o0;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    return v5

    .line 97
    :cond_3
    :goto_0
    iget-object v0, p0, Lbo/b;->n:Lao/o0;

    .line 98
    .line 99
    iget v6, p0, Lbo/b;->g:I

    .line 100
    .line 101
    invoke-interface {v0, p1, v6, v3}, Lao/o0;->b(Lzm/h;IZ)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p1, v5, :cond_4

    .line 106
    .line 107
    return v5

    .line 108
    :cond_4
    iget v0, p0, Lbo/b;->g:I

    .line 109
    .line 110
    sub-int/2addr v0, p1

    .line 111
    iput v0, p0, Lbo/b;->g:I

    .line 112
    .line 113
    if-lez v0, :cond_5

    .line 114
    .line 115
    return v4

    .line 116
    :cond_5
    iget-object v5, p0, Lbo/b;->n:Lao/o0;

    .line 117
    .line 118
    iget-wide v6, p0, Lbo/b;->k:J

    .line 119
    .line 120
    iget-wide v8, p0, Lbo/b;->e:J

    .line 121
    .line 122
    add-long/2addr v6, v8

    .line 123
    iget v9, p0, Lbo/b;->f:I

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v8, 0x1

    .line 128
    invoke-interface/range {v5 .. v11}, Lao/o0;->c(JIIILao/o0$a;)V

    .line 129
    .line 130
    .line 131
    iget-wide v5, p0, Lbo/b;->e:J

    .line 132
    .line 133
    add-long/2addr v5, v1

    .line 134
    iput-wide v5, p0, Lbo/b;->e:J

    .line 135
    .line 136
    return v4
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbo/b;->l:Lao/r;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lao/r;->track(II)Lao/o0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lbo/b;->m:Lao/o0;

    .line 10
    .line 11
    iput-object v0, p0, Lbo/b;->n:Lao/o0;

    .line 12
    .line 13
    invoke-interface {p1}, Lao/r;->endTracks()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Lao/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lbo/b;->t(Lao/q;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public f(Lao/q;Lao/i0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbo/b;->g()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lao/q;->getPosition()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p2, v0, v2

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lbo/b;->t(Lao/q;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "Could not find AMR header."

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-direct {p0}, Lbo/b;->p()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lbo/b;->u(Lao/q;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-direct {p0, v0, v1, p2}, Lbo/b;->q(JI)V

    .line 41
    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    if-ne p2, p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lbo/b;->o:Lao/j0;

    .line 47
    .line 48
    instance-of v0, p1, Lao/e0;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-wide v0, p0, Lbo/b;->k:J

    .line 53
    .line 54
    iget-wide v2, p0, Lbo/b;->e:J

    .line 55
    .line 56
    add-long/2addr v0, v2

    .line 57
    check-cast p1, Lao/e0;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lao/e0;->d(J)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lbo/b;->l:Lao/r;

    .line 63
    .line 64
    iget-object v2, p0, Lbo/b;->o:Lao/j0;

    .line 65
    .line 66
    invoke-interface {p1, v2}, Lao/r;->d(Lao/j0;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lbo/b;->m:Lao/o0;

    .line 70
    .line 71
    invoke-interface {p1, v0, v1}, Lao/o0;->d(J)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return p2
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lbo/b;->e:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lbo/b;->f:I

    .line 7
    .line 8
    iput v2, p0, Lbo/b;->g:I

    .line 9
    .line 10
    iput-wide p3, p0, Lbo/b;->q:J

    .line 11
    .line 12
    iget-object p3, p0, Lbo/b;->o:Lao/j0;

    .line 13
    .line 14
    instance-of p4, p3, Lao/e0;

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    check-cast p3, Lao/e0;

    .line 19
    .line 20
    invoke-virtual {p3, p1, p2}, Lao/e0;->getTimeUs(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iput-wide p1, p0, Lbo/b;->k:J

    .line 25
    .line 26
    iget-wide p3, p0, Lbo/b;->q:J

    .line 27
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lbo/b;->l(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lbo/b;->p:Z

    .line 36
    .line 37
    iget-object p1, p0, Lbo/b;->c:Lao/o0;

    .line 38
    .line 39
    iput-object p1, p0, Lbo/b;->n:Lao/o0;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    cmp-long p4, p1, v0

    .line 43
    .line 44
    if-eqz p4, :cond_1

    .line 45
    .line 46
    instance-of p4, p3, Lao/h;

    .line 47
    .line 48
    if-eqz p4, :cond_1

    .line 49
    .line 50
    check-cast p3, Lao/h;

    .line 51
    .line 52
    invoke-virtual {p3, p1, p2}, Lao/h;->c(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    iput-wide p1, p0, Lbo/b;->k:J

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-wide v0, p0, Lbo/b;->k:J

    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method
