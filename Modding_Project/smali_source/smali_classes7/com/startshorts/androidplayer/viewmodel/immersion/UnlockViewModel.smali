.class public final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "UnlockViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,858:1\n47#2,4:859\n1863#3,2:863\n1863#3,2:865\n1863#3,2:867\n1863#3,2:869\n1863#3,2:871\n1863#3,2:873\n360#3,7:875\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel\n*L\n546#1:859,4\n575#1:863,2\n580#1:865,2\n608#1:867,2\n612#1:869,2\n617#1:871,2\n748#1:873,2\n774#1:875,7\n*E\n"
    }
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/util/List;
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

.field private k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Z

.field private u:I

.field private v:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->w:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$a;

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
    new-instance v0, Lvk/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lvk/e;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->e:Lms/i;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->u:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->A0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final A0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;-><init>(ILjava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic B()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->h0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final B0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    sget-object v0, Lud/b;->a:Lud/b;

    .line 35
    .line 36
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v9, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const/16 v6, 0x3e8

    .line 49
    .line 50
    int-to-long v6, v6

    .line 51
    mul-long/2addr v2, v6

    .line 52
    add-long v6, v4, v2

    .line 53
    .line 54
    move-object v2, v9

    .line 55
    move-object v3, p1

    .line 56
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;JJ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v8, v9}, Lud/b;->a3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setCoins(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setKeepGiveCoins(Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoinsUnit()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setCoinsUnit(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGiveCoinsUnit(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSubscript(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v2
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Ljava/util/List;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->P(Ljava/util/List;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v6, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    move-object v5, p0

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$unlockEpisodeByDiscount$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v1, "unlockEpisodeByDiscount"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    move-object v0, p0

    .line 24
    move-object v3, v8

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->s0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->s:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->B0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P(Ljava/util/List;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;",
            "J)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->s:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3, p4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->setNextRefreshTime(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private final b0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v1

    .line 35
    :goto_1
    if-eq v3, v1, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/immersion/f$g;

    .line 46
    .line 47
    new-instance v5, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 48
    .line 49
    invoke-direct {v5, v2, v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v3, v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$g;-><init>(ILcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private final c0(Ljava/util/List;)V
    .locals 17
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->S()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    sget-object v2, Lud/a;->a:Lud/a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_b

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v12, "subs_first_discount"

    .line 24
    .line 25
    sparse-switch v3, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :sswitch_0
    const-string v3, "unlock_template_22"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :sswitch_1
    const-string v3, "unlock_template_21"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_b

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 58
    .line 59
    const/4 v13, 0x2

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-static {v2, v1, v14, v13, v15}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-static {v2, v1, v14, v13, v15}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v2, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 95
    .line 96
    invoke-static {v3, v1, v14, v13, v15}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 109
    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    check-cast v2, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object v4, v2

    .line 129
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 130
    .line 131
    invoke-static {v4, v1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 135
    .line 136
    iget-object v5, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 137
    .line 138
    iget-object v7, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v8, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->h:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v9, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i:Ljava/lang/String;

    .line 143
    .line 144
    move-object v3, v10

    .line 145
    move-object v6, v11

    .line 146
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->N0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 151
    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    check-cast v2, Ljava/lang/Iterable;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v16

    .line 160
    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getExtra()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 177
    .line 178
    if-eqz v3, :cond_5

    .line 179
    .line 180
    move-object v4, v2

    .line 181
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    const/4 v3, 0x7

    .line 188
    if-eq v2, v3, :cond_6

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    const/16 v3, 0xa

    .line 195
    .line 196
    if-ne v2, v3, :cond_7

    .line 197
    .line 198
    :cond_6
    invoke-static {v4, v1, v14, v13, v15}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_5

    .line 208
    .line 209
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 210
    .line 211
    iget-object v5, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 212
    .line 213
    iget-object v7, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v8, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->h:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v9, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i:Ljava/lang/String;

    .line 218
    .line 219
    move-object v3, v10

    .line 220
    move-object v6, v11

    .line 221
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->r:Z

    .line 226
    .line 227
    if-nez v1, :cond_b

    .line 228
    .line 229
    const/4 v1, 0x1

    .line 230
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->r:Z

    .line 231
    .line 232
    sget-object v2, Lqf/h;->a:Lqf/h;

    .line 233
    .line 234
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 235
    .line 236
    invoke-virtual {v2, v3, v15}, Lqf/h;->p(Ljava/util/List;Ljava/util/List;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-nez v3, :cond_9

    .line 241
    .line 242
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 243
    .line 244
    invoke-virtual {v2, v15, v3}, Lqf/h;->p(Ljava/util/List;Ljava/util/List;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_9

    .line 249
    .line 250
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->o:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Lqf/h;->n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-nez v3, :cond_9

    .line 257
    .line 258
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Lqf/h;->n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_9

    .line 265
    .line 266
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Lqf/h;->n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_a

    .line 273
    .line 274
    :cond_9
    move v14, v1

    .line 275
    :cond_a
    invoke-direct {v0, v14}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f0(Z)V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/f$c;

    .line 283
    .line 284
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 285
    .line 286
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$c;-><init>(Ljava/util/List;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x4ee6ce84 -> :sswitch_2
        -0x12b9f457 -> :sswitch_1
        -0x12b9f456 -> :sswitch_0
    .end sparse-switch
.end method

.method private final d0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_5

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
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    move-object v4, v3

    .line 24
    check-cast v4, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    if-ne v5, v6, :cond_3

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getExtra()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    instance-of v5, v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v4, v2

    .line 45
    :goto_1
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object/from16 v5, p2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object/from16 v5, p2

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    :goto_2
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move-object/from16 v5, p2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object v3, v2

    .line 68
    :goto_3
    check-cast v3, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    move-object v3, v2

    .line 72
    :goto_4
    if-eqz v3, :cond_6

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getExtra()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move-object v1, v2

    .line 80
    :goto_5
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 81
    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 85
    .line 86
    move-object v5, v1

    .line 87
    goto :goto_6

    .line 88
    :cond_7
    move-object v5, v2

    .line 89
    :goto_6
    if-nez v5, :cond_8

    .line 90
    .line 91
    return-void

    .line 92
    :cond_8
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->S()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-nez p4, :cond_9

    .line 99
    .line 100
    :goto_7
    move-object v9, v2

    .line 101
    goto :goto_8

    .line 102
    :cond_9
    sget-object v1, Lud/a;->a:Lud/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    goto :goto_7

    .line 109
    :goto_8
    const/16 v13, 0x1c0

    .line 110
    .line 111
    const/4 v14, 0x0

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    move-object/from16 v6, p3

    .line 116
    .line 117
    move-object/from16 v7, p1

    .line 118
    .line 119
    move-object/from16 v8, p4

    .line 120
    .line 121
    invoke-static/range {v3 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private final e0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "subs_first_discount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->S()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const-string v0, "other"

    .line 28
    .line 29
    :cond_2
    move-object v3, v0

    .line 30
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    sget-object v0, Lud/a;->a:Lud/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->h:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->V0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final f0(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "subs_first_discount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->S()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const-string v0, "other"

    .line 28
    .line 29
    :cond_2
    move-object v3, v0

    .line 30
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    sget-object v0, Lud/a;->a:Lud/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    move v5, p1

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->X0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final g0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_3

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
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v4, v2

    .line 25
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    move-object/from16 v5, p2

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :goto_0
    move-object v6, v2

    .line 42
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 43
    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->S()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez p4, :cond_2

    .line 53
    .line 54
    :goto_1
    move-object v10, v3

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    sget-object v1, Lud/a;->a:Lud/a;

    .line 57
    .line 58
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const/16 v15, 0x3c0

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    move-object/from16 v7, p3

    .line 72
    .line 73
    move-object/from16 v8, p1

    .line 74
    .line 75
    move-object/from16 v9, p4

    .line 76
    .line 77
    invoke-static/range {v4 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private static final h0()Landroidx/lifecycle/MutableLiveData;
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

.method private final i0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n0(Z)Lkotlinx/coroutines/r;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final k0()V
    .locals 6

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
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_5

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sparse-switch v4, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :sswitch_0
    const-string v4, "unlock_template_22"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :sswitch_1
    const-string v4, "unlock_template_21"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string v4, "subs_first_discount"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    check-cast v3, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    check-cast v3, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-lez v5, :cond_4

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_6

    .line 166
    .line 167
    new-instance v3, Lzc/g;

    .line 168
    .line 169
    sget-object v4, Lle/h;->a:Lle/h;

    .line 170
    .line 171
    invoke-virtual {v4}, Lle/h;->a()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-direct {v3, v4, v1}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    new-instance v1, Lzc/g;

    .line 188
    .line 189
    sget-object v3, Lle/h;->a:Lle/h;

    .line 190
    .line 191
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-direct {v1, v3, v2}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/f$b;

    .line 206
    .line 207
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$b;-><init>(Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    nop

    .line 215
    :sswitch_data_0
    .sparse-switch
        -0x4ee6ce84 -> :sswitch_2
        -0x12b9f457 -> :sswitch_1
        -0x12b9f456 -> :sswitch_0
    .end sparse-switch
.end method

.method private final l0(Z)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZLrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "querySubsDiscount"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method static synthetic m0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l0(Z)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final n0(Z)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZLrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryUnlockEpisodeProductList"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method static synthetic o0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n0(Z)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final p0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockPanelAdd$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockPanelAdd$1;-><init>(Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryUnlockPanelAdd"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final q0(Landroid/content/Context;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryWatchAdResult"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final r0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeMethod;->getExtra()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.CoinSku"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h0(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method private final s0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->C()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I0()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x1

    .line 28
    if-ne v7, v8, :cond_0

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-static {v0, v8, v6, v5, v6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-nez v1, :cond_1

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {v2, p1, v0, v5, v6}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->x(Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method private final y0(Landroid/content/Context;ZLjava/lang/String;)Lkotlinx/coroutines/r;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$b;-><init>(Lgt/d0$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v3, v0

    .line 34
    move-object v4, p0

    .line 35
    move-object v5, p1

    .line 36
    move v6, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;ZLjava/lang/String;Lrs/c;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v3, "singleUnlockEpisodeByAd"

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move-object v5, v0

    .line 48
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->n(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private final z0(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v8, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v8, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t:Z

    .line 8
    .line 9
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, v9

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, v8

    .line 15
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p0

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByCoins$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLjava/lang/String;Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lvk/f;

    .line 23
    .line 24
    invoke-direct {v5, p0, v8}, Lvk/f;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v2, "singleUnlockEpisodeByCoins"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v1, p0

    .line 32
    move-object v4, v9

    .line 33
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final Q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->o:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public final R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q:Ljava/util/List;

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

.method public final S()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "unlock_template_21"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v0, "ads_coins"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "unlock_template_22"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "db_facsimile_pay"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, ""

    .line 26
    .line 27
    :goto_0
    return-object v0
.end method

.method public final T()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->s:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public final V()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->v:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Ljava/util/List;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final a0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->e:Lms/i;

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

.method public final j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/immersion/e;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->f:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "subs_first_discount"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p0()Lkotlinx/coroutines/r;

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;->c()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    sparse-switch v0, :sswitch_data_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :sswitch_0
    const-string v0, "unlock_template_22"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :sswitch_1
    const-string v0, "unlock_template_21"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_f

    .line 96
    .line 97
    :cond_2
    invoke-static {p0, v4, v3, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->o0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_3
    invoke-static {p0, v4, v3, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$g;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i0()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$k;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i0()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$j;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$j;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$j;->a()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$j;->b()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q0(Landroid/content/Context;)Lkotlinx/coroutines/r;

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$h;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k0()V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;

    .line 164
    .line 165
    if-eqz v0, :cond_9

    .line 166
    .line 167
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;->c()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;->b()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;->d()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;->a()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->z0(Landroid/content/Context;ZZLjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;->b()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;->c()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$n;->d()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->C0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 217
    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;->b()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;->a()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;->c()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->y0(Landroid/content/Context;ZLjava/lang/String;)Lkotlinx/coroutines/r;

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->i0()V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$c;

    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$c;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$c;->a()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->c0(Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$e;

    .line 256
    .line 257
    if-eqz v0, :cond_d

    .line 258
    .line 259
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$e;

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$e;->a()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$e;->b()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 274
    .line 275
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->d0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_d
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$f;

    .line 280
    .line 281
    if-eqz v0, :cond_e

    .line 282
    .line 283
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$f;

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$f;->a()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$f;->b()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$f;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 298
    .line 299
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->g0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 300
    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_e
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$b;->b:Lcom/startshorts/androidplayer/viewmodel/immersion/e$b;

    .line 304
    .line 305
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_10

    .line 310
    .line 311
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->b0()V

    .line 312
    .line 313
    .line 314
    :cond_f
    :goto_0
    return-void

    .line 315
    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 316
    .line 317
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 318
    .line 319
    .line 320
    throw p1

    .line 321
    :sswitch_data_0
    .sparse-switch
        -0x4ee6ce84 -> :sswitch_2
        -0x12b9f457 -> :sswitch_1
        -0x12b9f456 -> :sswitch_0
    .end sparse-switch
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "UnlockViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public final u0(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->p:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->n:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t:Z

    .line 6
    .line 7
    return-void
.end method

.method public final w0(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final x0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "throwable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
