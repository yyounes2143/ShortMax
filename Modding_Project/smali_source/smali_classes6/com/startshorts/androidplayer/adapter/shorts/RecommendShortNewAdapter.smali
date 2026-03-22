.class public final Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "RecommendShortNewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;,
        Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$TopViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final o:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/TextureView;",
            "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/TextureView;",
            "-",
            "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "topBinding"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "onPlay"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onAllPlayCompleted"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->p:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->q:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    iput v3, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->s:I

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/high16 p2, 0x428c0000    # 70.0f

    .line 39
    .line 40
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr p1, p2

    .line 45
    div-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->t:I

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    const p2, 0x3fa923a3    # 1.3214f

    .line 51
    .line 52
    .line 53
    mul-float/2addr p1, p2

    .line 54
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->u:I

    .line 59
    .line 60
    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 62
    .line 63
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->u:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->p:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->y:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method private final I()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->O()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x2

    .line 18
    .line 19
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 20
    .line 21
    :cond_0
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private final O()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x2

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public final J()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public final K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public L(I)Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 8
    .line 9
    return-object p1
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->y:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public Q(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
            ">.ViewHolder;)V"
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lag/a;->a:Lag/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/16 v10, 0x17c

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    const-string v1, "new_user_drama"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-static/range {v0 .. v11}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final R()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, -0x1

    .line 10
    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->O()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->w:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->q:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v0

    .line 37
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public final T(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-eq v0, p1, :cond_2

    .line 8
    .line 9
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->O()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/lit8 p1, p1, -0x2

    .line 22
    .line 23
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->v:I

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->L(I)Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->r:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->s:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->Q(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RecommendShortNewAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p3, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->r:I

    .line 7
    .line 8
    if-ne p2, p3, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$TopViewHolder;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->o:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 13
    .line 14
    invoke-direct {p1, p0, p2}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$TopViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p3, p1, v0}, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p3, "inflate(...)"

    .line 34
    .line 35
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;)V

    .line 39
    .line 40
    .line 41
    move-object p1, p2

    .line 42
    :goto_0
    return-object p1
.end method
