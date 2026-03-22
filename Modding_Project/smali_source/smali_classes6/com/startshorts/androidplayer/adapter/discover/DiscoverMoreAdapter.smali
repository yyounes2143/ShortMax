.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DiscoverMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n360#2,7:219\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter\n*L\n87#1:219,7\n*E\n"
    }
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:F

.field private s:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->w:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->o:I

    .line 9
    .line 10
    const/high16 p1, 0x42c80000    # 100.0f

    .line 11
    .line 12
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->p:I

    .line 17
    .line 18
    const/high16 p1, 0x43040000    # 132.0f

    .line 19
    .line 20
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->q:I

    .line 25
    .line 26
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 27
    .line 28
    invoke-virtual {p1}, Lfk/z;->r()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-float p1, p1

    .line 33
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->r:F

    .line 34
    .line 35
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/z0;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/z0;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->v:Lms/i;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic E()[Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->N()[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->r:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->K()[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method private final K()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->v:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/Integer;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final N()[Ljava/lang/Integer;
    .locals 11

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark1:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark2:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark3:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark4:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark5:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark6:I

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark7:I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark8:I

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark9:I

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark10:I

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method


# virtual methods
.method public final J()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->s:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->u:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->t:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public O(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lag/a;->a:Lag/a;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->s:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/16 v8, 0x8

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const-string v2, "discover_more"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v1 .. v9}, Lag/a;->f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final P(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v2, v4

    .line 41
    :goto_1
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setEpisodeNum(I)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo p1, "update_episode_num"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit v0

    .line 67
    throw p1
.end method

.method public final Q(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->s:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->u:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->t:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->o:I

    .line 2
    .line 3
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->O(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "DiscoverMoreAdapter"

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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    const/4 p3, 0x7

    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_coming_soon:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;

    .line 24
    .line 25
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_other:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 32
    .line 33
    invoke-direct {p3, p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;ILcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;)V

    .line 34
    .line 35
    .line 36
    move-object p2, p3

    .line 37
    :goto_0
    return-object p2
.end method
