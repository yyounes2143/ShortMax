.class public final Lce/j;
.super Ljava/lang/Object;
.source "ActRouteManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActRouteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActRouteManager.kt\ncom/startshorts/androidplayer/manager/act/ActRouteManager\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,584:1\n32#2,2:585\n1863#3,2:587\n1863#3,2:589\n*S KotlinDebug\n*F\n+ 1 ActRouteManager.kt\ncom/startshorts/androidplayer/manager/act/ActRouteManager\n*L\n207#1:585,2\n450#1:587,2\n486#1:589,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lce/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lce/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lce/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lce/j;->a:Lce/j;

    .line 7
    .line 8
    new-instance v0, Lce/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lce/d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lce/j;->b:Lms/i;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lce/j;->s(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lce/j;->t(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lce/j;->k()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lce/j;->w(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lce/j;->v(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lce/j;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;
    .locals 3

    .line 1
    invoke-direct {p0}, Lce/j;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "createPaymentDelegate -> from("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x29

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "ActRouteManager"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 43
    .line 44
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lce/j;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object v0
.end method

.method private final j()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lce/j;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic o(Lce/j;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lce/j;->n(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p3, 0x3

    .line 12
    invoke-virtual {v1, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 13
    .line 14
    .line 15
    new-instance p3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 16
    .line 17
    invoke-direct {p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const/4 v2, -0x1

    .line 30
    :goto_0
    invoke-virtual {p3, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getUpack()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 p2, 0x0

    .line 44
    :goto_1
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setActResource(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 60
    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p4, "routeToActScene -> exception -> "

    .line 67
    .line 68
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p3, "ActRouteManager"

    .line 83
    .line 84
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    return-void
.end method

.method public static synthetic r(Lce/j;ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    move v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p1

    .line 9
    :goto_0
    and-int/lit8 v0, p9, 0x8

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v5, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v5, p4

    .line 17
    :goto_1
    and-int/lit8 v0, p9, 0x40

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v8, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object/from16 v8, p7

    .line 24
    .line 25
    :goto_2
    move-object v1, p0

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move-object v6, p5

    .line 29
    move-object/from16 v7, p6

    .line 30
    .line 31
    move-object/from16 v9, p8

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v9}, Lce/j;->q(ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final s(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ActRouteManager"

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    new-instance v3, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const-string p5, "amount"

    .line 22
    .line 23
    invoke-virtual {v3, p5, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo p4, "sku"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-virtual {v3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p4, "product_id"

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v3, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p2, "scene"

    .line 46
    .line 47
    invoke-virtual {v3, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x0

    .line 54
    const-string/jumbo v2, "win_product_pay_success"

    .line 55
    .line 56
    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string p3, "routeWhenCallApp -> succeed pay"

    .line 65
    .line 66
    invoke-virtual {p2, v0, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo p2, "{\"h5_type\":2,\"data\":{\"type\":1}}"

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget p0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 82
    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p3, "routeWhenCallApp -> failed pay,msg="

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo p1, "{\"h5_type\":2}"

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private static final t(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ActRouteManager"

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    new-instance v3, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const-string p5, "amount"

    .line 22
    .line 23
    invoke-virtual {v3, p5, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo p4, "sku"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-virtual {v3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p4, "product_id"

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v3, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p2, "scene"

    .line 46
    .line 47
    invoke-virtual {v3, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x0

    .line 54
    const-string/jumbo v2, "win_product_pay_success"

    .line 55
    .line 56
    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string p3, "routeWhenCallApp -> succeed pay"

    .line 65
    .line 66
    invoke-virtual {p2, v0, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo p2, "{\"h5_type\":2,\"data\":{\"type\":1}}"

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget p0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 82
    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p3, "routeWhenCallApp -> failed pay,msg="

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo p1, "{\"h5_type\":2}"

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private static final u(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    new-instance p2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    check-cast p3, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;->getOriginPrice()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "originPrice"

    .line 43
    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v2, "discountPrice"

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;->getDiscountPrice()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v2, "renewPrice"

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;->getRenewPrice()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;->getSkuId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance p3, Lcom/startshorts/androidplayer/bean/act/ActCallH5QueryPriceResult;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-direct {p3, p0, v0, p2, p4}, Lcom/startshorts/androidplayer/bean/act/ActCallH5QueryPriceResult;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance p3, Lcom/startshorts/androidplayer/bean/act/ActCallH5QueryPriceResult;

    .line 81
    .line 82
    const/4 p2, -0x1

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p3, p0, p2, v0, p4}, Lcom/startshorts/androidplayer/bean/act/ActCallH5QueryPriceResult;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    new-instance p0, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;

    .line 88
    .line 89
    const/4 p2, 0x5

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 98
    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p4, "querySkuPrice result -> "

    .line 105
    .line 106
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    const-string p4, "ActRouteManager"

    .line 117
    .line 118
    invoke-virtual {p2, p4, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p0
.end method

.method private static final v(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    new-instance v5, Lce/i;

    .line 4
    .line 5
    invoke-direct {v5, p1}, Lce/i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    const/16 v6, 0x8

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const-string v3, "activity"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v2, p0

    .line 17
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->q0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final w(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p1, "{\"h5_type\":1, \"data\":{\"result\":1}}"

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string/jumbo p1, "{\"h5_type\":1, \"data\":{\"result\":0}}"

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lce/j;->j()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "destroyPaymentDelegate -> from("

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p1, 0x29

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v2, "ActRouteManager"

    .line 43
    .line 44
    invoke-virtual {v1, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->M()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final i()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lce/j;->c:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 13
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "actResource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isShorts()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lag/a;->a:Lag/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v11, 0x1f8

    .line 19
    .line 20
    const/4 v12, 0x0

    .line 21
    const-string v2, "resource_bit"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    move-object v4, p1

    .line 30
    invoke-static/range {v1 .. v12}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
    const-string v0, "fromPosition"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ActRouteManager"

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string p2, "routeToActH5 -> url is null"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "routeToActH5 -> fromPosition("

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ") url("

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v3, 0x29

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->B:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;

    .line 59
    .line 60
    const/16 v8, 0x8

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v4, p1

    .line 65
    move-object v5, p2

    .line 66
    move-object v6, p3

    .line 67
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;->c(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final n(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
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
    const-string v0, "fromPosition"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "actResource"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "routeToActScene -> "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "ActRouteManager"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_9

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRawSkipType()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v0, v2, :cond_1

    .line 65
    .line 66
    const-string p2, "resource_bit"

    .line 67
    .line 68
    invoke-direct {p0, p1, v1, p2, p3}, Lce/j;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eq v0, v2, :cond_7

    .line 79
    .line 80
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eq v0, v2, :cond_7

    .line 87
    .line 88
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-ne v0, v2, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->NATIVE:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eq v0, v2, :cond_8

    .line 104
    .line 105
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v0, v2, :cond_3

    .line 112
    .line 113
    sget-object p2, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 114
    .line 115
    invoke-virtual {p2, p1, v1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eq v0, v1, :cond_4

    .line 126
    .line 127
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ne v0, v1, :cond_8

    .line 134
    .line 135
    :cond_4
    sget-object v0, Laa/a;->a:Laa/a;

    .line 136
    .line 137
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 148
    .line 149
    if-nez v0, :cond_5

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 153
    .line 154
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/act/ActResource;->formatBrowserUrl()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->B:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;

    .line 165
    .line 166
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    :goto_0
    return-void

    .line 171
    :cond_7
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->B:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;

    .line 172
    .line 173
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    :goto_2
    return-void

    .line 177
    :cond_9
    :goto_3
    const-string p1, "routeToActScene failed -> skipValue is null"

    .line 178
    .line 179
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public final q(ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 28
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    move-object/from16 v2, p4

    .line 8
    .line 9
    move-object/from16 v3, p5

    .line 10
    .line 11
    move-object/from16 v4, p6

    .line 12
    .line 13
    move-object/from16 v5, p8

    .line 14
    .line 15
    const-string v7, "activity_page"

    .line 16
    .line 17
    const-string v8, "fromPage"

    .line 18
    .line 19
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v8, "activity"

    .line 23
    .line 24
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v9, "json"

    .line 28
    .line 29
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v9, "onParsedResult"

    .line 33
    .line 34
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v9, "callH5"

    .line 38
    .line 39
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    new-instance v10, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v12, "routeWhenCallApp -> json="

    .line 50
    .line 51
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const-string v12, "ActRouteManager"

    .line 62
    .line 63
    invoke-virtual {v9, v12, v10}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 67
    .line 68
    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v3, "app_type"

    .line 72
    .line 73
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-string v13, "data"

    .line 78
    .line 79
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string/jumbo v10, "type"

    .line 84
    .line 85
    .line 86
    if-eqz v13, :cond_0

    .line 87
    .line 88
    :try_start_1
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto/16 :goto_13

    .line 99
    .line 100
    :cond_0
    const/4 v15, 0x0

    .line 101
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-interface {v4, v6, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    const-string v6, "close"

    .line 109
    .line 110
    const-string v4, "from"

    .line 111
    .line 112
    const-string v14, "product_id"

    .line 113
    .line 114
    move-object/from16 v16, v10

    .line 115
    .line 116
    const-string/jumbo v10, "sku"

    .line 117
    .line 118
    .line 119
    move-object/from16 v17, v8

    .line 120
    .line 121
    const-string v8, "amount"

    .line 122
    .line 123
    move-object/from16 v18, v15

    .line 124
    .line 125
    const-string v15, "activityName"

    .line 126
    .line 127
    move-object/from16 p6, v6

    .line 128
    .line 129
    const-string v6, "activityId"

    .line 130
    .line 131
    move-object/from16 v19, v4

    .line 132
    .line 133
    const-string/jumbo v4, "url"

    .line 134
    .line 135
    .line 136
    move-object/from16 v20, v14

    .line 137
    .line 138
    const-string v14, "1"

    .line 139
    .line 140
    move-object/from16 v21, v14

    .line 141
    .line 142
    const-string v14, "scene"

    .line 143
    .line 144
    const-string v24, ""

    .line 145
    .line 146
    packed-switch v3, :pswitch_data_0

    .line 147
    .line 148
    .line 149
    :pswitch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "routeWhenCallApp failed -> data="

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    goto/16 :goto_14

    .line 172
    .line 173
    :pswitch_1
    if-eqz v13, :cond_37

    .line 174
    .line 175
    sget-object v0, Lfk/s;->a:Lfk/s;

    .line 176
    .line 177
    invoke-virtual {v0, v13}, Lfk/s;->h(Lorg/json/JSONObject;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    goto/16 :goto_14

    .line 183
    .line 184
    :pswitch_2
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 185
    .line 186
    const-string v3, "restore_click"

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    const/4 v5, 0x2

    .line 190
    const/4 v6, 0x0

    .line 191
    invoke-static {v13, v2, v6, v5, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-virtual {v15, v14, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    const/16 v18, 0x4

    .line 201
    .line 202
    const/16 v19, 0x0

    .line 203
    .line 204
    const-wide/16 v16, 0x0

    .line 205
    .line 206
    move-object v14, v3

    .line 207
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {v1, v0, v2}, Lce/j;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, v11, v7}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->H(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_14

    .line 218
    .line 219
    :pswitch_3
    sget-object v0, Lud/b;->a:Lud/b;

    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0, v2}, Lud/b;->n2(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    goto/16 :goto_14

    .line 228
    .line 229
    :pswitch_4
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k()V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 235
    .line 236
    goto/16 :goto_14

    .line 237
    .line 238
    :goto_1
    :pswitch_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 239
    .line 240
    goto/16 :goto_14

    .line 241
    .line 242
    :pswitch_6
    const-string v3, "routeToActScene -> QUERY_SKU_PRICE"

    .line 243
    .line 244
    invoke-virtual {v9, v12, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    if-eqz v13, :cond_1

    .line 248
    .line 249
    const-string v3, "body"

    .line 250
    .line 251
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    goto :goto_2

    .line 256
    :cond_1
    const/4 v14, 0x0

    .line 257
    :goto_2
    if-nez v14, :cond_2

    .line 258
    .line 259
    const-string v0, "querySkuPrice failed -> skuArray is null"

    .line 260
    .line 261
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_2
    const-string v3, "requestId"

    .line 266
    .line 267
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-eqz v3, :cond_d

    .line 272
    .line 273
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-nez v4, :cond_3

    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    const/4 v7, 0x0

    .line 291
    :goto_3
    if-ge v7, v6, :cond_7

    .line 292
    .line 293
    invoke-virtual {v14, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    const-class v9, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 302
    .line 303
    invoke-static {v8, v9}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 308
    .line 309
    if-eqz v8, :cond_6

    .line 310
    .line 311
    sget-object v9, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 312
    .line 313
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-eqz v9, :cond_5

    .line 318
    .line 319
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getProductId()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    if-eqz v9, :cond_4

    .line 324
    .line 325
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_5

    .line 330
    .line 331
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-virtual {v8, v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->setProductId(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    :cond_6
    const/4 v8, 0x1

    .line 346
    add-int/2addr v7, v8

    .line 347
    goto :goto_3

    .line 348
    :cond_7
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 349
    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v8, "querySkuPrice -> requestId("

    .line 356
    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v8, ") queryPriceSkus("

    .line 364
    .line 365
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const/16 v8, 0x29

    .line 372
    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {v6, v12, v7}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-eqz v6, :cond_8

    .line 388
    .line 389
    return-void

    .line 390
    :cond_8
    sget-object v6, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 391
    .line 392
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-eqz v6, :cond_c

    .line 397
    .line 398
    new-instance v6, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .line 402
    .line 403
    new-instance v7, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-eqz v9, :cond_a

    .line 417
    .line 418
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    check-cast v9, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 423
    .line 424
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    if-eqz v10, :cond_9

    .line 429
    .line 430
    new-instance v10, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 431
    .line 432
    invoke-direct {v10}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSkuId(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getProductId()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v13

    .line 446
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setProductId(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getFirstAmount()F

    .line 453
    .line 454
    .line 455
    move-result v13

    .line 456
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setFirstAmount(F)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getPayAmount()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 464
    .line 465
    .line 466
    move-result v9

    .line 467
    invoke-virtual {v10, v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setPayAmount(F)V

    .line 468
    .line 469
    .line 470
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    goto :goto_4

    .line 474
    :cond_9
    new-instance v10, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 475
    .line 476
    invoke-direct {v10}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getType()I

    .line 480
    .line 481
    .line 482
    move-result v13

    .line 483
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v13

    .line 490
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getProductId()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v13

    .line 497
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10, v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getPayAmount()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 508
    .line 509
    .line 510
    move-result v9

    .line 511
    invoke-virtual {v10, v9}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRecharge(F)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    goto :goto_4

    .line 518
    :cond_a
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    if-nez v8, :cond_b

    .line 523
    .line 524
    sget-object v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 525
    .line 526
    invoke-virtual {v8, v6}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h0(Ljava/util/List;)V

    .line 527
    .line 528
    .line 529
    :cond_b
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    if-nez v6, :cond_c

    .line 534
    .line 535
    sget-object v6, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 536
    .line 537
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 538
    .line 539
    .line 540
    :cond_c
    invoke-direct {v1, v0, v2}, Lce/j;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    new-instance v2, Lce/h;

    .line 545
    .line 546
    invoke-direct {v2, v3, v5}, Lce/h;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v11, v3, v4, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->J(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Ljava/util/List;Lat/n;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_1

    .line 553
    .line 554
    :cond_d
    :goto_5
    const-string v0, "querySkuPrice failed -> requestId is null"

    .line 555
    .line 556
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :pswitch_7
    const-string v0, "routeWhenCallApp -> SHARE"

    .line 561
    .line 562
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    if-eqz v13, :cond_e

    .line 566
    .line 567
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    goto :goto_6

    .line 572
    :cond_e
    const/4 v4, 0x0

    .line 573
    :goto_6
    if-eqz v4, :cond_14

    .line 574
    .line 575
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-nez v0, :cond_f

    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_f
    sget-object v0, Laa/a;->a:Laa/a;

    .line 583
    .line 584
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    if-eqz v0, :cond_14

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 595
    .line 596
    if-eqz v0, :cond_14

    .line 597
    .line 598
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    sget-object v6, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 607
    .line 608
    new-instance v7, Lce/j$a;

    .line 609
    .line 610
    invoke-direct {v7, v2, v3, v5}, Lce/j$a;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v0, v4, v7}, Lcom/startshorts/androidplayer/utils/IntentUtil;->f(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/IntentUtil$a;)V

    .line 614
    .line 615
    .line 616
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 617
    .line 618
    const-string v14, "activity_share_page_show"

    .line 619
    .line 620
    const/4 v0, 0x0

    .line 621
    const/4 v4, 0x2

    .line 622
    const/4 v6, 0x0

    .line 623
    invoke-static {v13, v2, v6, v4, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 624
    .line 625
    .line 626
    move-result-object v15

    .line 627
    if-eqz v3, :cond_11

    .line 628
    .line 629
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-nez v0, :cond_10

    .line 634
    .line 635
    goto :goto_7

    .line 636
    :cond_10
    const-string v0, "activity_id"

    .line 637
    .line 638
    invoke-virtual {v15, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    :cond_11
    :goto_7
    if-eqz v5, :cond_13

    .line 642
    .line 643
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-nez v0, :cond_12

    .line 648
    .line 649
    goto :goto_8

    .line 650
    :cond_12
    const-string v0, "activity_name"

    .line 651
    .line 652
    invoke-virtual {v15, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :cond_13
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 656
    .line 657
    const/16 v18, 0x4

    .line 658
    .line 659
    const/16 v19, 0x0

    .line 660
    .line 661
    const-wide/16 v16, 0x0

    .line 662
    .line 663
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    :cond_14
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 667
    .line 668
    goto/16 :goto_14

    .line 669
    .line 670
    :pswitch_8
    const-string v3, "routeToActScene -> SUBSCRIPTION"

    .line 671
    .line 672
    invoke-virtual {v9, v12, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 676
    .line 677
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    if-eqz v4, :cond_15

    .line 682
    .line 683
    const-string v0, "routeToActScene SUBSCRIPTION failed -> user has subscribed"

    .line 684
    .line 685
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    return-void

    .line 689
    :cond_15
    if-eqz v13, :cond_17

    .line 690
    .line 691
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    if-eqz v4, :cond_17

    .line 696
    .line 697
    const-class v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 698
    .line 699
    invoke-static {v4, v6}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 704
    .line 705
    if-nez v4, :cond_16

    .line 706
    .line 707
    goto :goto_a

    .line 708
    :cond_16
    const-string v6, "4"

    .line 709
    .line 710
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    sget-object v21, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 725
    .line 726
    const-string/jumbo v22, "win_product_click"

    .line 727
    .line 728
    .line 729
    new-instance v6, Landroid/os/Bundle;

    .line 730
    .line 731
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 735
    .line 736
    .line 737
    move-result v7

    .line 738
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    invoke-virtual {v6, v10, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    move-object/from16 v15, v20

    .line 753
    .line 754
    invoke-virtual {v6, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v6, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 761
    .line 762
    const/16 v26, 0x4

    .line 763
    .line 764
    const/16 v27, 0x0

    .line 765
    .line 766
    const-wide/16 v24, 0x0

    .line 767
    .line 768
    move-object/from16 v23, v6

    .line 769
    .line 770
    invoke-static/range {v21 .. v27}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    invoke-direct {v1, v0, v2}, Lce/j;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    new-instance v2, Lce/g;

    .line 781
    .line 782
    invoke-direct {v2, v5, v11, v4, v3}, Lce/g;-><init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0, v11, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->G(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_14

    .line 789
    .line 790
    :cond_17
    :goto_a
    return-void

    .line 791
    :pswitch_9
    const/4 v0, 0x0

    .line 792
    if-eqz v13, :cond_18

    .line 793
    .line 794
    const-string/jumbo v0, "shortPlayId"

    .line 795
    .line 796
    .line 797
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v14

    .line 801
    goto :goto_b

    .line 802
    :cond_18
    move-object v14, v0

    .line 803
    :goto_b
    if-eqz v13, :cond_19

    .line 804
    .line 805
    move-object/from16 v0, v19

    .line 806
    .line 807
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-nez v0, :cond_1a

    .line 812
    .line 813
    :cond_19
    move-object/from16 v0, v24

    .line 814
    .line 815
    :cond_1a
    if-eqz v13, :cond_1b

    .line 816
    .line 817
    move-object/from16 v7, p6

    .line 818
    .line 819
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    if-nez v2, :cond_1c

    .line 824
    .line 825
    :cond_1b
    move-object/from16 v2, v24

    .line 826
    .line 827
    :cond_1c
    const/4 v3, -0x1

    .line 828
    if-eqz v13, :cond_1d

    .line 829
    .line 830
    const-string v4, "resource_bit_id"

    .line 831
    .line 832
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    move-result v4

    .line 836
    goto :goto_c

    .line 837
    :cond_1d
    move v4, v3

    .line 838
    :goto_c
    if-eqz v13, :cond_1e

    .line 839
    .line 840
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v5

    .line 844
    if-nez v5, :cond_1f

    .line 845
    .line 846
    :cond_1e
    move-object/from16 v5, v24

    .line 847
    .line 848
    :cond_1f
    if-eqz v13, :cond_20

    .line 849
    .line 850
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v6

    .line 854
    if-nez v6, :cond_21

    .line 855
    .line 856
    :cond_20
    move-object/from16 v6, v24

    .line 857
    .line 858
    :cond_21
    if-eqz v13, :cond_22

    .line 859
    .line 860
    const-string v7, "activityType"

    .line 861
    .line 862
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v7

    .line 866
    if-nez v7, :cond_23

    .line 867
    .line 868
    :cond_22
    move-object/from16 v7, v24

    .line 869
    .line 870
    :cond_23
    if-eqz v13, :cond_24

    .line 871
    .line 872
    const-string v3, "audiences_recommend_id"

    .line 873
    .line 874
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    :cond_24
    sget-object v8, Lcom/startshorts/androidplayer/bean/act/ActResource;->Companion:Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;

    .line 879
    .line 880
    new-instance v9, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 881
    .line 882
    invoke-direct {v9}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v9, v5}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->setCampaignId(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v9, v6}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->setCampaignName(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v9, v7}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->setCampaignType(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 895
    .line 896
    invoke-virtual {v8, v4, v3, v9}, Lcom/startshorts/androidplayer/bean/act/ActResource$Companion;->create(IILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    invoke-direct {v1, v11, v14, v0, v3}, Lce/j;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 901
    .line 902
    .line 903
    move-object/from16 v14, v21

    .line 904
    .line 905
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    if-eqz v0, :cond_37

    .line 910
    .line 911
    if-eqz p1, :cond_37

    .line 912
    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->finish()V

    .line 914
    .line 915
    .line 916
    goto/16 :goto_14

    .line 917
    .line 918
    :pswitch_a
    const-string v0, "routeWhenCallApp -> EXTERNAL_URL"

    .line 919
    .line 920
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    sget-object v0, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 924
    .line 925
    if-eqz v13, :cond_25

    .line 926
    .line 927
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    if-nez v2, :cond_26

    .line 932
    .line 933
    :cond_25
    move-object/from16 v2, v24

    .line 934
    .line 935
    :cond_26
    invoke-virtual {v0, v11, v2}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 936
    .line 937
    .line 938
    goto/16 :goto_14

    .line 939
    .line 940
    :pswitch_b
    const-string v0, "routeWhenCallApp -> EXIT_WEB_VIEW"

    .line 941
    .line 942
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    if-eqz p1, :cond_27

    .line 946
    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->finish()V

    .line 948
    .line 949
    .line 950
    :cond_27
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 951
    .line 952
    goto/16 :goto_14

    .line 953
    .line 954
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .line 958
    .line 959
    const-string v2, "routeWhenCallApp -> TRACKING "

    .line 960
    .line 961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    if-eqz v13, :cond_37

    .line 975
    .line 976
    const-string v0, "eventName"

    .line 977
    .line 978
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    const-string v2, "eventExtra"

    .line 983
    .line 984
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    if-nez v2, :cond_28

    .line 989
    .line 990
    new-instance v2, Lorg/json/JSONObject;

    .line 991
    .line 992
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 993
    .line 994
    .line 995
    :cond_28
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 996
    .line 997
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 998
    .line 999
    .line 1000
    new-instance v4, Landroid/os/Bundle;

    .line 1001
    .line 1002
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    const-string v6, "keys(...)"

    .line 1010
    .line 1011
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v6

    .line 1018
    if-eqz v6, :cond_29

    .line 1019
    .line 1020
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    check-cast v6, Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v7

    .line 1030
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_d

    .line 1034
    :cond_29
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1035
    .line 1036
    const/4 v2, 0x4

    .line 1037
    const/4 v5, 0x0

    .line 1038
    const-wide/16 v6, 0x0

    .line 1039
    .line 1040
    move-object/from16 p1, v3

    .line 1041
    .line 1042
    move-object/from16 p2, v0

    .line 1043
    .line 1044
    move-object/from16 p3, v4

    .line 1045
    .line 1046
    move-wide/from16 p4, v6

    .line 1047
    .line 1048
    move/from16 p6, v2

    .line 1049
    .line 1050
    move-object/from16 p7, v5

    .line 1051
    .line 1052
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_14

    .line 1056
    .line 1057
    :pswitch_d
    move-object/from16 v15, v20

    .line 1058
    .line 1059
    if-eqz v13, :cond_2d

    .line 1060
    .line 1061
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v3

    .line 1065
    if-eqz v3, :cond_2d

    .line 1066
    .line 1067
    const-class v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 1068
    .line 1069
    invoke-static {v3, v4}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 1074
    .line 1075
    if-nez v3, :cond_2a

    .line 1076
    .line 1077
    goto :goto_e

    .line 1078
    :cond_2a
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 1079
    .line 1080
    .line 1081
    move-result v4

    .line 1082
    if-nez v4, :cond_2b

    .line 1083
    .line 1084
    const/16 v4, 0x3e8

    .line 1085
    .line 1086
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 1087
    .line 1088
    .line 1089
    :cond_2b
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 1090
    .line 1091
    .line 1092
    move-result v4

    .line 1093
    const/4 v6, 0x0

    .line 1094
    cmpg-float v4, v4, v6

    .line 1095
    .line 1096
    if-nez v4, :cond_2c

    .line 1097
    .line 1098
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityPrice()F

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRecharge(F)V

    .line 1103
    .line 1104
    .line 1105
    :cond_2c
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v4

    .line 1109
    sget-object v16, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 1110
    .line 1111
    const-string/jumbo v17, "win_product_click"

    .line 1112
    .line 1113
    .line 1114
    new-instance v6, Landroid/os/Bundle;

    .line 1115
    .line 1116
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 1120
    .line 1121
    .line 1122
    move-result v7

    .line 1123
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v7

    .line 1130
    invoke-virtual {v6, v10, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v7

    .line 1137
    invoke-virtual {v6, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v6, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1144
    .line 1145
    const/16 v21, 0x4

    .line 1146
    .line 1147
    const/16 v22, 0x0

    .line 1148
    .line 1149
    const-wide/16 v19, 0x0

    .line 1150
    .line 1151
    move-object/from16 v18, v6

    .line 1152
    .line 1153
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    const-string v6, "routeToActScene -> PAYMENT"

    .line 1157
    .line 1158
    invoke-virtual {v9, v12, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-direct {v1, v0, v2}, Lce/j;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1166
    .line 1167
    .line 1168
    new-instance v2, Lce/f;

    .line 1169
    .line 1170
    invoke-direct {v2, v5, v11, v3, v4}, Lce/f;-><init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v0, v11, v3, v4, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->F(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_14

    .line 1177
    .line 1178
    :cond_2d
    :goto_e
    return-void

    .line 1179
    :pswitch_e
    move-object/from16 v7, p6

    .line 1180
    .line 1181
    move-object/from16 v0, v19

    .line 1182
    .line 1183
    move-object/from16 v14, v21

    .line 1184
    .line 1185
    if-nez v18, :cond_2e

    .line 1186
    .line 1187
    const-string v0, "routeWhenCallApp -> NATIVE_PAGE dataType == null"

    .line 1188
    .line 1189
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_11

    .line 1193
    .line 1194
    :cond_2e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    const/4 v3, 0x1

    .line 1199
    if-ne v2, v3, :cond_2f

    .line 1200
    .line 1201
    const-string v0, "routeWhenCallApp -> FragmentName.TOP_UP"

    .line 1202
    .line 1203
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 1207
    .line 1208
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 1209
    .line 1210
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->n()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    const/4 v3, 0x0

    .line 1215
    new-array v3, v3, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 1216
    .line 1217
    invoke-virtual {v0, v11, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 1218
    .line 1219
    .line 1220
    :goto_f
    move-object v15, v7

    .line 1221
    goto/16 :goto_10

    .line 1222
    .line 1223
    :cond_2f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 1224
    .line 1225
    .line 1226
    move-result v2

    .line 1227
    const/4 v3, 0x2

    .line 1228
    if-ne v2, v3, :cond_30

    .line 1229
    .line 1230
    const-string v0, "routeWhenCallApp -> MainActivity.TAB_SHORTS"

    .line 1231
    .line 1232
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 1240
    .line 1241
    sget-object v16, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 1242
    .line 1243
    const/16 v20, 0xe

    .line 1244
    .line 1245
    const/16 v21, 0x0

    .line 1246
    .line 1247
    const/16 v17, 0x0

    .line 1248
    .line 1249
    const/16 v18, 0x0

    .line 1250
    .line 1251
    const/16 v19, 0x0

    .line 1252
    .line 1253
    move-object v15, v2

    .line 1254
    invoke-direct/range {v15 .. v21}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    sget-object v0, Laa/a;->a:Laa/a;

    .line 1261
    .line 1262
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 1263
    .line 1264
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    const-string v3, "getName(...)"

    .line 1269
    .line 1270
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v0, v2}, Laa/a;->i(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    goto :goto_f

    .line 1277
    :cond_30
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 1278
    .line 1279
    .line 1280
    move-result v2

    .line 1281
    const/4 v3, 0x3

    .line 1282
    if-ne v2, v3, :cond_31

    .line 1283
    .line 1284
    const-string v2, "routeWhenCallApp -> NATIVE_PAGE_SUBS_DETAIL"

    .line 1285
    .line 1286
    invoke-virtual {v9, v12, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v4

    .line 1293
    const-string/jumbo v0, "skuProductId"

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v5

    .line 1300
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 1301
    .line 1302
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1303
    .line 1304
    .line 1305
    const/16 v9, 0x38

    .line 1306
    .line 1307
    const/4 v10, 0x0

    .line 1308
    const/4 v6, 0x0

    .line 1309
    const/4 v0, 0x0

    .line 1310
    const/4 v8, 0x0

    .line 1311
    move-object/from16 v3, p3

    .line 1312
    .line 1313
    move-object v15, v7

    .line 1314
    move v7, v0

    .line 1315
    invoke-static/range {v2 .. v10}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 1316
    .line 1317
    .line 1318
    goto :goto_10

    .line 1319
    :cond_31
    move-object v15, v7

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1321
    .line 1322
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    const-string v2, "routeWhenCallApp -> NATIVE_PAGE invalid dataType == "

    .line 1326
    .line 1327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    move-object/from16 v2, v18

    .line 1331
    .line 1332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    :goto_10
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v0

    .line 1346
    if-nez v0, :cond_32

    .line 1347
    .line 1348
    move-object/from16 v0, v24

    .line 1349
    .line 1350
    :cond_32
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v0

    .line 1354
    if-eqz v0, :cond_33

    .line 1355
    .line 1356
    if-eqz p1, :cond_33

    .line 1357
    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->finish()V

    .line 1359
    .line 1360
    .line 1361
    :cond_33
    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1362
    .line 1363
    goto :goto_14

    .line 1364
    :pswitch_f
    move-object/from16 v2, v18

    .line 1365
    .line 1366
    move-object/from16 v14, v21

    .line 1367
    .line 1368
    sget-object v0, Lae/a;->a:Lae/a;

    .line 1369
    .line 1370
    invoke-virtual {v0}, Lae/a;->k()Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_34

    .line 1375
    .line 1376
    const-string v0, "Block CallAppType.ADVERTISEMENT for xiaomi channel"

    .line 1377
    .line 1378
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    return-void

    .line 1382
    :cond_34
    const-string v0, "routeWhenCallApp -> ADVERTISEMENT"

    .line 1383
    .line 1384
    invoke-virtual {v9, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    if-nez v2, :cond_35

    .line 1388
    .line 1389
    goto :goto_12

    .line 1390
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1391
    .line 1392
    .line 1393
    move-result v0

    .line 1394
    const/4 v2, 0x1

    .line 1395
    if-ne v2, v0, :cond_36

    .line 1396
    .line 1397
    sget-object v18, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 1398
    .line 1399
    const-string/jumbo v19, "watch_ad_click"

    .line 1400
    .line 1401
    .line 1402
    new-instance v0, Landroid/os/Bundle;

    .line 1403
    .line 1404
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .line 1406
    .line 1407
    const-string v2, "ad_active"

    .line 1408
    .line 1409
    move-object/from16 v3, v17

    .line 1410
    .line 1411
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    move-object/from16 v2, v16

    .line 1415
    .line 1416
    invoke-virtual {v0, v2, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1420
    .line 1421
    const/16 v23, 0x4

    .line 1422
    .line 1423
    const/16 v24, 0x0

    .line 1424
    .line 1425
    const-wide/16 v21, 0x0

    .line 1426
    .line 1427
    move-object/from16 v20, v0

    .line 1428
    .line 1429
    invoke-static/range {v18 .. v24}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 1430
    .line 1431
    .line 1432
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 1433
    .line 1434
    new-instance v2, Lce/e;

    .line 1435
    .line 1436
    invoke-direct {v2, v11, v5}, Lce/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function1;)V

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v0, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 1440
    .line 1441
    .line 1442
    :cond_36
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1443
    .line 1444
    goto :goto_14

    .line 1445
    :goto_13
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 1446
    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1450
    .line 1451
    .line 1452
    const-string v4, "routeWhenCallApp exception -> "

    .line 1453
    .line 1454
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    invoke-virtual {v2, v12, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    :cond_37
    :goto_14
    return-void

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final x(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lce/j;->c:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method
