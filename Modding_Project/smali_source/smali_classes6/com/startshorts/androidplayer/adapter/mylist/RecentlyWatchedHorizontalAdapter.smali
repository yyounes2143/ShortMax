.class public final Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "RecentlyWatchedHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentlyWatchedHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentlyWatchedHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1863#2,2:174\n1863#2,2:176\n*S KotlinDebug\n*F\n+ 1 RecentlyWatchedHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter\n*L\n51#1:174,2\n63#1:176,2\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private r:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->t:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
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
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x42600000    # 56.0f

    .line 15
    .line 16
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    int-to-float v0, v0

    .line 22
    const/high16 v1, 0x40400000    # 3.0f

    .line 23
    .line 24
    div-float/2addr v0, v1

    .line 25
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->o:I

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    const v1, 0x3fab7803    # 1.3396f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v0, v1

    .line 36
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->p:I

    .line 41
    .line 42
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 43
    .line 44
    invoke-virtual {v0}, Lfk/z;->r()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->q:F

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->M(Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->N(Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M(Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->s:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljk/e0;->h(Landroidx/databinding/ViewStubProxy;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Landroid/widget/ImageView;

    .line 24
    .line 25
    :cond_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_selected:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_unselected:I

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 42
    .line 43
    const-string p2, "checkBoxViewstub"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p1, p2, v0, v1}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->s:Z

    .line 2
    .line 3
    const-string/jumbo v1, "topBgViewstub"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p1, v2, v0, v1}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public final J()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->r:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public K(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
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
    check-cast p1, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lag/a;->a:Lag/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v10, 0x1fc

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const-string v1, "mylist_recommended"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-static/range {v0 .. v11}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final L(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->r:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->K(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "RecentlyWatchedAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
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
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
            ">.ViewHolder;"
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_recently_watched_horizontal:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
