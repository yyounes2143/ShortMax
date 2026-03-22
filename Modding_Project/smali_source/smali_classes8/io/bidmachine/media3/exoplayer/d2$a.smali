.class final Lio/bidmachine/media3/exoplayer/d2$a;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/s;
.implements Lio/bidmachine/media3/exoplayer/drm/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/d2$c;

.field final synthetic b:Lio/bidmachine/media3/exoplayer/d2;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/d2;Lio/bidmachine/media3/exoplayer/d2$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->a:Lio/bidmachine/media3/exoplayer/d2$c;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->H(Landroid/util/Pair;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/d2$a;->U(Landroid/util/Pair;Lsn/i;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/d2$a;->a0(Landroid/util/Pair;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/d2$a;->T(Landroid/util/Pair;Lsn/i;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;
    .locals 2
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/d2$a;->a:Lio/bidmachine/media3/exoplayer/d2$c;

    .line 5
    .line 6
    invoke-static {v1, p2}, Lio/bidmachine/media3/exoplayer/d2;->c(Lio/bidmachine/media3/exoplayer/d2$c;Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    move-object v0, p2

    .line 14
    :cond_1
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->a:Lio/bidmachine/media3/exoplayer/d2$c;

    .line 15
    .line 16
    invoke-static {p2, p1}, Lio/bidmachine/media3/exoplayer/d2;->d(Lio/bidmachine/media3/exoplayer/d2$c;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private synthetic H(Landroid/util/Pair;Lsn/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s;->W(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic I(Landroid/util/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/h;->g0(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic J(Landroid/util/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/h;->N(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic M(Landroid/util/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/h;->d0(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic P(Landroid/util/Pair;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h;->Y(ILio/bidmachine/media3/exoplayer/source/r$b;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic Q(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/h;->K(ILio/bidmachine/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic R(Landroid/util/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/h;->O(ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic T(Landroid/util/Pair;Lsn/i;Lsn/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/s;->Z(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic U(Landroid/util/Pair;Lsn/i;Lsn/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/s;->x(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/d2$a;->e0(Landroid/util/Pair;Lsn/i;Lsn/j;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic a0(Landroid/util/Pair;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    check-cast v3, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 19
    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move v7, p5

    .line 24
    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/source/s;->S(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private synthetic e0(Landroid/util/Pair;Lsn/i;Lsn/j;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    check-cast v3, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 19
    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move v6, p4

    .line 23
    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/s;->i(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private synthetic f0(Landroid/util/Pair;Lsn/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/d2;->e(Lio/bidmachine/media3/exoplayer/d2;)Lhn/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 24
    .line 25
    invoke-interface {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s;->V(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/d2$a;->I(Landroid/util/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->Q(Landroid/util/Pair;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/d2$a;->M(Landroid/util/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/d2$a;->R(Landroid/util/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->f0(Landroid/util/Pair;Lsn/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->P(Landroid/util/Pair;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/d2$a;->J(Landroid/util/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public K(ILio/bidmachine/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/u1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/u1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Ljava/lang/Exception;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public N(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/c2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/c2;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public O(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/v1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/v1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public S(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V
    .locals 7
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lio/bidmachine/media3/exoplayer/x1;

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    move-object v1, p0

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, p4

    .line 19
    move-object v5, p5

    .line 20
    move v6, p6

    .line 21
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/x1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public V(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/w1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/w1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/j;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public W(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/b2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/b2;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/j;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public Y(ILio/bidmachine/media3/exoplayer/source/r$b;I)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/r1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/r1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public Z(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/a2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/a2;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public d0(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/t1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/t1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public g0(ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/s1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/s1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public i(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;I)V
    .locals 6
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lio/bidmachine/media3/exoplayer/y1;

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    move-object v1, p0

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, p4

    .line 19
    move v5, p5

    .line 20
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/y1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public x(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V
    .locals 1
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/d2$a;->G(ILio/bidmachine/media3/exoplayer/source/r$b;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/d2$a;->b:Lio/bidmachine/media3/exoplayer/d2;

    .line 8
    .line 9
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/d2;->b(Lio/bidmachine/media3/exoplayer/d2;)Lcn/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/z1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/z1;-><init>(Lio/bidmachine/media3/exoplayer/d2$a;Landroid/util/Pair;Lsn/i;Lsn/j;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
