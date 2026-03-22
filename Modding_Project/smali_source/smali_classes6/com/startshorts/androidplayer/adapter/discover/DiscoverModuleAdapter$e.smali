.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;
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
    name = "e"
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
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$ColumnXWaterfallViewHolder\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n46#2:2304\n2642#3:2305\n1872#3,3:2307\n1#4:2306\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$ColumnXWaterfallViewHolder\n*L\n1342#1:2304\n1414#1:2305\n1387#1:2307,3\n1414#1:2306\n*E\n"
    }
.end annotation


# instance fields
.field private final g:I

.field private final h:I

.field private final i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Lkotlin/jvm/functions/Function1;
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

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;IILcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;)V
    .locals 1
    .param p3    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p4}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 12
    .line 13
    iput p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->h:I

    .line 14
    .line 15
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 16
    .line 17
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/c0;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/c0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->j:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->p(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->q(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->n(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static final p(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/16 v7, 0x10

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v5, p3

    .line 29
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final q(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
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
    add-int v6, p1, v1

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    const/16 v13, 0x94

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v12, 0x0

    .line 58
    invoke-static/range {v4 .. v14}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move v1, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->j:Lkotlin/jvm/functions/Function1;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 11
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 26
    .line 27
    mul-int/2addr p1, v1

    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;->a:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const-string v2, "columnXWaterfallContainer"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getDisableBannerTitle()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v4, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;->a:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 70
    .line 71
    invoke-virtual {v1}, Lfk/z;->q()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_0
    move v6, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTopMargin()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :goto_1
    const/16 v9, 0xd

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-static/range {v4 .. v10}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 92
    .line 93
    invoke-virtual {v1}, Lfk/z;->d()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 102
    .line 103
    add-int/lit8 v5, v5, -0x1

    .line 104
    .line 105
    if-ne v4, v5, :cond_2

    .line 106
    .line 107
    move v1, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {v1}, Lfk/z;->d()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;->a:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-virtual {v4, v2, v3, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 120
    .line 121
    .line 122
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 123
    .line 124
    move v2, v3

    .line 125
    :goto_3
    if-ge v2, v1, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;->a:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    iget v6, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->h:I

    .line 150
    .line 151
    invoke-virtual {v5, v6, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-eqz v2, :cond_3

    .line 156
    .line 157
    sget-object v6, Lfk/z;->a:Lfk/z;

    .line 158
    .line 159
    invoke-virtual {v6}, Lfk/z;->a()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    move v6, v3

    .line 165
    :goto_4
    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-nez v0, :cond_5

    .line 179
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 186
    .line 187
    move v2, v3

    .line 188
    :goto_5
    if-ge v2, v1, :cond_8

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBinding;->a:Landroid/widget/LinearLayout;

    .line 195
    .line 196
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    if-nez v4, :cond_6

    .line 201
    .line 202
    return-void

    .line 203
    :cond_6
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 208
    .line 209
    if-nez v5, :cond_7

    .line 210
    .line 211
    const/16 v5, 0x8

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_7
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    sget-object v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 221
    .line 222
    iget v7, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->g:I

    .line 223
    .line 224
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->d(I)Landroid/util/Size;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget-object v7, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 229
    .line 230
    new-instance v8, Lcom/startshorts/androidplayer/adapter/discover/a0;

    .line 231
    .line 232
    invoke-direct {v8, v7, p1, v5, p2}, Lcom/startshorts/androidplayer/adapter/discover/a0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v5, v6, v4, v8}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->r(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/util/Size;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 236
    .line 237
    .line 238
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 242
    .line 243
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/b0;

    .line 244
    .line 245
    invoke-direct {v2, v0, p1, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/b0;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 246
    .line 247
    .line 248
    iput-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->j:Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    return-void
.end method

.method public final r(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/util/Size;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "Landroid/util/Size;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "size"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "itemView"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "onItemClick"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 29
    .line 30
    sget v1, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 31
    .line 32
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    sget v2, Lcom/startshorts/androidplayer/R$id;->tvLabelStyle:I

    .line 39
    .line 40
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    sget v3, Lcom/startshorts/androidplayer/R$id;->tvPlayCount:I

    .line 47
    .line 48
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/widget/TextView;

    .line 53
    .line 54
    sget v4, Lcom/startshorts/androidplayer/R$id;->tvEpisodeLabel:I

    .line 55
    .line 56
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/TextView;

    .line 61
    .line 62
    sget v5, Lcom/startshorts/androidplayer/R$id;->tvRankLabel:I

    .line 63
    .line 64
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Landroid/widget/TextView;

    .line 69
    .line 70
    const/4 v5, 0x3

    .line 71
    new-array v5, v5, [Landroid/view/View;

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    aput-object v1, v5, v6

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    aput-object v0, v5, v7

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    aput-object v4, v5, v8

    .line 81
    .line 82
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/Iterable;

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_0

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/view/View;

    .line 103
    .line 104
    new-instance v9, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e$a;

    .line 105
    .line 106
    invoke-direct {v9, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const/16 v5, 0x20

    .line 126
    .line 127
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    invoke-virtual {v0, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .line 160
    invoke-virtual {v0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    sget-object p4, Lkk/f;->a:Lkk/f;

    .line 164
    .line 165
    new-instance v5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 166
    .line 167
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v5, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    invoke-virtual {v5, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-virtual {v5, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 189
    .line 190
    .line 191
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 192
    .line 193
    invoke-virtual {v5, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->S()F

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-virtual {v5, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 204
    .line 205
    .line 206
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    invoke-virtual {p4, v0, v5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    sget-object p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 219
    .line 220
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 224
    .line 225
    .line 226
    move-result p4

    .line 227
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    .line 233
    const-string v0, ""

    .line 234
    .line 235
    :cond_1
    invoke-virtual {p2, v2, p4, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->h(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    invoke-virtual {p2, v3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    const/4 p4, 0x0

    .line 250
    if-eqz p2, :cond_4

    .line 251
    .line 252
    check-cast p2, Ljava/lang/Iterable;

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_3

    .line 263
    .line 264
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    move-object v1, v0

    .line 269
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-eqz v2, :cond_2

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-lez v1, :cond_2

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_3
    move-object v0, p4

    .line 292
    :goto_1
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_4
    move-object v0, p4

    .line 296
    :goto_2
    const/16 p2, 0x8

    .line 297
    .line 298
    if-eqz v0, :cond_5

    .line 299
    .line 300
    move v1, v6

    .line 301
    goto :goto_3

    .line 302
    :cond_5
    move v1, p2

    .line 303
    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    if-eqz v0, :cond_6

    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p4

    .line 312
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    new-instance p4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e$b;

    .line 316
    .line 317
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e;->k:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 318
    .line 319
    invoke-direct {p4, v1, v0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$e$b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    if-eqz p1, :cond_a

    .line 334
    .line 335
    check-cast p1, Ljava/lang/Iterable;

    .line 336
    .line 337
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_8

    .line 346
    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    move-object v0, p3

    .line 352
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    if-eqz v1, :cond_9

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_7

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_8
    move-object p3, p4

    .line 375
    :cond_9
    :goto_4
    check-cast p3, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_a
    move-object p3, p4

    .line 379
    :goto_5
    if-eqz p3, :cond_b

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_b
    move v6, p2

    .line 383
    :goto_6
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    if-eqz p3, :cond_c

    .line 387
    .line 388
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p4

    .line 392
    :cond_c
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    :goto_7
    return-void
.end method
