.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;
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
    name = "s"
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
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredRelatedShortViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n1872#2,3:2304\n1872#2,3:2308\n1#3:2307\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredRelatedShortViewHolder\n*L\n1681#1:2304,3\n1689#1:2308,3\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;
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
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/l0;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/l0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->h:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic j(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->u(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->r(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->t(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->p(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->s(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final p(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
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

.method private static final r(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->getLabel()Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v6, "double_row_waterfall_related_shorts"

    .line 33
    .line 34
    move-object v5, p2

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final s(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->getLabel()Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v6, "double_row_waterfall_related_shorts"

    .line 33
    .line 34
    move-object v5, p2

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final t(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string p4, "it"

    .line 2
    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    move-result p3

    .line 22
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v6, 0x10

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v2, p2

    .line 31
    move-object v4, p1

    .line 32
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private static final u(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
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
    const-string v12, "discover_row_subtag_style2"

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->h:Lkotlin/jvm/functions/Function1;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->q(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 9
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getLabelRelatedShortPlayRankingList()Ljava/util/List;

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
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->getLabel()Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    :cond_1
    const-string v2, ""

    .line 39
    .line 40
    :cond_2
    new-instance v3, Lkotlin/text/Regex;

    .line 41
    .line 42
    const-string v4, "\\s"

    .line 43
    .line 44
    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v4, " "

    .line 48
    .line 49
    invoke-virtual {v3, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 63
    .line 64
    sget v4, Lcom/startshorts/androidplayer/R$color;->rank_title_text_start:I

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lfk/u;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    sget v5, Lcom/startshorts/androidplayer/R$color;->rank_title_text_end:I

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Lfk/u;->a(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v3, v4, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 84
    .line 85
    const-string/jumbo v2, "tvTagName"

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 92
    .line 93
    new-instance v6, Lcom/startshorts/androidplayer/adapter/discover/m0;

    .line 94
    .line 95
    invoke-direct {v6, v0, v2, p2}, Lcom/startshorts/androidplayer/adapter/discover/m0;-><init>(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 96
    .line 97
    .line 98
    const/4 v7, 0x1

    .line 99
    const/4 v8, 0x0

    .line 100
    const-wide/16 v4, 0x0

    .line 101
    .line 102
    invoke-static/range {v3 .. v8}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v3, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;->a:Landroid/widget/ImageView;

    .line 110
    .line 111
    const-string v2, "ivTagRight"

    .line 112
    .line 113
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 117
    .line 118
    new-instance v6, Lcom/startshorts/androidplayer/adapter/discover/n0;

    .line 119
    .line 120
    invoke-direct {v6, v0, v2, p2}, Lcom/startshorts/androidplayer/adapter/discover/n0;-><init>(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 121
    .line 122
    .line 123
    invoke-static/range {v3 .. v8}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->getShortPlayResponseList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;->b:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 144
    .line 145
    .line 146
    move-object v2, v0

    .line 147
    check-cast v2, Ljava/lang/Iterable;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    add-int/lit8 v5, v1, 0x1

    .line 166
    .line 167
    if-gez v1, :cond_4

    .line 168
    .line 169
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 170
    .line 171
    .line 172
    :cond_4
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 173
    .line 174
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const-string v8, "getContext(...)"

    .line 189
    .line 190
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v6, v7}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    new-instance v7, Lcom/startshorts/androidplayer/adapter/discover/o0;

    .line 197
    .line 198
    invoke-direct {v7, v3, p2, v4}, Lcom/startshorts/androidplayer/adapter/discover/o0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v4, v1, v7}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->r(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->o()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBinding;->b:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    move v1, v5

    .line 214
    goto :goto_0

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 216
    .line 217
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/p0;

    .line 218
    .line 219
    invoke-direct {v2, v0, p1, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/p0;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 220
    .line 221
    .line 222
    iput-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$s;->h:Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    :cond_6
    :goto_1
    return-void
.end method
