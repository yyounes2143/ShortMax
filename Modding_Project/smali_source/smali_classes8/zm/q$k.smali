.class public Lzm/q$k;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/q$k$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lzm/q$k;->h:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lzm/q$k;->i:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lzm/q$k;->j:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lzm/q$k;->k:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lzm/q$k;->l:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lzm/q$k;->m:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lzm/q$k;->n:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>(Lzm/q$k$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzm/q$k$a;->b(Lzm/q$k$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lzm/q$k;->a:Landroid/net/Uri;

    .line 4
    invoke-static {p1}, Lzm/q$k$a;->c(Lzm/q$k$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzm/q$k;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lzm/q$k$a;->d(Lzm/q$k$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzm/q$k;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lzm/q$k$a;->e(Lzm/q$k$a;)I

    move-result v0

    iput v0, p0, Lzm/q$k;->d:I

    .line 7
    invoke-static {p1}, Lzm/q$k$a;->f(Lzm/q$k$a;)I

    move-result v0

    iput v0, p0, Lzm/q$k;->e:I

    .line 8
    invoke-static {p1}, Lzm/q$k$a;->g(Lzm/q$k$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzm/q$k;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lzm/q$k$a;->h(Lzm/q$k$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzm/q$k;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$k$a;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$k;-><init>(Lzm/q$k$a;)V

    return-void
.end method


# virtual methods
.method public a()Lzm/q$k$a;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$k$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$k$a;-><init>(Lzm/q$k;Lzm/q$a;)V

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
    instance-of v1, p1, Lzm/q$k;

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
    check-cast p1, Lzm/q$k;

    .line 12
    .line 13
    iget-object v1, p0, Lzm/q$k;->a:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p1, Lzm/q$k;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lzm/q$k;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lzm/q$k;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lzm/q$k;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lzm/q$k;->c:Ljava/lang/String;

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
    iget v1, p0, Lzm/q$k;->d:I

    .line 44
    .line 45
    iget v3, p1, Lzm/q$k;->d:I

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lzm/q$k;->e:I

    .line 50
    .line 51
    iget v3, p1, Lzm/q$k;->e:I

    .line 52
    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lzm/q$k;->f:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lzm/q$k;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lzm/q$k;->g:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p1, p1, Lzm/q$k;->g:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v2

    .line 77
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lzm/q$k;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lzm/q$k;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lzm/q$k;->c:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lzm/q$k;->d:I

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget v1, p0, Lzm/q$k;->e:I

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Lzm/q$k;->f:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_2
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lzm/q$k;->g:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_3
    add-int/2addr v0, v2

    .line 69
    return v0
.end method
