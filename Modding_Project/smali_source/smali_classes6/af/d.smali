.class public final Laf/d;
.super Ljava/lang/Object;
.source "EventName.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Laf/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Laf/d;

    .line 2
    .line 3
    invoke-direct {v0}, Laf/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laf/d;->a:Laf/d;

    .line 7
    .line 8
    const-string v10, "app_open_day2"

    .line 9
    .line 10
    const-string v11, "session"

    .line 11
    .line 12
    const-string v1, "app_start"

    .line 13
    .line 14
    const-string v2, "app_launch"

    .line 15
    .line 16
    const-string v3, "active_user"

    .line 17
    .line 18
    const-string v4, "active"

    .line 19
    .line 20
    const-string v5, "interactive"

    .line 21
    .line 22
    const-string v6, "app_active_background"

    .line 23
    .line 24
    const-string v7, "interactive_by_push"

    .line 25
    .line 26
    const-string v8, "app_close"

    .line 27
    .line 28
    const-string v9, "app_usage_duration"

    .line 29
    .line 30
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Laf/d;->b:[Ljava/lang/String;

    .line 35
    .line 36
    const-string v14, "purchased_sku_parse"

    .line 37
    .line 38
    const-string/jumbo v15, "shorttv_purchase"

    .line 39
    .line 40
    .line 41
    const-string v1, "recharge_show"

    .line 42
    .line 43
    const-string v2, "order_show"

    .line 44
    .line 45
    const-string v3, "order_create"

    .line 46
    .line 47
    const-string v4, "order_create_fail"

    .line 48
    .line 49
    const-string v5, "order_create_cancel"

    .line 50
    .line 51
    const-string v6, "pay_success"

    .line 52
    .line 53
    const-string v7, "exchange_coins_success"

    .line 54
    .line 55
    const-string v8, "exchange_coins_failed"

    .line 56
    .line 57
    const-string v9, "exchange_premium_success"

    .line 58
    .line 59
    const-string v10, "exchange_premium_failed"

    .line 60
    .line 61
    const-string v11, "restore_click"

    .line 62
    .line 63
    const-string v12, "restore_result"

    .line 64
    .line 65
    const-string v13, "purchased_sku_null"

    .line 66
    .line 67
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Laf/d;->c:[Ljava/lang/String;

    .line 72
    .line 73
    const-string v11, "ecpm_above_20"

    .line 74
    .line 75
    const-string v12, "ecpm_above_40"

    .line 76
    .line 77
    const-string v1, "ad_request"

    .line 78
    .line 79
    const-string v2, "ad_fill"

    .line 80
    .line 81
    const-string v3, "ad_impressions"

    .line 82
    .line 83
    const-string v4, "ad_real_impressions"

    .line 84
    .line 85
    const-string v5, "ad_impressions_duration"

    .line 86
    .line 87
    const-string v6, "ad_revenue"

    .line 88
    .line 89
    const-string v7, "ad_clicks"

    .line 90
    .line 91
    const-string/jumbo v8, "watch_ad_click"

    .line 92
    .line 93
    .line 94
    const-string v9, "ad_placement_show"

    .line 95
    .line 96
    const-string v10, "ecpm_below_20"

    .line 97
    .line 98
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Laf/d;->d:[Ljava/lang/String;

    .line 103
    .line 104
    const-string v0, "enter_reel_play"

    .line 105
    .line 106
    const-string v1, "reel_cut"

    .line 107
    .line 108
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sput-object v2, Laf/d;->e:[Ljava/lang/String;

    .line 113
    .line 114
    const-string v2, "reel_play"

    .line 115
    .line 116
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Laf/d;->f:[Ljava/lang/String;

    .line 121
    .line 122
    const-string v0, "episode_unlock_ad_success"

    .line 123
    .line 124
    const-string v1, "episode_unlock_success"

    .line 125
    .line 126
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Laf/d;->g:[Ljava/lang/String;

    .line 131
    .line 132
    const-string v0, "push_send"

    .line 133
    .line 134
    const-string v1, "push_open"

    .line 135
    .line 136
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Laf/d;->h:[Ljava/lang/String;

    .line 141
    .line 142
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


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->d:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->f:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->e:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->h:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/d;->g:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
