.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/i;
.super Ljava/lang/Object;
.source "DiscountSkuFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/i$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/i$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/manager/immersion/feature/i$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/i$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;)V
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/immersion/feature/i;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/i;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidStartTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidEndTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq p2, v1, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidStartTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    cmp-long p2, v1, v3

    .line 48
    .line 49
    if-ltz p2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidEndTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    cmp-long p1, v1, p1

    .line 56
    .line 57
    if-gtz p1, :cond_3

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    :cond_3
    :goto_0
    return v0
.end method

.method private final f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private final g()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 16
    .line 17
    .line 18
    const-class v2, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lhf/k;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lhf/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/i;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/startshorts/androidplayer/manager/immersion/feature/i$d;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 46
    .line 47
    return-object v0
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/i;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->q()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->l(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_7

    .line 33
    .line 34
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->m(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;

    .line 71
    .line 72
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;->b()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->n()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$i;

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->n()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_7

    .line 96
    .line 97
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_7

    .line 112
    .line 113
    new-instance v0, Lgi/f;

    .line 114
    .line 115
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method

.method private final l(Ljava/util/List;)V
    .locals 4
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, p1, v3, v1, v2}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final m(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p2, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;

    .line 34
    .line 35
    invoke-interface {p2, v0, p1, p3, p4}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;->a(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->e:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->e:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Lzc/g;

    .line 26
    .line 27
    sget-object v3, Lle/h;->a:Lle/h;

    .line 28
    .line 29
    invoke-virtual {v3}, Lle/h;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v3, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->g()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->n()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Lhi/b;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0}, Lhi/b;->setCancelable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lfi/a;->show()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->e:Lhi/b;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/i$c;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->i(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->r(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->g()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 8
    .line 9
    const-string v2, "immersion_discount"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public i(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(ILcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 10
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->e()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    sget-object v9, Lud/a;->a:Lud/a;

    .line 19
    .line 20
    invoke-virtual {v9}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/16 v7, 0x30

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const-string v1, "limited_time_discount"

    .line 28
    .line 29
    const-string v2, "other"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v0, p1

    .line 34
    move-object v3, p3

    .line 35
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x8

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const-string v1, "limited_time_discount"

    .line 46
    .line 47
    const-string v2, "other"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/16 v8, 0x70

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const-string v1, "limited_time_discount"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v2, p2

    .line 65
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;->d()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public final p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 13
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-nez v3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->f()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->g()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    if-eqz v11, :cond_1

    .line 29
    .line 30
    new-instance v12, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 31
    .line 32
    const/16 v9, 0xf0

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const-string v1, "limited_time_discount"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v0, v12

    .line 42
    move-object v4, p1

    .line 43
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive AcknowledgePurchaseResult -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "DiscountSkuFeature"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->containsShortsId(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->r(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;

    .line 44
    .line 45
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->d:I

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i$a;->c(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    sget-object v1, Lud/a;->a:Lud/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v4, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v1, "scene"

    .line 17
    .line 18
    const-string v7, "retry_pop"

    .line 19
    .line 20
    invoke-virtual {v2, v1, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v1, "restore_click"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->s()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/i;->g()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 44
    .line 45
    invoke-direct {v1, v7}, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->DISCOUNT_SKU:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
