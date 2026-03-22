.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;
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
    name = "v"
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
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewRankHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n1872#2,3:2307\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewRankHolder\n*L\n1630#1:2304,3\n1638#1:2307,3\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;
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
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/v0;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/v0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->h:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->o(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->r(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->s(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->q(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final o(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
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

.method private static final q(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p3, "row_ranking"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p3, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 22
    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "module_type"

    .line 39
    .line 40
    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v1, "discover_more_click"

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final r(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string p5, "it"

    .line 2
    .line 3
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, p0

    .line 29
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 30
    .line 31
    move-object v2, p2

    .line 32
    move-object v4, p1

    .line 33
    invoke-interface/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->c(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private static final s(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 15

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

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
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object v5, v2

    .line 34
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 35
    .line 36
    sget-object v4, Lag/a;->a:Lag/a;

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    const/16 v13, 0x14

    .line 51
    .line 52
    const/4 v14, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const-string v12, "discover_row_ranking"

    .line 56
    .line 57
    move/from16 v6, p1

    .line 58
    .line 59
    invoke-static/range {v4 .. v14}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object v0
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->h:Lkotlin/jvm/functions/Function1;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->p(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 10
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;->c:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const-string v2, "llMore"

    .line 33
    .line 34
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 38
    .line 39
    new-instance v6, Lcom/startshorts/androidplayer/adapter/discover/w0;

    .line 40
    .line 41
    invoke-direct {v6, v2, v0, p2}, Lcom/startshorts/androidplayer/adapter/discover/w0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    const/4 v8, 0x0

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    invoke-static/range {v3 .. v8}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    :cond_1
    new-instance v3, Lkotlin/text/Regex;

    .line 60
    .line 61
    const-string v4, "\\s"

    .line 62
    .line 63
    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v4, " "

    .line 67
    .line 68
    invoke-virtual {v3, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 82
    .line 83
    sget v4, Lcom/startshorts/androidplayer/R$color;->rank_title_text_start:I

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lfk/u;->a(I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    sget v5, Lcom/startshorts/androidplayer/R$color;->rank_title_text_end:I

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Lfk/u;->a(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v3, v4, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getShortPlayResponseList()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :cond_2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 110
    .line 111
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 125
    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    new-instance v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-direct {v4, v5, v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 142
    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;->d:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    .line 151
    .line 152
    move-object v3, v0

    .line 153
    check-cast v3, Ljava/lang/Iterable;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    add-int/lit8 v6, v1, 0x1

    .line 172
    .line 173
    if-gez v1, :cond_4

    .line 174
    .line 175
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 176
    .line 177
    .line 178
    :cond_4
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 179
    .line 180
    new-instance v7, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRankItemView;

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v8}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    const-string v9, "getContext(...)"

    .line 195
    .line 196
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v7, v8}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRankItemView;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    new-instance v8, Lcom/startshorts/androidplayer/adapter/discover/x0;

    .line 203
    .line 204
    invoke-direct {v8, v4, p2, v5, v2}, Lcom/startshorts/androidplayer/adapter/discover/x0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v5, v1, v8}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRankItemView;->r(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->n()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBinding;->d:Landroid/widget/LinearLayout;

    .line 215
    .line 216
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    move v1, v6

    .line 220
    goto :goto_0

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 222
    .line 223
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/y0;

    .line 224
    .line 225
    invoke-direct {v2, v0, p1, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/y0;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 226
    .line 227
    .line 228
    iput-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->h:Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    :cond_6
    :goto_1
    return-void
.end method
