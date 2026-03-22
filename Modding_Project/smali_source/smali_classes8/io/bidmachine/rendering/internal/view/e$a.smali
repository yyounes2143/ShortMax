.class public Lio/bidmachine/rendering/internal/view/e$a;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    .line 7
    .line 8
    iput v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    .line 9
    .line 10
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->a:I

    .line 11
    .line 12
    iput p2, p0, Lio/bidmachine/rendering/internal/view/e$a;->b:I

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lio/bidmachine/rendering/internal/view/e$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    .line 2
    .line 3
    return p0
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ltp/f;

    .line 24
    .line 25
    invoke-interface {v0}, Ltp/f;->h()Lrq/a;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lrq/a;->j()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ltp/f;->j()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2
    return-object v1
.end method

.method private e(Lrq/n0;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V
    .locals 1
    .param p1    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/SideType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/n0;",
            "Lio/bidmachine/rendering/model/SideType;",
            "III",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lrq/n0;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, p6, v0}, Lio/bidmachine/rendering/internal/view/e$a;->b(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p6

    .line 12
    if-eqz p6, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lrq/n0;->b()Lio/bidmachine/rendering/model/SideType;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p3, p4

    .line 22
    :goto_0
    invoke-virtual {p6}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void
.end method

.method private f(Lrq/n0;Lrq/n0;Ljava/util/List;)V
    .locals 13
    .param p1    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/n0;",
            "Lrq/n0;",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v2, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/16 v5, 0x9

    .line 5
    .line 6
    const/4 v3, 0x5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object/from16 v6, p3

    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/view/e$a;->e(Lrq/n0;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object v8, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/16 v11, 0xb

    .line 18
    .line 19
    const/4 v9, 0x7

    .line 20
    move-object v6, p0

    .line 21
    move-object v7, p2

    .line 22
    move-object/from16 v12, p3

    .line 23
    .line 24
    invoke-direct/range {v6 .. v12}, Lio/bidmachine/rendering/internal/view/e$a;->e(Lrq/n0;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private g(Lrq/n0;Lrq/n0;II)Z
    .locals 0
    .param p1    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-lez p4, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method static synthetic h(Lio/bidmachine/rendering/internal/view/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/rendering/internal/view/e$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private j(Lrq/n0;Lrq/n0;Ljava/util/List;)V
    .locals 13
    .param p1    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lrq/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/n0;",
            "Lrq/n0;",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v2, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    .line 2
    .line 3
    const/4 v4, 0x3

    .line 4
    const/16 v5, 0xa

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object/from16 v6, p3

    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/view/e$a;->e(Lrq/n0;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object v8, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    .line 15
    .line 16
    const/4 v10, 0x2

    .line 17
    const/16 v11, 0xc

    .line 18
    .line 19
    const/16 v9, 0x8

    .line 20
    .line 21
    move-object v6, p0

    .line 22
    move-object v7, p2

    .line 23
    move-object/from16 v12, p3

    .line 24
    .line 25
    invoke-direct/range {v6 .. v12}, Lio/bidmachine/rendering/internal/view/e$a;->e(Lrq/n0;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static synthetic k(Lio/bidmachine/rendering/internal/view/e$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lio/bidmachine/rendering/internal/view/e$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/rendering/internal/view/e$a;->b:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    .line 2
    .line 3
    return-void
.end method

.method public d(Landroid/content/Context;Lrq/s;Ljava/util/List;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrq/s;",
            "Ljava/util/List<",
            "Ltp/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lrq/s;->m()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/view/e$a;->i(F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lrq/s;->b()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/view/e$a;->c(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lrq/s;->f(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2, p1}, Lrq/s;->h(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p2, p1}, Lrq/s;->g(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    neg-int v2, v2

    .line 28
    invoke-virtual {p2, p1}, Lrq/s;->e(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    neg-int v3, v3

    .line 33
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lrq/s;->j()Lrq/n0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lrq/s;->a()Lrq/n0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p2, p1}, Lrq/s;->n(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v3, 0xf

    .line 49
    .line 50
    invoke-direct {p0, v0, v1, v3, v2}, Lio/bidmachine/rendering/internal/view/e$a;->g(Lrq/n0;Lrq/n0;II)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    invoke-direct {p0, v0, v1, p3}, Lio/bidmachine/rendering/internal/view/e$a;->j(Lrq/n0;Lrq/n0;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p2}, Lrq/s;->d()Lrq/n0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lrq/s;->i()Lrq/n0;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, p1}, Lrq/s;->c(Landroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/16 p2, 0xe

    .line 72
    .line 73
    invoke-direct {p0, v0, v1, p2, p1}, Lio/bidmachine/rendering/internal/view/e$a;->g(Lrq/n0;Lrq/n0;II)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    invoke-direct {p0, v0, v1, p3}, Lio/bidmachine/rendering/internal/view/e$a;->f(Lrq/n0;Lrq/n0;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public i(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    .line 2
    .line 3
    return-void
.end method
