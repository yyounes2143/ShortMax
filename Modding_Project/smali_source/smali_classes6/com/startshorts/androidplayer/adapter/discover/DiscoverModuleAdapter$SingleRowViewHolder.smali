.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleRowViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;",
        "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "+",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;>;",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "adapterCreator"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 12
    .line 13
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->g:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->i:Ljava/util/List;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "logReelShow"

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, p1, v2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->M(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->i:Ljava/util/List;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->g:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 34
    .line 35
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;

    .line 38
    .line 39
    invoke-direct {v1, p2, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->i:Ljava/util/List;

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {p1, p2, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$setItem$itemDecoration$1;

    .line 54
    .line 55
    invoke-direct {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$setItem$itemDecoration$1;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v3, "getContext(...)"

    .line 86
    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v1, v2, v2}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method
