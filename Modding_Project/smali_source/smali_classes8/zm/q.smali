.class public final Lzm/q;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/q$e;,
        Lzm/q$h;,
        Lzm/q$g;,
        Lzm/q$i;,
        Lzm/q$c;,
        Lzm/q$d;,
        Lzm/q$j;,
        Lzm/q$k;,
        Lzm/q$b;,
        Lzm/q$f;
    }
.end annotation


# static fields
.field public static final i:Lzm/q;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lzm/q$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lzm/q$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:Lzm/q$g;

.field public final e:Lzm/s;

.field public final f:Lzm/q$d;

.field public final g:Lzm/q$e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final h:Lzm/q$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm/q$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/q$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lzm/q$c;->a()Lzm/q;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lzm/q;->i:Lzm/q;

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
    sput-object v0, Lzm/q;->j:Ljava/lang/String;

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
    sput-object v0, Lzm/q;->k:Ljava/lang/String;

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
    sput-object v0, Lzm/q;->l:Ljava/lang/String;

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
    sput-object v0, Lzm/q;->m:Ljava/lang/String;

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
    sput-object v0, Lzm/q;->n:Ljava/lang/String;

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
    sput-object v0, Lzm/q;->o:Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lzm/q$e;Lzm/q$h;Lzm/q$g;Lzm/s;Lzm/q$i;)V
    .locals 0
    .param p3    # Lzm/q$h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzm/q;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lzm/q;->b:Lzm/q$h;

    .line 5
    iput-object p3, p0, Lzm/q;->c:Lzm/q$h;

    .line 6
    iput-object p4, p0, Lzm/q;->d:Lzm/q$g;

    .line 7
    iput-object p5, p0, Lzm/q;->e:Lzm/s;

    .line 8
    iput-object p2, p0, Lzm/q;->f:Lzm/q$d;

    .line 9
    iput-object p2, p0, Lzm/q;->g:Lzm/q$e;

    .line 10
    iput-object p6, p0, Lzm/q;->h:Lzm/q$i;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lzm/q$e;Lzm/q$h;Lzm/q$g;Lzm/s;Lzm/q$i;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lzm/q;-><init>(Ljava/lang/String;Lzm/q$e;Lzm/q$h;Lzm/q$g;Lzm/s;Lzm/q$i;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lzm/q;
    .locals 1

    .line 1
    new-instance v0, Lzm/q$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/q$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lzm/q$c;->g(Ljava/lang/String;)Lzm/q$c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lzm/q$c;->a()Lzm/q;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public a()Lzm/q$c;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$c;-><init>(Lzm/q;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lzm/q;

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
    check-cast p1, Lzm/q;

    .line 12
    .line 13
    iget-object v1, p0, Lzm/q;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lzm/q;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lzm/q;->f:Lzm/q$d;

    .line 24
    .line 25
    iget-object v3, p1, Lzm/q;->f:Lzm/q$d;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lzm/q$d;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lzm/q;->b:Lzm/q$h;

    .line 34
    .line 35
    iget-object v3, p1, Lzm/q;->b:Lzm/q$h;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lzm/q;->d:Lzm/q$g;

    .line 44
    .line 45
    iget-object v3, p1, Lzm/q;->d:Lzm/q$g;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lzm/q;->e:Lzm/s;

    .line 54
    .line 55
    iget-object v3, p1, Lzm/q;->e:Lzm/s;

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lzm/q;->h:Lzm/q$i;

    .line 64
    .line 65
    iget-object p1, p1, Lzm/q;->h:Lzm/q$i;

    .line 66
    .line 67
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v2

    .line 75
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lzm/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lzm/q;->b:Lzm/q$h;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lzm/q$h;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lzm/q;->d:Lzm/q$g;

    .line 23
    .line 24
    invoke-virtual {v1}, Lzm/q$g;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lzm/q;->f:Lzm/q$d;

    .line 32
    .line 33
    invoke-virtual {v1}, Lzm/q$d;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Lzm/q;->e:Lzm/s;

    .line 41
    .line 42
    invoke-virtual {v1}, Lzm/s;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, Lzm/q;->h:Lzm/q$i;

    .line 50
    .line 51
    invoke-virtual {v1}, Lzm/q$i;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    return v0
.end method
