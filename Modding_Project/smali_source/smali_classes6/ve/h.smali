.class public final Lve/h;
.super Ljava/lang/Object;
.source "RetainManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRetainManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetainManager.kt\ncom/startshorts/androidplayer/manager/dialog/RetainManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1863#2,2:203\n1#3:205\n*S KotlinDebug\n*F\n+ 1 RetainManager.kt\ncom/startshorts/androidplayer/manager/dialog/RetainManager\n*L\n51#1:203,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lve/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lve/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lve/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lve/h;->a:Lve/h;

    .line 7
    .line 8
    const-string v0, "retainSubscription"

    .line 9
    .line 10
    sput-object v0, Lve/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "retainAdUnlock"

    .line 13
    .line 14
    sput-object v0, Lve/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "retainFreeGold"

    .line 17
    .line 18
    sput-object v0, Lve/h;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "retainCoinSku"

    .line 21
    .line 22
    sput-object v0, Lve/h;->e:Ljava/lang/String;

    .line 23
    .line 24
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

.method private final d(I)Z
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->g0()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->o(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge v0, p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method private final e(I)Z
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->P1()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->o(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge v0, p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method private final f(I)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->C()Z

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lud/b;->S1()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/startshorts/androidplayer/utils/TimeUtil;->o(JJ)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ge v0, p1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v1, v3

    .line 66
    :cond_4
    :goto_0
    return v1
.end method

.method private final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n0()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getCommonStyleTemplate()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-gtz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "-1"

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->g0()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;-><init>(JI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lud/b;->r3(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v2

    .line 30
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->setCount(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lud/b;->r3(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->P1()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;-><init>(JI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lud/b;->d5(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v2

    .line 30
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->setCount(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lud/b;->d5(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->S1()Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;-><init>(JI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lud/b;->f5(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v2

    .line 30
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/unlock/TimeCount;->setCount(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lud/b;->f5(Lcom/startshorts/androidplayer/bean/unlock/TimeCount;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final h(Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n0()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getRetainPageOrder()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    check-cast v2, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_5

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    sget-object v4, Lve/h;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    sget-object v3, Lve/h;->a:Lve/h;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getRetainSubscriptionCount()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-direct {v3, v5}, Lve/h;->f(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_2
    sget-object v4, Lve/h;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    sget-object v3, Lve/h;->a:Lve/h;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getRetainSkuCount()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-direct {v3, v5}, Lve/h;->e(I)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    return-object v4

    .line 77
    :cond_3
    sget-object v4, Lve/h;->c:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getRetainAdUnlockIsShow()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->enable()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/4 v5, 0x1

    .line 98
    if-ne v3, v5, :cond_1

    .line 99
    .line 100
    return-object v4

    .line 101
    :cond_4
    sget-object v4, Lve/h;->d:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    sget-object v3, Lve/h;->a:Lve/h;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;->getRetainFreeGoldCount()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-direct {v3, v5}, Lve/h;->d(I)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    return-object v4

    .line 122
    :cond_5
    return-object v1
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lve/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lve/h;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lve/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lve/h;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lve/h;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "21"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "22"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_0
    return-object v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lve/h;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "21"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lve/h;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "22"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final p(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onShowListener"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->p(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->C()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->B()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I0()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-ne v8, v7, :cond_0

    .line 39
    .line 40
    move v6, v7

    .line 41
    :cond_0
    sget-object v8, Lqf/h;->a:Lqf/h;

    .line 42
    .line 43
    invoke-virtual {v8, p1}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    :cond_1
    if-eqz v0, :cond_4

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    if-eqz v8, :cond_4

    .line 56
    .line 57
    :cond_2
    if-eqz p1, :cond_3

    .line 58
    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void

    .line 65
    :cond_4
    if-eqz v3, :cond_7

    .line 66
    .line 67
    if-nez v5, :cond_5

    .line 68
    .line 69
    if-eqz v4, :cond_7

    .line 70
    .line 71
    :cond_5
    if-eqz p1, :cond_6

    .line 72
    .line 73
    xor-int/lit8 v0, v5, 0x1

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void

    .line 83
    :cond_7
    if-eqz v1, :cond_8

    .line 84
    .line 85
    return-void

    .line 86
    :cond_8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_b

    .line 91
    .line 92
    if-nez v4, :cond_a

    .line 93
    .line 94
    if-eqz v5, :cond_9

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_a
    :goto_0
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_b

    .line 108
    .line 109
    xor-int/lit8 v0, v5, 0x1

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_b
    :goto_1
    return-void
.end method
