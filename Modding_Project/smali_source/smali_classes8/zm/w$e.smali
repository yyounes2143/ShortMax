.class public final Lzm/w$e;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field static final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final l:Ljava/lang/String;

.field static final m:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final n:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final o:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:I

.field public final d:Lzm/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:I

.field public final j:I


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
    sput-object v0, Lzm/w$e;->k:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->l:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->m:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->n:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->o:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->p:Ljava/lang/String;

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
    sput-object v0, Lzm/w$e;->q:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILzm/q;Ljava/lang/Object;IJJII)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lzm/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzm/w$e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lzm/w$e;->b:I

    .line 7
    .line 8
    iput p2, p0, Lzm/w$e;->c:I

    .line 9
    .line 10
    iput-object p3, p0, Lzm/w$e;->d:Lzm/q;

    .line 11
    .line 12
    iput-object p4, p0, Lzm/w$e;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput p5, p0, Lzm/w$e;->f:I

    .line 15
    .line 16
    iput-wide p6, p0, Lzm/w$e;->g:J

    .line 17
    .line 18
    iput-wide p8, p0, Lzm/w$e;->h:J

    .line 19
    .line 20
    iput p10, p0, Lzm/w$e;->i:I

    .line 21
    .line 22
    iput p11, p0, Lzm/w$e;->j:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Lzm/w$e;)Z
    .locals 4

    .line 1
    iget v0, p0, Lzm/w$e;->c:I

    .line 2
    .line 3
    iget v1, p1, Lzm/w$e;->c:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lzm/w$e;->f:I

    .line 8
    .line 9
    iget v1, p1, Lzm/w$e;->f:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lzm/w$e;->g:J

    .line 14
    .line 15
    iget-wide v2, p1, Lzm/w$e;->g:J

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-wide v0, p0, Lzm/w$e;->h:J

    .line 22
    .line 23
    iget-wide v2, p1, Lzm/w$e;->h:J

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget v0, p0, Lzm/w$e;->i:I

    .line 30
    .line 31
    iget v1, p1, Lzm/w$e;->i:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget v0, p0, Lzm/w$e;->j:I

    .line 36
    .line 37
    iget v1, p1, Lzm/w$e;->j:I

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lzm/w$e;->d:Lzm/q;

    .line 42
    .line 43
    iget-object p1, p1, Lzm/w$e;->d:Lzm/q;

    .line 44
    .line 45
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    return p1
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lzm/w$e;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lzm/w$e;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lzm/w$e;->a(Lzm/w$e;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lzm/w$e;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, p1, Lzm/w$e;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lzm/w$e;->e:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object p1, p1, Lzm/w$e;->e:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lzm/w$e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lzm/w$e;->c:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lzm/w$e;->d:Lzm/q;

    .line 10
    .line 11
    iget-object v3, p0, Lzm/w$e;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget v4, p0, Lzm/w$e;->f:I

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-wide v5, p0, Lzm/w$e;->g:J

    .line 20
    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-wide v6, p0, Lzm/w$e;->h:J

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget v7, p0, Lzm/w$e;->i:I

    .line 32
    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget v8, p0, Lzm/w$e;->j:I

    .line 38
    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method
