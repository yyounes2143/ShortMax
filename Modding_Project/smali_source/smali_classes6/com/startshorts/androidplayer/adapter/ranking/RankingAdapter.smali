.class public final Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
.source "RankingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingAdapter.kt\ncom/startshorts/androidplayer/adapter/ranking/RankingAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n360#2,7:113\n*S KotlinDebug\n*F\n+ 1 RankingAdapter.kt\ncom/startshorts/androidplayer/adapter/ranking/RankingAdapter\n*L\n30#1:113,7\n*E\n"
    }
.end annotation


# instance fields
.field private final m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->m:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    const/high16 v0, 0x41800000    # 16.0f

    .line 19
    .line 20
    invoke-static {v0}, Ljk/g;->b(F)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-float/2addr p1, v0

    .line 25
    const/high16 v0, 0x41c00000    # 24.0f

    .line 26
    .line 27
    invoke-static {v0}, Ljk/g;->b(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-float/2addr p1, v0

    .line 32
    const v0, 0x3e93f7cf    # 0.289f

    .line 33
    .line 34
    .line 35
    mul-float/2addr p1, v0

    .line 36
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->n:I

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    const v0, 0x3fa8f5c3    # 1.32f

    .line 44
    .line 45
    .line 46
    mul-float/2addr p1, v0

    .line 47
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->o:I

    .line 52
    .line 53
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->n:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public l(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->q(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lag/a;->a:Lag/a;

    .line 16
    .line 17
    iget v3, p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->d:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->m:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    move-object v7, p1

    .line 34
    check-cast v7, Landroid/os/Bundle;

    .line 35
    .line 36
    const/16 v8, 0x8

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const-string v2, "discover_more"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static/range {v1 .. v9}, Lag/a;->f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final r(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->d()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getAll(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v2, p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v3

    .line 39
    :goto_1
    if-eq v3, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->d()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eq p1, p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->d()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setEpisodeNum(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method
