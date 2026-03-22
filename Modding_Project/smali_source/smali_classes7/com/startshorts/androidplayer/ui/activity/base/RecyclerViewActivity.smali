.class public Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.source "RecyclerViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecyclerViewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
    }
.end annotation


# static fields
.field public static final y:Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private r:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Z

.field private t:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->y:Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->x:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public X(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)Z"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->g0()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->e(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public Y(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->g0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, p1, v2, v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->j(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public final Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->w:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->c()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v0, v2

    .line 30
    :goto_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    move-object v2, v0

    .line 35
    check-cast v2, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 36
    .line 37
    :cond_2
    :goto_1
    return-object v2
.end method

.method public a0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final b0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final d0()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->w:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public g0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$id;->recycler_view:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v1, Lcom/startshorts/androidplayer/R$id;->recycler_view_viewstub:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/view/ViewStub;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    sget-object v1, Lid/a;->a:Lid/a;

    .line 49
    .line 50
    invoke-virtual {v1}, Lid/a;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const-string v1, "initRecyclerView"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v0, 0x0

    .line 73
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 93
    .line 94
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->t:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->a0()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->x:I

    .line 116
    .line 117
    if-ltz v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->u:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->w:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    return-void
.end method

.method public final h0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->b0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final i0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->w:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-void
.end method

.method public final j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->v:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    return-void
.end method

.method public l0(Ljava/util/List;)Z
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->g0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RecyclerViewActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
