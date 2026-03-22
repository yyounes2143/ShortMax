.class public final Lcom/startshorts/androidplayer/manager/ad/AdHelper;
.super Ljava/lang/Object;
.source "AdHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/ad/AdHelper$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 7
    .line 8
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

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->e(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final e(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->l()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Loe/f;->a:Loe/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Loe/f;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final l()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->Companion:Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getValue()Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getSwitch()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adActionCount_android_v2"

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Landroid/content/Context;Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Lca/a;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/hades/aar/admanager/core/AdAggregatedSdk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loaderType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 12
    .line 13
    const-wide v1, 0x416a17b000000000L    # 1.368E7

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-string v3, "1FA60B614E65BC1BFAED3CCA70A01DF6"

    .line 19
    .line 20
    const-wide/32 v4, 0x325aa0

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-ne p2, v0, :cond_0

    .line 25
    .line 26
    sget-object p1, Lea/b;->a:Lea/b;

    .line 27
    .line 28
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->E()Lda/a;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lea/b;->i(Lda/a;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lea/a;

    .line 38
    .line 39
    invoke-direct {p1}, Lea/a;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lca/a;->h(Z)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lde/a;

    .line 46
    .line 47
    invoke-direct {p2}, Lde/a;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lea/a;->q(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v6}, Lca/a;->j(Z)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lde/b;

    .line 57
    .line 58
    invoke-direct {p2}, Lde/b;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lea/a;->r(Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 65
    .line 66
    invoke-virtual {p1, p2, v4, v5}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 67
    .line 68
    .line 69
    sget-object p2, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 70
    .line 71
    invoke-static {v1, v2}, Lbt/a;->d(D)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-virtual {p1, p2, v0, v1}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 76
    .line 77
    .line 78
    sget-object p2, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 79
    .line 80
    invoke-virtual {p1, p2, v4, v5}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Lea/a;->p(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p2, Lfa/a;

    .line 88
    .line 89
    invoke-direct {p2}, Lfa/a;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v6}, Lca/a;->h(Z)V

    .line 93
    .line 94
    .line 95
    sget v0, Lcom/startshorts/androidplayer/R$string;->applovin_sdk_key:I

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, p1}, Lfa/a;->q(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v6}, Lca/a;->j(Z)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 108
    .line 109
    invoke-virtual {p2, p1, v4, v5}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 113
    .line 114
    invoke-static {v1, v2}, Lbt/a;->d(D)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    invoke-virtual {p2, p1, v0, v1}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 122
    .line 123
    invoke-virtual {p2, p1, v4, v5}, Lca/a;->i(Lcom/hades/aar/admanager/core/AdFormat;J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v3}, Lfa/a;->n(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v3}, Lfa/a;->p(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdHelper$getAdConfig$2$1;

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper$getAdConfig$2$1;-><init>(Lrs/c;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lfa/a;->o(Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    move-object p1, p2

    .line 142
    :goto_0
    return-object p1
.end method

.method public final g()Lcom/hades/aar/admanager/core/AdAggregatedSdk;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lde/p;->a:Lde/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lde/p;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->APPLOVIN_MAX:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->g2()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "adSwitch_campaign_android"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "adSwitch_organic_android"

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lde/p;->a:Lde/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lde/p;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "applovinMax"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "admob"

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final j()Lcom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final k(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/hades/aar/admanager/core/AdAggregatedSdk;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper$a;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p1, "unknown"

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string p1, "max"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const-string p1, "admob"

    .line 27
    .line 28
    :goto_1
    return-object p1
.end method
