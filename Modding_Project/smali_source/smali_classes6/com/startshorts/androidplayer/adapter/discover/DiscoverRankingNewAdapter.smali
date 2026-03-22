.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;
.source "DiscoverRankingNewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final k:Lkotlin/jvm/functions/Function0;
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

.field private final l:I

.field private final m:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 4
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->k:Lkotlin/jvm/functions/Function0;

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
    int-to-double v0, p1

    .line 18
    const-wide v2, 0x3fc6872b020c49baL    # 0.176

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    mul-double/2addr v0, v2

    .line 24
    invoke-static {v0, v1}, Lbt/a;->b(D)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->l:I

    .line 29
    .line 30
    int-to-float p1, p1

    .line 31
    const v0, 0x3faaaa8f

    .line 32
    .line 33
    .line 34
    mul-float/2addr p1, v0

    .line 35
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->m:I

    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->l:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public j(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;

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
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

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
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public k(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V
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
    iget p1, p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->d:I

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->k:Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move-object v7, p1

    .line 36
    check-cast v7, Landroid/os/Bundle;

    .line 37
    .line 38
    const/16 v8, 0x8

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const-string v2, ""

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static/range {v1 .. v9}, Lag/a;->f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->j(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->k(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
