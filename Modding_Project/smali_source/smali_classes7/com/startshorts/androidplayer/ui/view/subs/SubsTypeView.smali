.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
.source "SubsTypeView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsTypeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsTypeView.kt\ncom/startshorts/androidplayer/ui/view/subs/SubsTypeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
    }
.end annotation


# instance fields
.field private v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic V(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->Z(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->c0(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic X(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Y(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lck/k;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lck/k;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b1(ZLkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private final b0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;I",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p3

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-ltz p4, :cond_3

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt p4, v0, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    move-object v2, p3

    .line 27
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 30
    .line 31
    invoke-virtual {v0, p2, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->g1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "coin_popup"

    .line 35
    .line 36
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    sget-object p1, Lud/a;->a:Lud/a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    move-object v4, p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    const/16 v8, 0x70

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v1, p2

    .line 59
    move-object v3, p5

    .line 60
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_2
    return-void
.end method

.method private static final c0(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move-object p2, v1

    .line 31
    :cond_1
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 32
    .line 33
    :cond_2
    if-eqz p0, :cond_3

    .line 34
    .line 35
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_3

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public static synthetic setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v4, p1

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x4

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    move v6, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v6, p3

    .line 19
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v8, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v8, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v9, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v9, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v10, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v10, p7

    .line 42
    .line 43
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    move-object v11, v2

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-object/from16 v11, p8

    .line 50
    .line 51
    :goto_5
    move-object v3, p0

    .line 52
    move-object v5, p2

    .line 53
    move-object/from16 v7, p4

    .line 54
    .line 55
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public final setSubsSkus(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p3

    .line 8
    .line 9
    move-object/from16 v14, p4

    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz v11, :cond_0

    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    move-object/from16 v15, p5

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v11}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->p(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object/from16 v15, p5

    .line 36
    .line 37
    invoke-virtual {v0, v15}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->o(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v1, p8

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->q(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_0
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_1
    iput-object v0, v10, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 52
    .line 53
    invoke-virtual {v10, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 54
    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    if-eqz v14, :cond_2

    .line 58
    .line 59
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    move v8, v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v8, v9

    .line 66
    :goto_2
    const/4 v0, 0x1

    .line 67
    if-ne v8, v0, :cond_3

    .line 68
    .line 69
    move/from16 v16, v0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move/from16 v16, v9

    .line 73
    .line 74
    :goto_3
    if-lez v8, :cond_a

    .line 75
    .line 76
    invoke-virtual {v10, v8}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->I(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 77
    .line 78
    .line 79
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 80
    .line 81
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v10, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 86
    .line 87
    .line 88
    if-eqz v16, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v10, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    const-string v1, "subscribe"

    .line 103
    .line 104
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    if-nez v13, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0}, Lfk/z;->n()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v10, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    add-int/lit8 v1, v8, -0x1

    .line 125
    .line 126
    if-ne v13, v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Lfk/z;->n()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {v10, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_6
    invoke-virtual {v0}, Lfk/z;->l()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const/high16 v1, 0x41e00000    # 28.0f

    .line 145
    .line 146
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v10, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    if-nez v13, :cond_8

    .line 155
    .line 156
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {v10, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    add-int/lit8 v1, v8, -0x1

    .line 169
    .line 170
    if-ne v13, v1, :cond_9

    .line 171
    .line 172
    const/high16 v1, 0x41b00000    # 22.0f

    .line 173
    .line 174
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v10, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const/high16 v0, 0x41600000    # 14.0f

    .line 187
    .line 188
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    const/high16 v1, 0x41200000    # 10.0f

    .line 193
    .line 194
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v10, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 199
    .line 200
    .line 201
    :cond_a
    :goto_4
    invoke-virtual {v10, v9}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 202
    .line 203
    .line 204
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 205
    .line 206
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 207
    .line 208
    .line 209
    const/4 v0, -0x1

    .line 210
    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 211
    .line 212
    new-instance v7, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;

    .line 213
    .line 214
    move-object v0, v7

    .line 215
    move-object/from16 v2, p0

    .line 216
    .line 217
    move-object/from16 v3, p1

    .line 218
    .line 219
    move-object/from16 v4, p2

    .line 220
    .line 221
    move-object/from16 v5, p4

    .line 222
    .line 223
    move-object/from16 v6, p5

    .line 224
    .line 225
    move-object v11, v7

    .line 226
    move-object/from16 v7, p6

    .line 227
    .line 228
    move/from16 v17, v8

    .line 229
    .line 230
    move/from16 v8, v16

    .line 231
    .line 232
    move v12, v9

    .line 233
    move/from16 v9, v17

    .line 234
    .line 235
    invoke-direct/range {v0 .. v9}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView$a;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ZI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v11}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 239
    .line 240
    .line 241
    new-instance v0, Lck/j;

    .line 242
    .line 243
    move-object/from16 v1, p7

    .line 244
    .line 245
    invoke-direct {v0, v14, v1}, Lck/j;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v14}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    move-object v0, v14

    .line 255
    check-cast v0, Ljava/util/Collection;

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_b

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_b
    if-eqz v13, :cond_c

    .line 267
    .line 268
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-ge v13, v0, :cond_c

    .line 273
    .line 274
    invoke-virtual {v10, v13, v12}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 275
    .line 276
    .line 277
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    .line 278
    .line 279
    move-object/from16 v1, p1

    .line 280
    .line 281
    move-object/from16 v2, p2

    .line 282
    .line 283
    move-object/from16 v3, p4

    .line 284
    .line 285
    move/from16 v4, p3

    .line 286
    .line 287
    move-object/from16 v5, p5

    .line 288
    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 290
    .line 291
    .line 292
    if-eqz v14, :cond_d

    .line 293
    .line 294
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 299
    .line 300
    if-eqz v0, :cond_d

    .line 301
    .line 302
    invoke-direct {v10, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->Y(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 303
    .line 304
    .line 305
    :cond_d
    return-void
.end method
