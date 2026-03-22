.class public Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "BottomSheetRVFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBottomSheetRVFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetRVFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
    }
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->v:Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->u:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public O(Ljava/util/List;)Z
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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->p:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->V()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->P()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

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

.method public final P()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->t:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->c()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object v0, v2

    .line 28
    :goto_0
    return-object v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final R()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->P()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

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

.method public final S()Landroidx/recyclerview/widget/RecyclerView$Adapter;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->t:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public V()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->p:Z

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
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->p:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

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
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->o:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->s:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "requireContext(...)"

    .line 94
    .line 95
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->s:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 102
    .line 103
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->s:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->q:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->Q()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->u:I

    .line 125
    .line 126
    if-ltz v1, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->r:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 142
    .line 143
    .line 144
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->t:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    return-void
.end method

.method public final W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->R()I

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

.method public final X(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->t:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->r:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 2
    .line 3
    return-void
.end method

.method public Z(Ljava/util/List;)Z
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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->V()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->P()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

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

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_recycler_view:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BottomSheetRVFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->s()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->P()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

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
