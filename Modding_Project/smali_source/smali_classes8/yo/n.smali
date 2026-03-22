.class public Lyo/n;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Lao/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo/n$b;
    }
.end annotation


# instance fields
.field private final a:Lyo/r;

.field private final b:Lyo/d;

.field private final c:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyo/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/b0;

.field private f:[B

.field private g:Lao/o0;

.field private h:I

.field private i:I

.field private j:[J

.field private k:J


# direct methods
.method public constructor <init>(Lyo/r;Lio/bidmachine/media3/common/a;)V
    .locals 2
    .param p2    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyo/n;->a:Lyo/r;

    .line 5
    .line 6
    new-instance v0, Lyo/d;

    .line 7
    .line 8
    invoke-direct {v0}, Lyo/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lyo/n;->b:Lyo/d;

    .line 12
    .line 13
    sget-object v0, Lcn/m0;->f:[B

    .line 14
    .line 15
    iput-object v0, p0, Lyo/n;->f:[B

    .line 16
    .line 17
    new-instance v0, Lcn/b0;

    .line 18
    .line 19
    invoke-direct {v0}, Lcn/b0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lyo/n;->e:Lcn/b0;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "application/x-media3-cues"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p2, p2, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1}, Lyo/r;->b()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/a$b;->W(I)Lio/bidmachine/media3/common/a$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p0, Lyo/n;->c:Lio/bidmachine/media3/common/a;

    .line 57
    .line 58
    new-instance p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lyo/n;->d:Ljava/util/List;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lyo/n;->i:I

    .line 67
    .line 68
    sget-object p1, Lcn/m0;->g:[J

    .line 69
    .line 70
    iput-object p1, p0, Lyo/n;->j:[J

    .line 71
    .line 72
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide p1, p0, Lyo/n;->k:J

    .line 78
    .line 79
    return-void
.end method

.method public static synthetic a(Lyo/n;Lyo/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyo/n;->g(Lyo/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Lyo/e;)V
    .locals 7

    .line 1
    new-instance v0, Lyo/n$b;

    .line 2
    .line 3
    iget-wide v1, p1, Lyo/e;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lyo/n;->b:Lyo/d;

    .line 6
    .line 7
    iget-object v4, p1, Lyo/e;->a:Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    iget-wide v5, p1, Lyo/e;->c:J

    .line 10
    .line 11
    invoke-virtual {v3, v4, v5, v6}, Lyo/d;->a(Ljava/util/List;J)[B

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v0, v1, v2, v3, v4}, Lyo/n$b;-><init>(J[BLyo/n$a;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lyo/n;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-wide v1, p0, Lyo/n;->k:J

    .line 25
    .line 26
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-wide v3, p1, Lyo/e;->b:J

    .line 36
    .line 37
    cmp-long p1, v3, v1

    .line 38
    .line 39
    if-ltz p1, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-direct {p0, v0}, Lyo/n;->l(Lyo/n$b;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private h()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lyo/n;->k:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lyo/r$b;->c(J)Lyo/r$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    move-object v5, v0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-static {}, Lyo/r$b;->b()Lyo/r$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v1, p0, Lyo/n;->a:Lyo/r;

    .line 26
    .line 27
    iget-object v2, p0, Lyo/n;->f:[B

    .line 28
    .line 29
    iget v4, p0, Lyo/n;->h:I

    .line 30
    .line 31
    new-instance v6, Lyo/m;

    .line 32
    .line 33
    invoke-direct {v6, p0}, Lyo/m;-><init>(Lyo/n;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface/range {v1 .. v6}, Lyo/r;->a([BIILyo/r$b;Lcn/l;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lyo/n;->d:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lyo/n;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    iput-object v0, p0, Lyo/n;->j:[J

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_2
    iget-object v1, p0, Lyo/n;->d:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v0, v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lyo/n;->j:[J

    .line 65
    .line 66
    iget-object v2, p0, Lyo/n;->d:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lyo/n$b;

    .line 73
    .line 74
    invoke-static {v2}, Lyo/n$b;->a(Lyo/n$b;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    aput-wide v2, v1, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    sget-object v0, Lcn/m0;->f:[B

    .line 84
    .line 85
    iput-object v0, p0, Lyo/n;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    return-void

    .line 88
    :goto_3
    const-string v1, "SubtitleParser failed."

    .line 89
    .line 90
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    throw v0
.end method

.method private i(Lao/q;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyo/n;->f:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lyo/n;->h:I

    .line 5
    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    add-int/lit16 v1, v1, 0x400

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lyo/n;->f:[B

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lyo/n;->f:[B

    .line 18
    .line 19
    iget v1, p0, Lyo/n;->h:I

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    sub-int/2addr v2, v1

    .line 23
    invoke-interface {p1, v0, v1, v2}, Lao/q;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lyo/n;->h:I

    .line 31
    .line 32
    add-int/2addr v2, v0

    .line 33
    iput v2, p0, Lyo/n;->h:I

    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const-wide/16 v4, -0x1

    .line 40
    .line 41
    cmp-long p1, v2, v4

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lyo/n;->h:I

    .line 46
    .line 47
    int-to-long v4, p1

    .line 48
    cmp-long p1, v4, v2

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    :cond_2
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 p1, 0x0

    .line 57
    :goto_0
    return p1
.end method

.method private j(Lao/q;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x400

    .line 21
    .line 22
    :goto_0
    invoke-interface {p1, v0}, Lao/q;->skip(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, -0x1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method

.method private k()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lyo/n;->k:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lyo/n;->j:[J

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v2, v0, v1, v3, v3}, Lcn/m0;->h([JJZZ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    iget-object v1, p0, Lyo/n;->d:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lyo/n;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lyo/n$b;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lyo/n;->l(Lyo/n$b;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private l(Lyo/n$b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lyo/n;->g:Lao/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lyo/n$b;->b(Lyo/n$b;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v5, v0

    .line 11
    iget-object v0, p0, Lyo/n;->e:Lcn/b0;

    .line 12
    .line 13
    invoke-static {p1}, Lyo/n$b;->b(Lyo/n$b;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcn/b0;->T([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lyo/n;->g:Lao/o0;

    .line 21
    .line 22
    iget-object v1, p0, Lyo/n;->e:Lcn/b0;

    .line 23
    .line 24
    invoke-interface {v0, v1, v5}, Lao/o0;->a(Lcn/b0;I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lyo/n;->g:Lao/o0;

    .line 28
    .line 29
    invoke-static {p1}, Lyo/n$b;->a(Lyo/n$b;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-interface/range {v1 .. v7}, Lao/o0;->c(JIIILao/o0$a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 7

    .line 1
    iget v0, p0, Lyo/n;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-interface {p1, v1, v0}, Lao/r;->track(II)Lao/o0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lyo/n;->g:Lao/o0;

    .line 19
    .line 20
    iget-object v3, p0, Lyo/n;->c:Lio/bidmachine/media3/common/a;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v3}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lao/r;->endTracks()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lao/e0;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    aput-wide v3, v5, v1

    .line 37
    .line 38
    new-array v6, v2, [J

    .line 39
    .line 40
    aput-wide v3, v6, v1

    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v5, v6, v3, v4}, Lao/e0;-><init>([J[JJ)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lao/r;->d(Lao/j0;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput v2, p0, Lyo/n;->i:I

    .line 54
    .line 55
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
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public f(Lao/q;Lao/i0;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lyo/n;->i:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v1

    .line 13
    :goto_0
    invoke-static {p2}, Lcn/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lyo/n;->i:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, -0x1

    .line 26
    .line 27
    cmp-long p2, v3, v5

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 p2, 0x400

    .line 41
    .line 42
    :goto_1
    iget-object v0, p0, Lyo/n;->f:[B

    .line 43
    .line 44
    array-length v0, v0

    .line 45
    if-le p2, v0, :cond_2

    .line 46
    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    iput-object p2, p0, Lyo/n;->f:[B

    .line 50
    .line 51
    :cond_2
    iput v1, p0, Lyo/n;->h:I

    .line 52
    .line 53
    iput v2, p0, Lyo/n;->i:I

    .line 54
    .line 55
    :cond_3
    iget p2, p0, Lyo/n;->i:I

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-ne p2, v2, :cond_4

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lyo/n;->i(Lao/q;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    invoke-direct {p0}, Lyo/n;->h()V

    .line 67
    .line 68
    .line 69
    iput v0, p0, Lyo/n;->i:I

    .line 70
    .line 71
    :cond_4
    iget p2, p0, Lyo/n;->i:I

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    if-ne p2, v2, :cond_5

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lyo/n;->j(Lao/q;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-direct {p0}, Lyo/n;->k()V

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lyo/n;->i:I

    .line 86
    .line 87
    :cond_5
    iget p1, p0, Lyo/n;->i:I

    .line 88
    .line 89
    if-ne p1, v0, :cond_6

    .line 90
    .line 91
    const/4 p1, -0x1

    .line 92
    return p1

    .line 93
    :cond_6
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, Lyo/n;->i:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lyo/n;->a:Lyo/r;

    .line 8
    .line 9
    invoke-interface {v0}, Lyo/r;->reset()V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lyo/n;->i:I

    .line 13
    .line 14
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lyo/n;->i:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    move p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Lcn/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p3, p0, Lyo/n;->k:J

    .line 16
    .line 17
    iget p1, p0, Lyo/n;->i:I

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    iput p2, p0, Lyo/n;->i:I

    .line 23
    .line 24
    :cond_1
    iget p1, p0, Lyo/n;->i:I

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lyo/n;->i:I

    .line 31
    .line 32
    :cond_2
    return-void
.end method
