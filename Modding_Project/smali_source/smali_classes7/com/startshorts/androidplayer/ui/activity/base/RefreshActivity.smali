.class public Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;
.source "RefreshActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/activity/base/ListActivity<",
        "TD;TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final H:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Z

.field private F:I

.field private G:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->H:Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic H0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->G0(Ljava/util/List;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: loadList"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static final synthetic w0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public A0()F
    .locals 1

    .line 1
    const/high16 v0, 0x42400000    # 48.0f

    .line 2
    .line 3
    return v0
.end method

.method public B0()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public C0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$id;->refresh_layout:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 25
    .line 26
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    filled-new-array {v2}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setColorSchemeColors([I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcc/b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->A0()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->B0()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setAnimatingColor(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcc/a;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lcc/k;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 73
    .line 74
    return-void
.end method

.method public D0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public E0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public F0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public G0(Ljava/util/List;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "STATE_REFRESH"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "STATE_LOAD"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    if-nez p1, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E0()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F0()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->L0(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->y0()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->x0()V

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E0()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->s0(ZZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E0()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->y0()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F0()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->L0(Z)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D0()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_8

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->x0()V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->q0()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-ge p2, p3, :cond_7

    .line 96
    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_8

    .line 106
    .line 107
    sget p2, Lcom/startshorts/androidplayer/R$string;->common_no_more_data:I

    .line 108
    .line 109
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 110
    .line 111
    .line 112
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->E0()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->t0(ZLjava/util/List;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    return-void
.end method

.method public I0(II)V
    .locals 2

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "loadMore pageNumber("

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ") pageSize("

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x29

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F:I

    .line 44
    .line 45
    return-void
.end method

.method public J0(II)V
    .locals 2

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "refresh pageNumber("

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ") pageSize("

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x29

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->F:I

    .line 44
    .line 45
    return-void
.end method

.method public final K0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->G:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final L0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->q0()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->J0(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->g0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setTargetView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_refresh:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->C0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->z0()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->q0()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->J0(II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RefreshFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final x0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "finishLoadMore exception -> "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public final y0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->D:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "finishRefresh exception -> "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public z0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
