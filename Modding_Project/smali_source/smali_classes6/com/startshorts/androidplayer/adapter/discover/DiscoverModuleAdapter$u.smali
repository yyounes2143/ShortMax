.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;
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
    name = "u"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,2303:1\n774#2:2304\n865#2,2:2305\n1872#2,3:2307\n295#2,2:2310\n46#3:2312\n1328#4,3:2313\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewHolder\n*L\n1517#1:2304\n1517#1:2305,2\n1524#1:2307,3\n1569#1:2310,2\n1544#1:2312\n1549#1:2313,3\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/s0;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/s0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->h:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->n(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->p(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final p(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move v3, v0

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_7

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v5, v3, 0x1

    .line 43
    .line 44
    if-gez v3, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 47
    .line 48
    .line 49
    :cond_1
    check-cast v4, Landroid/view/View;

    .line 50
    .line 51
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_tag:I

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-le v7, v1, :cond_2

    .line 65
    .line 66
    move v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v7, v0

    .line 69
    :goto_1
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-ne v6, v8, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v8, v0

    .line 79
    :goto_2
    if-nez v7, :cond_5

    .line 80
    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 89
    .line 90
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :goto_4
    move v3, v5

    .line 98
    goto :goto_0

    .line 99
    :cond_7
    return-void
.end method

.method private static final q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 12

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lag/a;->a:Lag/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/16 v10, 0x94

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v2, p0

    .line 31
    invoke-static/range {v1 .. v11}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
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
    .locals 1
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->h:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 13
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "item"

    .line 3
    .line 4
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 24
    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 26
    .line 27
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->c()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->b()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 51
    .line 52
    .line 53
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->S()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 66
    .line 67
    .line 68
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v4, 0x20

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$c;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 132
    .line 133
    invoke-direct {v2, v3, p2, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 150
    .line 151
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 159
    .line 160
    const-string/jumbo v3, "tvLabelStyle"

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-nez v4, :cond_1

    .line 175
    .line 176
    const-string v4, ""

    .line 177
    .line 178
    :cond_1
    invoke-virtual {v5, v2, v3, v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->h(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v5, v2, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const/4 v5, 0x0

    .line 210
    const/4 v6, 0x0

    .line 211
    if-eqz v4, :cond_7

    .line 212
    .line 213
    check-cast v4, Ljava/lang/Iterable;

    .line 214
    .line 215
    new-instance v7, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_8

    .line 229
    .line 230
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    move-object v9, v8

    .line 235
    check-cast v9, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 236
    .line 237
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    if-eqz v10, :cond_3

    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    goto :goto_1

    .line 248
    :cond_3
    move v10, v6

    .line 249
    :goto_1
    if-gtz v10, :cond_6

    .line 250
    .line 251
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    if-eqz v9, :cond_5

    .line 256
    .line 257
    invoke-static {v9}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_4

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_4
    move v9, v6

    .line 265
    goto :goto_3

    .line 266
    :cond_5
    :goto_2
    move v9, v0

    .line 267
    :goto_3
    if-nez v9, :cond_6

    .line 268
    .line 269
    move v9, v0

    .line 270
    goto :goto_4

    .line 271
    :cond_6
    move v9, v6

    .line 272
    :goto_4
    if-eqz v9, :cond_2

    .line 273
    .line 274
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_7
    move-object v7, v5

    .line 279
    :cond_8
    if-eqz v7, :cond_a

    .line 280
    .line 281
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_9

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_9
    move v4, v6

    .line 289
    goto :goto_6

    .line 290
    :cond_a
    :goto_5
    move v4, v0

    .line 291
    :goto_6
    if-eqz v4, :cond_b

    .line 292
    .line 293
    invoke-static {v2}, Ljk/b0;->d(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_b
    invoke-static {v2}, Ljk/b0;->l(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    move v8, v6

    .line 321
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-eqz v9, :cond_e

    .line 326
    .line 327
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    add-int/lit8 v10, v8, 0x1

    .line 332
    .line 333
    if-gez v8, :cond_c

    .line 334
    .line 335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 336
    .line 337
    .line 338
    :cond_c
    check-cast v9, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 339
    .line 340
    invoke-static {v4, v2, v0}, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    const-string v12, "inflate(...)"

    .line 345
    .line 346
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    if-nez v8, :cond_d

    .line 350
    .line 351
    iget-object v8, v11, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 352
    .line 353
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    const-string v12, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 358
    .line 359
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 363
    .line 364
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 365
    .line 366
    .line 367
    iget-object v12, v11, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 368
    .line 369
    invoke-virtual {v12, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    :cond_d
    iget-object v8, v11, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 373
    .line 374
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    iget-object v8, v11, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 382
    .line 383
    new-instance v11, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;

    .line 384
    .line 385
    invoke-direct {v11, v3, p1, v9, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    move v8, v10

    .line 392
    goto :goto_7

    .line 393
    :cond_e
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/t0;

    .line 394
    .line 395
    invoke-direct {p1, v2}, Lcom/startshorts/androidplayer/adapter/discover/t0;-><init>(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 399
    .line 400
    .line 401
    :goto_8
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 402
    .line 403
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    if-eqz v2, :cond_13

    .line 411
    .line 412
    check-cast v2, Ljava/lang/Iterable;

    .line 413
    .line 414
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_12

    .line 423
    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    move-object v4, v3

    .line 429
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 430
    .line 431
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    if-eqz v4, :cond_10

    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    goto :goto_9

    .line 442
    :cond_10
    move v4, v6

    .line 443
    :goto_9
    if-lez v4, :cond_11

    .line 444
    .line 445
    move v4, v0

    .line 446
    goto :goto_a

    .line 447
    :cond_11
    move v4, v6

    .line 448
    :goto_a
    if-eqz v4, :cond_f

    .line 449
    .line 450
    move-object v5, v3

    .line 451
    :cond_12
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 452
    .line 453
    :cond_13
    iput-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 454
    .line 455
    if-eqz v5, :cond_14

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 462
    .line 463
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 466
    .line 467
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 479
    .line 480
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 488
    .line 489
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$b;

    .line 490
    .line 491
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 492
    .line 493
    invoke-direct {v2, v3, p1, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 505
    .line 506
    const/16 v0, 0x8

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    :goto_b
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 512
    .line 513
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/u0;

    .line 514
    .line 515
    invoke-direct {v0, v1, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/u0;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V

    .line 516
    .line 517
    .line 518
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->h:Lkotlin/jvm/functions/Function1;

    .line 519
    .line 520
    return-void
.end method
