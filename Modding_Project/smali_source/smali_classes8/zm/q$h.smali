.class public final Lzm/q$h;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lzm/q$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lzm/q$k;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzm/q$j;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:J


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
    sput-object v0, Lzm/q$h;->j:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->k:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->l:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->m:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->n:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->o:Ljava/lang/String;

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
    sput-object v0, Lzm/q$h;->p:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lzm/q$h;->q:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lzm/q$f;Lzm/q$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lzm/q$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lzm/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lzm/q$f;",
            "Lzm/q$b;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lzm/q$k;",
            ">;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzm/q$h;->a:Landroid/net/Uri;

    .line 4
    invoke-static {p2}, Lzm/u;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzm/q$h;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lzm/q$h;->c:Lzm/q$f;

    .line 6
    iput-object p5, p0, Lzm/q$h;->d:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lzm/q$h;->e:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lzm/q$h;->f:Lcom/google/common/collect/ImmutableList;

    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 11
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzm/q$k;

    invoke-virtual {p3}, Lzm/q$k;->a()Lzm/q$k$a;

    move-result-object p3

    invoke-static {p3}, Lzm/q$k$a;->a(Lzm/q$k$a;)Lzm/q$j;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lzm/q$h;->g:Ljava/util/List;

    .line 13
    iput-object p8, p0, Lzm/q$h;->h:Ljava/lang/Object;

    .line 14
    iput-wide p9, p0, Lzm/q$h;->i:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lzm/q$f;Lzm/q$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lzm/q$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Lzm/q$f;Lzm/q$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lzm/q$h;

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
    check-cast p1, Lzm/q$h;

    .line 12
    .line 13
    iget-object v1, p0, Lzm/q$h;->a:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p1, Lzm/q$h;->a:Landroid/net/Uri;

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
    iget-object v1, p0, Lzm/q$h;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lzm/q$h;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lzm/q$h;->c:Lzm/q$f;

    .line 34
    .line 35
    iget-object v3, p1, Lzm/q$h;->c:Lzm/q$f;

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
    iget-object v1, p0, Lzm/q$h;->d:Ljava/util/List;

    .line 44
    .line 45
    iget-object v3, p1, Lzm/q$h;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lzm/q$h;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lzm/q$h;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lzm/q$h;->f:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    iget-object v3, p1, Lzm/q$h;->f:Lcom/google/common/collect/ImmutableList;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lzm/q$h;->h:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v3, p1, Lzm/q$h;->h:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-wide v3, p0, Lzm/q$h;->i:J

    .line 84
    .line 85
    iget-wide v5, p1, Lzm/q$h;->i:J

    .line 86
    .line 87
    cmp-long p1, v3, v5

    .line 88
    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v0, v2

    .line 93
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lzm/q$h;->a:Landroid/net/Uri;

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
    iget-object v1, p0, Lzm/q$h;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lzm/q$h;->c:Lzm/q$f;

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
    invoke-virtual {v1}, Lzm/q$f;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit16 v0, v0, 0x3c1

    .line 35
    .line 36
    iget-object v1, p0, Lzm/q$h;->d:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lzm/q$h;->e:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    move v1, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_2
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Lzm/q$h;->f:Lcom/google/common/collect/ImmutableList;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget-object v1, p0, Lzm/q$h;->h:Ljava/lang/Object;

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_3
    add-int/2addr v0, v2

    .line 77
    const-wide/16 v1, 0x1f

    .line 78
    .line 79
    int-to-long v3, v0

    .line 80
    mul-long/2addr v3, v1

    .line 81
    iget-wide v0, p0, Lzm/q$h;->i:J

    .line 82
    .line 83
    add-long/2addr v3, v0

    .line 84
    long-to-int v0, v3

    .line 85
    return v0
.end method
