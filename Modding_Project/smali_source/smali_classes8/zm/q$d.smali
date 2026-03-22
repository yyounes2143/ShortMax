.class public Lzm/q$d;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/q$d$a;
    }
.end annotation


# static fields
.field public static final h:Lzm/q$d;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field static final n:Ljava/lang/String;

.field static final o:Ljava/lang/String;


# instance fields
.field public final a:J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final b:J
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm/q$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/q$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lzm/q$d$a;->f()Lzm/q$d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lzm/q$d;->h:Lzm/q$d;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lzm/q$d;->i:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lzm/q$d;->j:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lzm/q$d;->k:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lzm/q$d;->l:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lzm/q$d;->m:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lzm/q$d;->n:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v0, 0x6

    .line 55
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lzm/q$d;->o:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>(Lzm/q$d$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzm/q$d$a;->a(Lzm/q$d$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzm/q$d;->a:J

    .line 4
    invoke-static {p1}, Lzm/q$d$a;->b(Lzm/q$d$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzm/q$d;->c:J

    .line 5
    invoke-static {p1}, Lzm/q$d$a;->a(Lzm/q$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lzm/q$d;->b:J

    .line 6
    invoke-static {p1}, Lzm/q$d$a;->b(Lzm/q$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lzm/q$d;->d:J

    .line 7
    invoke-static {p1}, Lzm/q$d$a;->c(Lzm/q$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lzm/q$d;->e:Z

    .line 8
    invoke-static {p1}, Lzm/q$d$a;->d(Lzm/q$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lzm/q$d;->f:Z

    .line 9
    invoke-static {p1}, Lzm/q$d$a;->e(Lzm/q$d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lzm/q$d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$d$a;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$d;-><init>(Lzm/q$d$a;)V

    return-void
.end method


# virtual methods
.method public a()Lzm/q$d$a;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$d$a;-><init>(Lzm/q$d;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lzm/q$d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lzm/q$d;

    .line 12
    .line 13
    iget-wide v3, p0, Lzm/q$d;->b:J

    .line 14
    .line 15
    iget-wide v5, p1, Lzm/q$d;->b:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lzm/q$d;->d:J

    .line 22
    .line 23
    iget-wide v5, p1, Lzm/q$d;->d:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-boolean v1, p0, Lzm/q$d;->e:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lzm/q$d;->e:Z

    .line 32
    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    iget-boolean v1, p0, Lzm/q$d;->f:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lzm/q$d;->f:Z

    .line 38
    .line 39
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    iget-boolean v1, p0, Lzm/q$d;->g:Z

    .line 42
    .line 43
    iget-boolean p1, p1, Lzm/q$d;->g:Z

    .line 44
    .line 45
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lzm/q$d;->b:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v3, p0, Lzm/q$d;->d:J

    .line 12
    .line 13
    ushr-long v1, v3, v2

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v1, p0, Lzm/q$d;->e:Z

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v1, p0, Lzm/q$d;->f:Z

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-boolean v1, p0, Lzm/q$d;->g:Z

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method
