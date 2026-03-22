.class final Lio/bidmachine/media3/exoplayer/dash/c;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/q;
.implements Lio/bidmachine/media3/exoplayer/source/g0$a;
.implements Ltn/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/q;",
        "Lio/bidmachine/media3/exoplayer/source/g0$a<",
        "Ltn/h<",
        "Lio/bidmachine/media3/exoplayer/dash/a;",
        ">;>;",
        "Ltn/h$b<",
        "Lio/bidmachine/media3/exoplayer/dash/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;


# instance fields
.field final a:I

.field private final b:Lio/bidmachine/media3/exoplayer/dash/a$a;

.field private final c:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final e:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final f:Ljn/b;

.field private final g:J

.field private final h:Lwn/k;

.field private final i:Lwn/b;

.field private final j:Lsn/x;

.field private final k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

.field private final l:Lsn/e;

.field private final m:Lio/bidmachine/media3/exoplayer/dash/f;

.field private final n:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lio/bidmachine/media3/exoplayer/source/s$a;

.field private final p:Lio/bidmachine/media3/exoplayer/drm/h$a;

.field private final q:Lhn/b2;

.field private r:Lio/bidmachine/media3/exoplayer/source/q$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:[Ltn/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;"
        }
    .end annotation
.end field

.field private t:[Lio/bidmachine/media3/exoplayer/dash/e;

.field private u:Lio/bidmachine/media3/exoplayer/source/g0;

.field private v:Lkn/c;

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkn/f;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CC([1-4])=(.+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILkn/c;Ljn/b;ILio/bidmachine/media3/exoplayer/dash/a$a;Len/o;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;JLwn/k;Lwn/b;Lsn/e;Lio/bidmachine/media3/exoplayer/dash/f$b;Lhn/b2;)V
    .locals 9
    .param p6    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lwn/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    .line 2
    iput v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->a:I

    .line 3
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    move-object v6, p3

    .line 4
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->f:Ljn/b;

    .line 5
    iput v2, v0, Lio/bidmachine/media3/exoplayer/dash/c;->w:I

    .line 6
    iput-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/c;->b:Lio/bidmachine/media3/exoplayer/dash/a$a;

    move-object v6, p6

    .line 7
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->c:Len/o;

    .line 8
    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/c;->d:Lio/bidmachine/media3/exoplayer/drm/i;

    move-object/from16 v6, p9

    .line 9
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->p:Lio/bidmachine/media3/exoplayer/drm/h$a;

    move-object/from16 v6, p10

    .line 10
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->e:Lio/bidmachine/media3/exoplayer/upstream/b;

    move-object/from16 v6, p11

    .line 11
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->o:Lio/bidmachine/media3/exoplayer/source/s$a;

    move-wide/from16 v6, p12

    .line 12
    iput-wide v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->g:J

    move-object/from16 v6, p14

    .line 13
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->h:Lwn/k;

    .line 14
    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/c;->i:Lwn/b;

    move-object/from16 v6, p16

    .line 15
    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/c;->l:Lsn/e;

    move-object/from16 v7, p18

    .line 16
    iput-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/c;->q:Lhn/b2;

    const/4 v7, 0x1

    .line 17
    iput-boolean v7, v0, Lio/bidmachine/media3/exoplayer/dash/c;->y:Z

    .line 18
    new-instance v7, Lio/bidmachine/media3/exoplayer/dash/f;

    move-object/from16 v8, p17

    invoke-direct {v7, p2, v8, v5}, Lio/bidmachine/media3/exoplayer/dash/f;-><init>(Lkn/c;Lio/bidmachine/media3/exoplayer/dash/f$b;Lwn/b;)V

    iput-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/c;->m:Lio/bidmachine/media3/exoplayer/dash/f;

    const/4 v5, 0x0

    .line 19
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/dash/c;->z(I)[Ltn/h;

    move-result-object v7

    iput-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 20
    new-array v5, v5, [Lio/bidmachine/media3/exoplayer/dash/e;

    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/c;->t:[Lio/bidmachine/media3/exoplayer/dash/e;

    .line 21
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 22
    invoke-interface/range {p16 .. p16}, Lsn/e;->a()Lio/bidmachine/media3/exoplayer/source/g0;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 23
    invoke-virtual {p2, p4}, Lkn/c;->c(I)Lkn/g;

    move-result-object v1

    .line 24
    iget-object v2, v1, Lkn/g;->d:Ljava/util/List;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 25
    iget-object v1, v1, Lkn/g;->c:Ljava/util/List;

    .line 26
    invoke-static {v4, p5, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/c;->m(Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 27
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lsn/x;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/c;->j:Lsn/x;

    .line 28
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lio/bidmachine/media3/exoplayer/dash/c$a;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    return-void
.end method

.method private static B(Lkn/e;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/a;)[Lio/bidmachine/media3/common/a;
    .locals 7

    .line 1
    iget-object p0, p0, Lkn/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    filled-new-array {p2}, [Lio/bidmachine/media3/common/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, ";"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v0, p0

    .line 17
    new-array v0, v0, [Lio/bidmachine/media3/common/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, p0

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    aget-object v2, p0, v1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    filled-new-array {p2}, [Lio/bidmachine/media3/common/a;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p2}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v6, p2, Lio/bidmachine/media3/common/a;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, ":"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/a$b;->O(I)Lio/bidmachine/media3/common/a$b;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/4 v4, 0x2

    .line 84
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    aput-object v2, v0, v1

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-object v0
.end method

.method private D([Lvn/q;[Z[Lsn/s;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_4

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    aget-boolean v1, p2, v0

    .line 10
    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    :cond_0
    aget-object v1, p3, v0

    .line 14
    .line 15
    instance-of v2, v1, Ltn/h;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Ltn/h;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ltn/h;->G(Ltn/h$b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    instance-of v2, v1, Ltn/h$a;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    check-cast v1, Ltn/h$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Ltn/h$a;->b()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 35
    aput-object v1, p3, v0

    .line 36
    .line 37
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-void
.end method

.method private E([Lvn/q;[Lsn/s;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    aget-object v2, p2, v1

    .line 7
    .line 8
    instance-of v3, v2, Lsn/h;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    instance-of v2, v2, Ltn/h$a;

    .line 13
    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, v1, p3}, Lio/bidmachine/media3/exoplayer/dash/c;->t(I[I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    aget-object v2, p2, v1

    .line 24
    .line 25
    instance-of v2, v2, Lsn/h;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    aget-object v3, p2, v1

    .line 29
    .line 30
    instance-of v4, v3, Ltn/h$a;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    check-cast v3, Ltn/h$a;

    .line 35
    .line 36
    iget-object v3, v3, Ltn/h$a;->a:Ltn/h;

    .line 37
    .line 38
    aget-object v2, p2, v2

    .line 39
    .line 40
    if-ne v3, v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v0

    .line 45
    :goto_1
    if-nez v2, :cond_4

    .line 46
    .line 47
    aget-object v2, p2, v1

    .line 48
    .line 49
    instance-of v3, v2, Ltn/h$a;

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    check-cast v2, Ltn/h$a;

    .line 54
    .line 55
    invoke-virtual {v2}, Ltn/h$a;->b()V

    .line 56
    .line 57
    .line 58
    :cond_3
    const/4 v2, 0x0

    .line 59
    aput-object v2, p2, v1

    .line 60
    .line 61
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    return-void
.end method

.method private F([Lvn/q;[Lsn/s;[ZJ[I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ge v1, v2, :cond_4

    .line 6
    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    aget-object v4, p2, v1

    .line 13
    .line 14
    if-nez v4, :cond_2

    .line 15
    .line 16
    aput-boolean v3, p3, v1

    .line 17
    .line 18
    aget v3, p6, v1

    .line 19
    .line 20
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 21
    .line 22
    aget-object v3, v4, v3

    .line 23
    .line 24
    iget v4, v3, Lio/bidmachine/media3/exoplayer/dash/c$a;->c:I

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v3, v2, p4, p5}, Lio/bidmachine/media3/exoplayer/dash/c;->l(Lio/bidmachine/media3/exoplayer/dash/c$a;Lvn/q;J)Ltn/h;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aput-object v2, p2, v1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x2

    .line 36
    if-ne v4, v5, :cond_3

    .line 37
    .line 38
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 39
    .line 40
    iget v3, v3, Lio/bidmachine/media3/exoplayer/dash/c$a;->d:I

    .line 41
    .line 42
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lkn/f;

    .line 47
    .line 48
    invoke-interface {v2}, Lvn/t;->getTrackGroup()Lzm/b0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lzm/b0;->a(I)Lio/bidmachine/media3/common/a;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v4, Lio/bidmachine/media3/exoplayer/dash/e;

    .line 57
    .line 58
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    .line 59
    .line 60
    iget-boolean v5, v5, Lkn/c;->d:Z

    .line 61
    .line 62
    invoke-direct {v4, v3, v2, v5}, Lio/bidmachine/media3/exoplayer/dash/e;-><init>(Lkn/f;Lio/bidmachine/media3/common/a;Z)V

    .line 63
    .line 64
    .line 65
    aput-object v4, p2, v1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    instance-of v3, v4, Ltn/h;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    check-cast v4, Ltn/h;

    .line 73
    .line 74
    invoke-virtual {v4}, Ltn/h;->u()Ltn/i;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/a;

    .line 79
    .line 80
    invoke-interface {v3, v2}, Lio/bidmachine/media3/exoplayer/dash/a;->d(Lvn/q;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_2
    array-length p3, p1

    .line 87
    if-ge v0, p3, :cond_7

    .line 88
    .line 89
    aget-object p3, p2, v0

    .line 90
    .line 91
    if-nez p3, :cond_6

    .line 92
    .line 93
    aget-object p3, p1, v0

    .line 94
    .line 95
    if-eqz p3, :cond_6

    .line 96
    .line 97
    aget p3, p6, v0

    .line 98
    .line 99
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 100
    .line 101
    aget-object p3, v1, p3

    .line 102
    .line 103
    iget v1, p3, Lio/bidmachine/media3/exoplayer/dash/c$a;->c:I

    .line 104
    .line 105
    if-ne v1, v3, :cond_6

    .line 106
    .line 107
    invoke-direct {p0, v0, p6}, Lio/bidmachine/media3/exoplayer/dash/c;->t(I[I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, -0x1

    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    new-instance p3, Lsn/h;

    .line 115
    .line 116
    invoke-direct {p3}, Lsn/h;-><init>()V

    .line 117
    .line 118
    .line 119
    aput-object p3, p2, v0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    aget-object v1, p2, v1

    .line 123
    .line 124
    check-cast v1, Ltn/h;

    .line 125
    .line 126
    iget p3, p3, Lio/bidmachine/media3/exoplayer/dash/c$a;->b:I

    .line 127
    .line 128
    invoke-virtual {v1, p4, p5, p3}, Ltn/h;->J(JI)Ltn/h$a;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    aput-object p3, p2, v0

    .line 133
    .line 134
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    return-void
.end method

.method public static synthetic h(Ltn/h;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/dash/c;->x(Ltn/h;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static j(Ljava/util/List;[Lzm/b0;[Lio/bidmachine/media3/exoplayer/dash/c$a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/f;",
            ">;[",
            "Lzm/b0;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/c$a;",
            "I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lkn/f;

    .line 13
    .line 14
    new-instance v2, Lio/bidmachine/media3/common/a$b;

    .line 15
    .line 16
    invoke-direct {v2}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lkn/f;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "application/x-emsg"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lkn/f;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ":"

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v3, Lzm/b0;

    .line 62
    .line 63
    filled-new-array {v2}, [Lio/bidmachine/media3/common/a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v3, v1, v2}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 68
    .line 69
    .line 70
    aput-object v3, p1, p3

    .line 71
    .line 72
    add-int/lit8 v1, p3, 0x1

    .line 73
    .line 74
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/c$a;->c(I)Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    aput-object v2, p2, p3

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    move p3, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private static k(Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Lio/bidmachine/media3/common/a;[Lzm/b0;[Lio/bidmachine/media3/exoplayer/dash/c$a;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/drm/i;",
            "Lio/bidmachine/media3/exoplayer/dash/a$a;",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;[[II[Z[[",
            "Lio/bidmachine/media3/common/a;",
            "[",
            "Lzm/b0;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/c$a;",
            ")I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move/from16 v3, p4

    .line 7
    .line 8
    move v4, v2

    .line 9
    move v5, v4

    .line 10
    :goto_0
    if-ge v4, v3, :cond_7

    .line 11
    .line 12
    aget-object v6, p3, v4

    .line 13
    .line 14
    new-instance v7, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    array-length v8, v6

    .line 20
    move v9, v2

    .line 21
    :goto_1
    if-ge v9, v8, :cond_0

    .line 22
    .line 23
    aget v10, v6, v9

    .line 24
    .line 25
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    check-cast v10, Lkn/a;

    .line 30
    .line 31
    iget-object v10, v10, Lkn/a;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v9, v9, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    new-array v9, v8, [Lio/bidmachine/media3/common/a;

    .line 44
    .line 45
    move v10, v2

    .line 46
    :goto_2
    if-ge v10, v8, :cond_1

    .line 47
    .line 48
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    check-cast v11, Lkn/j;

    .line 53
    .line 54
    iget-object v11, v11, Lkn/j;->b:Lio/bidmachine/media3/common/a;

    .line 55
    .line 56
    invoke-virtual {v11}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    move-object/from16 v13, p0

    .line 61
    .line 62
    invoke-interface {v13, v11}, Lio/bidmachine/media3/exoplayer/drm/i;->a(Lio/bidmachine/media3/common/a;)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    invoke-virtual {v12, v11}, Lio/bidmachine/media3/common/a$b;->V(I)Lio/bidmachine/media3/common/a$b;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-virtual {v11}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    aput-object v11, v9, v10

    .line 75
    .line 76
    add-int/lit8 v10, v10, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    move-object/from16 v13, p0

    .line 80
    .line 81
    aget v7, v6, v2

    .line 82
    .line 83
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Lkn/a;

    .line 88
    .line 89
    iget-wide v10, v7, Lkn/a;->a:J

    .line 90
    .line 91
    const-wide/16 v14, -0x1

    .line 92
    .line 93
    cmp-long v8, v10, v14

    .line 94
    .line 95
    if-eqz v8, :cond_2

    .line 96
    .line 97
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v10, "unset:"

    .line 108
    .line 109
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    :goto_3
    add-int/lit8 v10, v5, 0x1

    .line 120
    .line 121
    aget-boolean v11, p5, v4

    .line 122
    .line 123
    const/4 v12, -0x1

    .line 124
    if-eqz v11, :cond_3

    .line 125
    .line 126
    add-int/lit8 v11, v5, 0x2

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_3
    move v11, v10

    .line 130
    move v10, v12

    .line 131
    :goto_4
    aget-object v14, p6, v4

    .line 132
    .line 133
    array-length v14, v14

    .line 134
    if-eqz v14, :cond_4

    .line 135
    .line 136
    add-int/lit8 v14, v11, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_4
    move v14, v11

    .line 140
    move v11, v12

    .line 141
    :goto_5
    invoke-static {v0, v9}, Lio/bidmachine/media3/exoplayer/dash/c;->y(Lio/bidmachine/media3/exoplayer/dash/a$a;[Lio/bidmachine/media3/common/a;)V

    .line 142
    .line 143
    .line 144
    new-instance v15, Lzm/b0;

    .line 145
    .line 146
    invoke-direct {v15, v8, v9}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 147
    .line 148
    .line 149
    aput-object v15, p7, v5

    .line 150
    .line 151
    iget v7, v7, Lkn/a;->b:I

    .line 152
    .line 153
    invoke-static {v7, v6, v5, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/c$a;->d(I[IIII)Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    aput-object v7, p8, v5

    .line 158
    .line 159
    if-eq v10, v12, :cond_5

    .line 160
    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v9, ":emsg"

    .line 170
    .line 171
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    new-instance v9, Lio/bidmachine/media3/common/a$b;

    .line 179
    .line 180
    invoke-direct {v9}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v7}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    const-string v15, "application/x-emsg"

    .line 188
    .line 189
    invoke-virtual {v9, v15}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v9}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    new-instance v15, Lzm/b0;

    .line 198
    .line 199
    filled-new-array {v9}, [Lio/bidmachine/media3/common/a;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-direct {v15, v7, v9}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 204
    .line 205
    .line 206
    aput-object v15, p7, v10

    .line 207
    .line 208
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/dash/c$a;->b([II)Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    aput-object v7, p8, v10

    .line 213
    .line 214
    :cond_5
    if-eq v11, v12, :cond_6

    .line 215
    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v8, ":cc"

    .line 225
    .line 226
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    aget-object v8, p6, v4

    .line 234
    .line 235
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->v([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    invoke-static {v6, v5, v8}, Lio/bidmachine/media3/exoplayer/dash/c$a;->a([IILcom/google/common/collect/ImmutableList;)Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    aput-object v5, p8, v11

    .line 244
    .line 245
    aget-object v5, p6, v4

    .line 246
    .line 247
    invoke-static {v0, v5}, Lio/bidmachine/media3/exoplayer/dash/c;->y(Lio/bidmachine/media3/exoplayer/dash/a$a;[Lio/bidmachine/media3/common/a;)V

    .line 248
    .line 249
    .line 250
    new-instance v5, Lzm/b0;

    .line 251
    .line 252
    aget-object v6, p6, v4

    .line 253
    .line 254
    invoke-direct {v5, v7, v6}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 255
    .line 256
    .line 257
    aput-object v5, p7, v11

    .line 258
    .line 259
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 260
    .line 261
    move v5, v14

    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_7
    return v5
.end method

.method private l(Lio/bidmachine/media3/exoplayer/dash/c$a;Lvn/q;J)Ltn/h;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/c$a;",
            "Lvn/q;",
            "J)",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v1, v0, Lio/bidmachine/media3/exoplayer/dash/c$a;->f:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    if-eq v1, v4, :cond_0

    .line 11
    .line 12
    move/from16 v26, v2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v26, v3

    .line 16
    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    if-eqz v26, :cond_1

    .line 19
    .line 20
    iget-object v6, v15, Lio/bidmachine/media3/exoplayer/dash/c;->j:Lsn/x;

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Lsn/x;->b(I)Lzm/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move v6, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v6, v3

    .line 29
    move-object v1, v5

    .line 30
    :goto_1
    iget v7, v0, Lio/bidmachine/media3/exoplayer/dash/c$a;->g:I

    .line 31
    .line 32
    if-eq v7, v4, :cond_2

    .line 33
    .line 34
    iget-object v4, v15, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 35
    .line 36
    aget-object v4, v4, v7

    .line 37
    .line 38
    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/dash/c$a;->h:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :goto_2
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    add-int/2addr v6, v7

    .line 50
    new-array v7, v6, [Lio/bidmachine/media3/common/a;

    .line 51
    .line 52
    new-array v6, v6, [I

    .line 53
    .line 54
    if-eqz v26, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lzm/b0;->a(I)Lio/bidmachine/media3/common/a;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    aput-object v1, v7, v3

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    aput v1, v6, v3

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v1, v3

    .line 68
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-ge v3, v9, :cond_4

    .line 78
    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lio/bidmachine/media3/common/a;

    .line 84
    .line 85
    aput-object v9, v7, v1

    .line 86
    .line 87
    const/4 v10, 0x3

    .line 88
    aput v10, v6, v1

    .line 89
    .line 90
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/2addr v1, v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    iget-object v1, v15, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    .line 98
    .line 99
    iget-boolean v1, v1, Lkn/c;->d:Z

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    if-eqz v26, :cond_5

    .line 104
    .line 105
    iget-object v1, v15, Lio/bidmachine/media3/exoplayer/dash/c;->m:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 106
    .line 107
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/f;->k()Lio/bidmachine/media3/exoplayer/dash/f$c;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    :cond_5
    move-object v14, v5

    .line 112
    iget-object v1, v15, Lio/bidmachine/media3/exoplayer/dash/c;->b:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 113
    .line 114
    iget-object v2, v15, Lio/bidmachine/media3/exoplayer/dash/c;->h:Lwn/k;

    .line 115
    .line 116
    iget-object v3, v15, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    .line 117
    .line 118
    iget-object v4, v15, Lio/bidmachine/media3/exoplayer/dash/c;->f:Ljn/b;

    .line 119
    .line 120
    iget v5, v15, Lio/bidmachine/media3/exoplayer/dash/c;->w:I

    .line 121
    .line 122
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/dash/c$a;->a:[I

    .line 123
    .line 124
    iget v10, v0, Lio/bidmachine/media3/exoplayer/dash/c$a;->b:I

    .line 125
    .line 126
    iget-wide v11, v15, Lio/bidmachine/media3/exoplayer/dash/c;->g:J

    .line 127
    .line 128
    iget-object v13, v15, Lio/bidmachine/media3/exoplayer/dash/c;->c:Len/o;

    .line 129
    .line 130
    move-object/from16 v32, v7

    .line 131
    .line 132
    iget-object v7, v15, Lio/bidmachine/media3/exoplayer/dash/c;->q:Lhn/b2;

    .line 133
    .line 134
    const/16 v31, 0x0

    .line 135
    .line 136
    move-object/from16 v16, v1

    .line 137
    .line 138
    move-object/from16 v17, v2

    .line 139
    .line 140
    move-object/from16 v18, v3

    .line 141
    .line 142
    move-object/from16 v19, v4

    .line 143
    .line 144
    move/from16 v20, v5

    .line 145
    .line 146
    move-object/from16 v21, v9

    .line 147
    .line 148
    move-object/from16 v22, p2

    .line 149
    .line 150
    move/from16 v23, v10

    .line 151
    .line 152
    move-wide/from16 v24, v11

    .line 153
    .line 154
    move-object/from16 v27, v8

    .line 155
    .line 156
    move-object/from16 v28, v14

    .line 157
    .line 158
    move-object/from16 v29, v13

    .line 159
    .line 160
    move-object/from16 v30, v7

    .line 161
    .line 162
    invoke-interface/range {v16 .. v31}, Lio/bidmachine/media3/exoplayer/dash/a$a;->e(Lwn/k;Lkn/c;Ljn/b;I[ILvn/q;IJZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/f$c;Len/o;Lhn/b2;Lwn/e;)Lio/bidmachine/media3/exoplayer/dash/a;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    new-instance v13, Ltn/h;

    .line 167
    .line 168
    iget v2, v0, Lio/bidmachine/media3/exoplayer/dash/c$a;->b:I

    .line 169
    .line 170
    iget-object v7, v15, Lio/bidmachine/media3/exoplayer/dash/c;->i:Lwn/b;

    .line 171
    .line 172
    iget-object v10, v15, Lio/bidmachine/media3/exoplayer/dash/c;->d:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 173
    .line 174
    iget-object v11, v15, Lio/bidmachine/media3/exoplayer/dash/c;->p:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 175
    .line 176
    iget-object v12, v15, Lio/bidmachine/media3/exoplayer/dash/c;->e:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 177
    .line 178
    iget-object v0, v15, Lio/bidmachine/media3/exoplayer/dash/c;->o:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 179
    .line 180
    iget-boolean v8, v15, Lio/bidmachine/media3/exoplayer/dash/c;->y:Z

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    move-object v1, v13

    .line 185
    move-object v3, v6

    .line 186
    move-object/from16 v4, v32

    .line 187
    .line 188
    move-object/from16 v6, p0

    .line 189
    .line 190
    move/from16 v17, v8

    .line 191
    .line 192
    move-wide/from16 v8, p3

    .line 193
    .line 194
    move-object/from16 v33, v13

    .line 195
    .line 196
    move-object v13, v0

    .line 197
    move-object v0, v14

    .line 198
    move/from16 v14, v17

    .line 199
    .line 200
    move-object/from16 v15, v16

    .line 201
    .line 202
    invoke-direct/range {v1 .. v15}, Ltn/h;-><init>(I[I[Lio/bidmachine/media3/common/a;Ltn/i;Lio/bidmachine/media3/exoplayer/source/g0$a;Lwn/b;JLio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;ZLxn/a;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v1, p0

    .line 206
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 209
    .line 210
    move-object/from16 v3, v33

    .line 211
    .line 212
    invoke-virtual {v2, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    monitor-exit p0

    .line 216
    return-object v3

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw v0
.end method

.method private static m(Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/drm/i;",
            "Lio/bidmachine/media3/exoplayer/dash/a$a;",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;",
            "Ljava/util/List<",
            "Lkn/f;",
            ">;)",
            "Landroid/util/Pair<",
            "Lsn/x;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/dash/c;->s(Ljava/util/List;)[[I

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    array-length v4, v3

    .line 6
    new-array v5, v4, [Z

    .line 7
    .line 8
    new-array v6, v4, [[Lio/bidmachine/media3/common/a;

    .line 9
    .line 10
    invoke-static {v4, p2, v3, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/c;->w(ILjava/util/List;[[I[Z[[Lio/bidmachine/media3/common/a;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v4

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    new-array v9, v0, [Lzm/b0;

    .line 21
    .line 22
    new-array v10, v0, [Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-object v7, v9

    .line 28
    move-object v8, v10

    .line 29
    invoke-static/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/c;->k(Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Lio/bidmachine/media3/common/a;[Lzm/b0;[Lio/bidmachine/media3/exoplayer/dash/c$a;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p3, v9, v10, p0}, Lio/bidmachine/media3/exoplayer/dash/c;->j(Ljava/util/List;[Lzm/b0;[Lio/bidmachine/media3/exoplayer/dash/c$a;I)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lsn/x;

    .line 37
    .line 38
    invoke-direct {p0, v9}, Lsn/x;-><init>([Lzm/b0;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static n(Lkn/a;Lkn/a;)Z
    .locals 4

    .line 1
    iget v0, p0, Lkn/a;->b:I

    .line 2
    .line 3
    iget v1, p1, Lkn/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lkn/a;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p1, Lkn/a;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lkn/a;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lkn/j;

    .line 34
    .line 35
    iget-object p0, p0, Lkn/j;->b:Lio/bidmachine/media3/common/a;

    .line 36
    .line 37
    iget-object p1, p1, Lkn/a;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lkn/j;

    .line 44
    .line 45
    iget-object p1, p1, Lkn/j;->b:Lio/bidmachine/media3/common/a;

    .line 46
    .line 47
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget p0, p0, Lio/bidmachine/media3/common/a;->f:I

    .line 58
    .line 59
    iget p1, p1, Lio/bidmachine/media3/common/a;->f:I

    .line 60
    .line 61
    if-ne p0, p1, :cond_2

    .line 62
    .line 63
    move v2, v1

    .line 64
    :cond_2
    return v2

    .line 65
    :cond_3
    :goto_0
    return v1
.end method

.method private static o(Ljava/util/List;)Lkn/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;)",
            "Lkn/e;"
        }
    .end annotation

    .line 1
    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)Lkn/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static p(Ljava/util/List;Ljava/lang/String;)Lkn/e;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkn/e;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lkn/e;

    .line 13
    .line 14
    iget-object v2, v1, Lkn/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static q(Ljava/util/List;)Lkn/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;)",
            "Lkn/e;"
        }
    .end annotation

    .line 1
    const-string v0, "http://dashif.org/guidelines/trickmode"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)Lkn/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static r(Ljava/util/List;[I)[Lio/bidmachine/media3/common/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;[I)[",
            "Lio/bidmachine/media3/common/a;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Lkn/a;

    .line 13
    .line 14
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lkn/a;

    .line 19
    .line 20
    iget-object v3, v3, Lkn/a;->d:Ljava/util/List;

    .line 21
    .line 22
    move v5, v1

    .line 23
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v5, v6, :cond_2

    .line 28
    .line 29
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lkn/e;

    .line 34
    .line 35
    iget-object v7, v6, Lkn/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    .line 38
    .line 39
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    new-instance p0, Lio/bidmachine/media3/common/a$b;

    .line 46
    .line 47
    invoke-direct {p0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string p1, "application/cea-608"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-wide v0, v4, Lkn/a;->a:J

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ":cea608"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Lio/bidmachine/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    invoke-static {v6, p1, p0}, Lio/bidmachine/media3/exoplayer/dash/c;->B(Lkn/e;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/a;)[Lio/bidmachine/media3/common/a;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_0
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    .line 91
    .line 92
    iget-object v8, v6, Lkn/e;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    new-instance p0, Lio/bidmachine/media3/common/a$b;

    .line 101
    .line 102
    invoke-direct {p0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string p1, "application/cea-708"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-wide v0, v4, Lkn/a;->a:J

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ":cea708"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    sget-object p1, Lio/bidmachine/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    .line 139
    .line 140
    invoke-static {v6, p1, p0}, Lio/bidmachine/media3/exoplayer/dash/c;->B(Lkn/e;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/a;)[Lio/bidmachine/media3/common/a;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_3
    new-array p0, v1, [Lio/bidmachine/media3/common/a;

    .line 153
    .line 154
    return-object p0
.end method

.method private static s(Ljava/util/List;)[[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;)[[I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/Maps;->e(I)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    if-ge v5, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lkn/a;

    .line 28
    .line 29
    iget-wide v6, v6, Lkn/a;->a:J

    .line 30
    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v5, v4

    .line 64
    :goto_1
    if-ge v5, v0, :cond_6

    .line 65
    .line 66
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lkn/a;

    .line 71
    .line 72
    iget-object v7, v6, Lkn/a;->e:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/dash/c;->q(Ljava/util/List;)Lkn/e;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    iget-object v7, v6, Lkn/a;->f:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/dash/c;->q(Ljava/util/List;)Lkn/e;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    :cond_1
    if-eqz v7, :cond_2

    .line 87
    .line 88
    iget-object v7, v7, Lkn/e;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v7, v5

    .line 112
    :goto_2
    if-ne v7, v5, :cond_4

    .line 113
    .line 114
    iget-object v8, v6, Lkn/a;->f:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v8}, Lio/bidmachine/media3/exoplayer/dash/c;->o(Ljava/util/List;)Lkn/e;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    iget-object v8, v8, Lkn/e;->b:Ljava/lang/String;

    .line 123
    .line 124
    const-string v9, ","

    .line 125
    .line 126
    invoke-static {v8, v9}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    array-length v9, v8

    .line 131
    move v10, v4

    .line 132
    :goto_3
    if-ge v10, v9, :cond_4

    .line 133
    .line 134
    aget-object v11, v8, v10

    .line 135
    .line 136
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v11

    .line 140
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v11, Ljava/lang/Integer;

    .line 149
    .line 150
    if-eqz v11, :cond_3

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Lkn/a;

    .line 161
    .line 162
    invoke-static {v6, v12}, Lio/bidmachine/media3/exoplayer/dash/c;->n(Lkn/a;Lkn/a;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_3

    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    if-eq v7, v5, :cond_5

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Ljava/util/List;

    .line 186
    .line 187
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    check-cast v7, Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    new-array v0, p0, [[I

    .line 211
    .line 212
    :goto_4
    if-ge v4, p0, :cond_7

    .line 213
    .line 214
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Ljava/util/Collection;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->m(Ljava/util/Collection;)[I

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    aput-object v1, v0, v4

    .line 225
    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 227
    .line 228
    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    return-object v0
.end method

.method private t(I[I)I
    .locals 4

    .line 1
    aget p1, p2, p1

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 8
    .line 9
    aget-object p1, v1, p1

    .line 10
    .line 11
    iget p1, p1, Lio/bidmachine/media3/exoplayer/dash/c$a;->e:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p2

    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    aget v2, p2, v1

    .line 18
    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/c;->k:[Lio/bidmachine/media3/exoplayer/dash/c$a;

    .line 22
    .line 23
    aget-object v2, v3, v2

    .line 24
    .line 25
    iget v2, v2, Lio/bidmachine/media3/exoplayer/dash/c$a;->c:I

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v0
.end method

.method private u([Lvn/q;)[I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/c;->j:Lsn/x;

    .line 13
    .line 14
    invoke-interface {v2}, Lvn/t;->getTrackGroup()Lzm/b0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Lsn/x;->d(Lzm/b0;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, -0x1

    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static v(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;[I)Z"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lkn/a;

    .line 13
    .line 14
    iget-object v3, v3, Lkn/a;->c:Ljava/util/List;

    .line 15
    .line 16
    move v4, v1

    .line 17
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v4, v5, :cond_1

    .line 22
    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lkn/j;

    .line 28
    .line 29
    iget-object v5, v5, Lkn/j;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v1
.end method

.method private static w(ILjava/util/List;[[I[Z[[Lio/bidmachine/media3/common/a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lkn/a;",
            ">;[[I[Z[[",
            "Lio/bidmachine/media3/common/a;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p0, :cond_2

    .line 4
    .line 5
    aget-object v2, p2, v0

    .line 6
    .line 7
    invoke-static {p1, v2}, Lio/bidmachine/media3/exoplayer/dash/c;->v(Ljava/util/List;[I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-boolean v2, p3, v0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    :cond_0
    aget-object v2, p2, v0

    .line 19
    .line 20
    invoke-static {p1, v2}, Lio/bidmachine/media3/exoplayer/dash/c;->r(Ljava/util/List;[I)[Lio/bidmachine/media3/common/a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, p4, v0

    .line 25
    .line 26
    array-length v2, v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v1
.end method

.method private static synthetic x(Ltn/h;)Ljava/util/List;
    .locals 0

    .line 1
    iget p0, p0, Ltn/h;->a:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static y(Lio/bidmachine/media3/exoplayer/dash/a$a;[Lio/bidmachine/media3/common/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lio/bidmachine/media3/exoplayer/dash/a$a;->d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    aput-object v1, p1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method private static z(I)[Ltn/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Ltn/h;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Ltn/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->r:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->m:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/f;->o()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ltn/h;->G(Ltn/h$b;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->r:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 22
    .line 23
    return-void
.end method

.method public G(Lkn/c;I)V
    .locals 9

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/media3/exoplayer/dash/c;->w:I

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->m:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/f;->q(Lkn/c;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ltn/h;->u()Ltn/i;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/a;

    .line 26
    .line 27
    invoke-interface {v4, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/a;->c(Lkn/c;I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->r:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 34
    .line 35
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, p2}, Lkn/c;->c(I)Lkn/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lkn/g;->d:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->t:[Lio/bidmachine/media3/exoplayer/dash/e;

    .line 47
    .line 48
    array-length v2, v0

    .line 49
    move v3, v1

    .line 50
    :goto_1
    if-ge v3, v2, :cond_5

    .line 51
    .line 52
    aget-object v4, v0, v3

    .line 53
    .line 54
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lkn/f;

    .line 71
    .line 72
    invoke-virtual {v6}, Lkn/f;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/dash/e;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Lkn/c;->d()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v7, 0x1

    .line 91
    sub-int/2addr v5, v7

    .line 92
    iget-boolean v8, p1, Lkn/c;->d:Z

    .line 93
    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    if-ne p2, v5, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v7, v1

    .line 100
    :goto_2
    invoke-virtual {v4, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/e;->d(Lkn/f;Z)V

    .line 101
    .line 102
    .line 103
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    return-void
.end method

.method public a(JLgn/i0;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget v4, v3, Ltn/h;->a:I

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p1, p2, p3}, Ltn/h;->a(JLgn/i0;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-wide p1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/k1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/g0;->b(Lio/bidmachine/media3/exoplayer/k1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public declared-synchronized c(Ltn/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltn/h<",
            "Lio/bidmachine/media3/exoplayer/dash/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/f$c;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/dash/f$c;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2, p3}, Ltn/h;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->r:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/q$a;->d(Lio/bidmachine/media3/exoplayer/source/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/source/g0;)V
    .locals 0

    .line 1
    check-cast p1, Ltn/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/c;->A(Ltn/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lsn/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->j:Lsn/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public i([Lvn/q;[Z[Lsn/s;[ZJ)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/c;->u([Lvn/q;)[I

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/dash/c;->D([Lvn/q;[Z[Lsn/s;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p3, v6}, Lio/bidmachine/media3/exoplayer/dash/c;->E([Lvn/q;[Lsn/s;[I)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-wide v4, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/c;->F([Lvn/q;[Lsn/s;[ZJ[I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length p4, p3

    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    :goto_0
    if-ge v1, p4, :cond_2

    .line 33
    .line 34
    aget-object v2, p3, v1

    .line 35
    .line 36
    instance-of v3, v2, Ltn/h;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    check-cast v2, Ltn/h;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v3, v2, Lio/bidmachine/media3/exoplayer/dash/e;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/e;

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/dash/c;->z(I)[Ltn/h;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    new-array p3, p3, [Lio/bidmachine/media3/exoplayer/dash/e;

    .line 76
    .line 77
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/c;->t:[Lio/bidmachine/media3/exoplayer/dash/e;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/c;->l:Lsn/e;

    .line 83
    .line 84
    new-instance p3, Lio/bidmachine/media3/exoplayer/dash/b;

    .line 85
    .line 86
    invoke-direct {p3}, Lio/bidmachine/media3/exoplayer/dash/b;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p3}, Lcom/google/common/collect/Lists;->l(Ljava/util/List;Lh7/e;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-interface {p2, p1, p3}, Lsn/e;->b(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/g0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 98
    .line 99
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/dash/c;->y:Z

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->y:Z

    .line 104
    .line 105
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/c;->z:J

    .line 106
    .line 107
    :cond_3
    return-wide p5
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->h:Lwn/k;

    .line 2
    .line 3
    invoke-interface {v0}, Lwn/k;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public readDiscontinuity()J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ltn/h;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->z:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ltn/h;->isLoading()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/c;->v:Lkn/c;

    .line 16
    .line 17
    iget v5, p0, Lio/bidmachine/media3/exoplayer/dash/c;->w:I

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Lkn/c;->f(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {v3, v4, v5}, Ltn/h;->t(J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->u:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/g0;->reevaluateBuffer(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->s:[Ltn/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p1, p2}, Ltn/h;->I(J)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/c;->t:[Lio/bidmachine/media3/exoplayer/dash/e;

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    :goto_1
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/e;->b(J)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return-wide p1
.end method
