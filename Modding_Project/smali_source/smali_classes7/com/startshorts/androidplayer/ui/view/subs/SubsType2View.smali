.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
.source "SubsType2View.kt"


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
        "SMAP\nSubsType2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsType2View.kt\ncom/startshorts/androidplayer/ui/view/subs/SubsType2View\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
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

.method public static synthetic V(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->d0(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->a0(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic X(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;)Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Y(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Z(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
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
    new-instance p1, Lck/i;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lck/i;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;)V

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

.method private static final a0(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

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

.method private final c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
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

.method private static final d0(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroid/view/View;I)V
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

.method public static synthetic setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

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
    move/from16 v6, p3

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v8, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v8, p5

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    move-object v9, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v9, p6

    .line 35
    .line 36
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    move-object v10, v2

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v10, p7

    .line 43
    .line 44
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    move-object v11, v2

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move-object/from16 v11, p8

    .line 51
    .line 52
    :goto_5
    and-int/lit16 v0, v0, 0x100

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    move-object v12, v2

    .line 57
    goto :goto_6

    .line 58
    :cond_6
    move-object/from16 v12, p9

    .line 59
    .line 60
    :goto_6
    move-object v3, p0

    .line 61
    move-object v5, p2

    .line 62
    move-object/from16 v7, p4

    .line 63
    .line 64
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->setSubsSkus(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final b0()Z
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

.method public final e0(II)V
    .locals 2

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_2
    return-void
.end method

.method public final setSubsSkus(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function0;)V
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
    .param p8    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function0;
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
            "Lat/n<",
            "-",
            "Ljava/lang/Integer;",
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
    move-object/from16 v11, p0

    .line 2
    .line 3
    move/from16 v12, p3

    .line 4
    .line 5
    move-object/from16 v13, p4

    .line 6
    .line 7
    move-object/from16 v14, p8

    .line 8
    .line 9
    const-string v0, "scene"

    .line 10
    .line 11
    move-object/from16 v15, p2

    .line 12
    .line 13
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;-><init>()V

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p9

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->r(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, v11, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 27
    .line 28
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 29
    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    if-eqz v13, :cond_0

    .line 33
    .line 34
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    move v9, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v9, v10

    .line 41
    :goto_0
    const/4 v0, 0x1

    .line 42
    if-ne v9, v0, :cond_1

    .line 43
    .line 44
    move/from16 v16, v0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move/from16 v16, v10

    .line 48
    .line 49
    :goto_1
    iget-object v0, v11, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->v:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;

    .line 50
    .line 51
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter3"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;

    .line 57
    .line 58
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3;->s(I)V

    .line 59
    .line 60
    .line 61
    if-lez v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {v11, v9}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->I(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 64
    .line 65
    .line 66
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 67
    .line 68
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v11, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 73
    .line 74
    .line 75
    if-eqz v16, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {v11, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    if-nez v12, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0}, Lfk/z;->n()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {v11, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    add-int/lit8 v1, v9, -0x1

    .line 104
    .line 105
    if-ne v12, v1, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Lfk/z;->n()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v11, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v0}, Lfk/z;->l()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/high16 v1, 0x41e00000    # 28.0f

    .line 124
    .line 125
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v11, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_2
    invoke-virtual {v11, v10}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 133
    .line 134
    .line 135
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 136
    .line 137
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 138
    .line 139
    .line 140
    const/4 v0, -0x1

    .line 141
    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 142
    .line 143
    new-instance v8, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View$a;

    .line 144
    .line 145
    move-object v0, v8

    .line 146
    move-object/from16 v1, p0

    .line 147
    .line 148
    move-object/from16 v3, p1

    .line 149
    .line 150
    move-object/from16 v4, p2

    .line 151
    .line 152
    move-object/from16 v5, p4

    .line 153
    .line 154
    move-object/from16 v6, p5

    .line 155
    .line 156
    move-object/from16 v7, p6

    .line 157
    .line 158
    move-object v15, v8

    .line 159
    move-object/from16 v8, p8

    .line 160
    .line 161
    move/from16 v17, v9

    .line 162
    .line 163
    move/from16 v9, v16

    .line 164
    .line 165
    move v14, v10

    .line 166
    move/from16 v10, v17

    .line 167
    .line 168
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View$a;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lat/n;ZI)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v15}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 172
    .line 173
    .line 174
    new-instance v0, Lck/h;

    .line 175
    .line 176
    move-object/from16 v1, p7

    .line 177
    .line 178
    invoke-direct {v0, v13, v1}, Lck/h;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v13}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    move-object v0, v13

    .line 188
    check-cast v0, Ljava/util/Collection;

    .line 189
    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ge v12, v0, :cond_7

    .line 204
    .line 205
    if-lez v12, :cond_8

    .line 206
    .line 207
    invoke-virtual {v11, v12, v14}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_3
    move v6, v14

    .line 211
    goto :goto_5

    .line 212
    :cond_8
    if-nez v12, :cond_7

    .line 213
    .line 214
    move-object v0, v13

    .line 215
    check-cast v0, Ljava/lang/Iterable;

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    const/4 v2, 0x0

    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    move-object v3, v1

    .line 233
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_a
    move-object v1, v2

    .line 243
    :goto_4
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 244
    .line 245
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object v3, v0

    .line 250
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-nez v3, :cond_b

    .line 257
    .line 258
    move-object v2, v0

    .line 259
    :cond_b
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 260
    .line 261
    move-object/from16 v0, p8

    .line 262
    .line 263
    move v6, v14

    .line 264
    if-eqz v0, :cond_c

    .line 265
    .line 266
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-interface {v0, v3, v2, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    .line 274
    .line 275
    move-object/from16 v1, p1

    .line 276
    .line 277
    move-object/from16 v2, p2

    .line 278
    .line 279
    move-object/from16 v3, p4

    .line 280
    .line 281
    move/from16 v4, p3

    .line 282
    .line 283
    move-object/from16 v5, p5

    .line 284
    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 286
    .line 287
    .line 288
    if-eqz v13, :cond_d

    .line 289
    .line 290
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 295
    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;->Z(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 299
    .line 300
    .line 301
    :cond_d
    return-void
.end method
