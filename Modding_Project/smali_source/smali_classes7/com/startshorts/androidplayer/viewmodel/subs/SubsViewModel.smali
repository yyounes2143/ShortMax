.class public final Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "SubsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n360#2,7:279\n1863#2,2:287\n1863#2,2:289\n1#3:286\n*S KotlinDebug\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel\n*L\n91#1:279,7\n197#1:287,2\n213#1:289,2\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->i:Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lil/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lil/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method

.method private final I(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    const/16 v6, 0x1a

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const-string v1, "subscribe"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 37
    .line 38
    invoke-static {v1, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {v0, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final J()V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 4
    .line 5
    iget-object v11, v7, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    const/16 v15, 0x3a

    .line 8
    .line 9
    const/16 v16, 0x0

    .line 10
    .line 11
    const-string v9, "subscribe"

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v12, 0x0

    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v14, 0x0

    .line 17
    invoke-static/range {v8 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v3, v7, v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lil/a;

    .line 27
    .line 28
    invoke-direct {v4, v7}, Lil/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v1, "loadSkuList"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object/from16 v0, p0

    .line 37
    .line 38
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->r(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object/from16 v4, p3

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_0
    move-object v5, v2

    .line 41
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 46
    .line 47
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const/16 v14, 0x360

    .line 52
    .line 53
    const/4 v15, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    move-object/from16 v6, p4

    .line 61
    .line 62
    move-object/from16 v7, p2

    .line 63
    .line 64
    move-object/from16 v8, p5

    .line 65
    .line 66
    invoke-static/range {v3 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method private static final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final O()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v2, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    new-instance v2, Lzc/g;

    .line 59
    .line 60
    sget-object v3, Lle/h;->a:Lle/h;

    .line 61
    .line 62
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v2, v3, v1}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;-><init>(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final P(Landroid/content/Context;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    :goto_1
    invoke-direct {v0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;-><init>(ILjava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final Q(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->j(Landroid/content/Context;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    :goto_1
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$e;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final R(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$querySubsUpdateMode$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p2

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$querySubsUpdateMode$1;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "querySubsUpdateMode"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final E(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discountSubs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 15
    .line 16
    check-cast v2, Ljava/util/Collection;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_5

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move v5, v3

    .line 37
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-ne v6, v7, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v5, v1

    .line 64
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eq v5, v1, :cond_3

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v5, v3

    .line 77
    :goto_2
    if-eqz v5, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const/4 v4, 0x0

    .line 81
    :goto_3
    if-eqz v4, :cond_5

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    move v4, v1

    .line 89
    :goto_4
    iput v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 90
    .line 91
    if-eq v4, v1, :cond_6

    .line 92
    .line 93
    invoke-interface {v2, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_6
    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_7
    :goto_5
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 110
    .line 111
    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 112
    .line 113
    :cond_8
    :goto_6
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 114
    .line 115
    return p1
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/subs/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/subs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->J()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;->b()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->P(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$c;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$c;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$c;->a()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->Q(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$e;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->O()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;->a()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->I(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->e()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->c()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->d()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;->f()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    move-object v0, p0

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;->b()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;->c()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->R(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 135
    .line 136
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final S(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->g:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SubsViewModel"

    .line 2
    .line 3
    return-object v0
.end method
