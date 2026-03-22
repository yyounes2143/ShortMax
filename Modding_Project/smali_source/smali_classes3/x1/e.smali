.class public final Lx1/e;
.super Ljava/lang/Object;
.source "PACustomAudienceClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPACustomAudienceClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PACustomAudienceClient.kt\ncom/facebook/appevents/gps/pa/PACustomAudienceClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,186:1\n1#2:187\n29#3:188\n29#3:189\n29#3:190\n29#3:191\n*S KotlinDebug\n*F\n+ 1 PACustomAudienceClient.kt\ncom/facebook/appevents/gps/pa/PACustomAudienceClient\n*L\n135#1:188\n139#1:189\n147#1:190\n148#1:191\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lx1/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z

.field private static d:Z

.field private static e:Landroid/adservices/customaudience/CustomAudienceManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static f:Lv1/a;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx1/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lx1/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx1/e;->a:Lx1/e;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "Fledge: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-class v1, Lx1/e;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lx1/e;->b:Ljava/lang/String;

    .line 32
    .line 33
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

.method public static final synthetic a()Lv1/a;
    .locals 3

    .line 1
    const-class v0, Lx1/e;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lx1/e;->f:Lv1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lx1/e;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lx1/e;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final c()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 1
    const-string v0, "Failed to get CustomAudienceManager: "

    .line 2
    .line 3
    const-class v1, Lx1/e;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    :try_start_0
    sput-boolean v2, Lx1/e;->d:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Lv1/a;

    .line 20
    .line 21
    invoke-direct {v4, v3}, Lv1/a;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object v4, Lx1/e;->f:Lv1/a;

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v5, "https://www."

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/facebook/v;->v()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, "/privacy_sandbox/pa/logic"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sput-object v4, Lx1/e;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    :try_start_1
    invoke-static {v3}, Landroidx/privacysandbox/ads/adservices/customaudience/a;->a(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sput-object v3, Lx1/e;->e:Landroid/adservices/customaudience/CustomAudienceManager;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    sput-boolean v2, Lx1/e;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_5

    .line 68
    :catch_0
    move-exception v2

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    move-object v3, v4

    .line 73
    goto :goto_3

    .line 74
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v5, Lx1/e;->b:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    sget-object v5, Lx1/e;->b:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :goto_3
    sget-boolean v0, Lx1/e;->c:Z

    .line 124
    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    sget-object v0, Lx1/e;->f:Lv1/a;

    .line 128
    .line 129
    if-nez v0, :cond_2

    .line 130
    .line 131
    const-string v0, "gpsDebugLogger"

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_2
    move-object v4, v0

    .line 138
    :goto_4
    const-string v0, "gps_pa_failed"

    .line 139
    .line 140
    new-instance v2, Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v5, "gps_pa_failed_reason"

    .line 146
    .line 147
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    invoke-virtual {v4, v0, v2}, Lv1/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void

    .line 156
    :goto_5
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 1
    const-string v0, "gps_pa_failed_reason"

    .line 2
    .line 3
    const-string v1, "gps_pa_failed"

    .line 4
    .line 5
    const-string v2, "gpsDebugLogger"

    .line 6
    .line 7
    const-string v3, "Failed to join Custom Audience: "

    .line 8
    .line 9
    const-string v4, "Builder()\n              \u2026\n                .build()"

    .line 10
    .line 11
    const-string v5, "Uri.parse(this)"

    .line 12
    .line 13
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lx1/e;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v6, 0x0

    .line 28
    :try_start_1
    new-instance v7, Lx1/e$a;

    .line 29
    .line 30
    invoke-direct {v7}, Lx1/e$a;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v7}, Landroidx/core/os/b;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static {}, Lx1/a;->a()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/common/g;->a()Landroid/adservices/common/AdData$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v10, Lx1/e;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    const-string v11, "baseUri"

    .line 52
    .line 53
    if-nez v10, :cond_2

    .line 54
    .line 55
    :try_start_2
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v10, v6

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :catch_1
    move-exception p1

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v10, "/ad"

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v8, v9}, Landroidx/privacysandbox/ads/adservices/common/b;->a(Landroid/adservices/common/AdData$Builder;Landroid/net/Uri;)Landroid/adservices/common/AdData$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const-string v9, "{\'isRealAd\': false}"

    .line 93
    .line 94
    invoke-static {v8, v9}, Landroidx/privacysandbox/ads/adservices/common/a;->a(Landroid/adservices/common/AdData$Builder;Ljava/lang/String;)Landroid/adservices/common/AdData$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static {v8}, Landroidx/privacysandbox/ads/adservices/common/f;->a(Landroid/adservices/common/AdData$Builder;)Landroid/adservices/common/AdData;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lx1/b;->a()V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/customaudience/q;->a()Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v12, Lx1/e;->g:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v12, :cond_3

    .line 120
    .line 121
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    move-object v12, v6

    .line 125
    :cond_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v12, "?trusted_bidding"

    .line 129
    .line 130
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v9, v10}, Landroidx/privacysandbox/ads/adservices/customaudience/v;->a(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    const-string v10, ""

    .line 149
    .line 150
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-static {v9, v10}, Landroidx/privacysandbox/ads/adservices/customaudience/u;->a(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Ljava/util/List;)Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-static {v9}, Landroidx/privacysandbox/ads/adservices/customaudience/w;->a(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Landroid/adservices/customaudience/TrustedBiddingData;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lx1/c;->a()V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/customaudience/s;->a()Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, p2}, Landroidx/privacysandbox/ads/adservices/customaudience/j;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Ljava/lang/String;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string v4, "facebook.com"

    .line 177
    .line 178
    invoke-static {v4}, Landroidx/privacysandbox/ads/adservices/common/l;->a(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-static {p2, v4}, Landroidx/privacysandbox/ads/adservices/customaudience/g;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    sget-object v10, Lx1/e;->g:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v10, :cond_4

    .line 194
    .line 195
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move-object v10, v6

    .line 199
    :cond_4
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v10, "?daily&app_id="

    .line 203
    .line 204
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p2, p1}, Landroidx/privacysandbox/ads/adservices/customaudience/h;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    sget-object v4, Lx1/e;->g:Ljava/lang/String;

    .line 231
    .line 232
    if-nez v4, :cond_5

    .line 233
    .line 234
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move-object v4, v6

    .line 238
    :cond_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v4, "?bidding"

    .line 242
    .line 243
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p1, p2}, Landroidx/privacysandbox/ads/adservices/customaudience/f;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1, v9}, Landroidx/privacysandbox/ads/adservices/customaudience/k;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/customaudience/TrustedBiddingData;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string p2, "{}"

    .line 266
    .line 267
    invoke-static {p2}, Landroidx/privacysandbox/ads/adservices/common/k;->a(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-static {p1, p2}, Landroidx/privacysandbox/ads/adservices/customaudience/l;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p1, p2}, Landroidx/privacysandbox/ads/adservices/customaudience/e;->a(Landroid/adservices/customaudience/CustomAudience$Builder;Ljava/util/List;)Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/customaudience/m;->a(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/customaudience/CustomAudience;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    const-string p2, "Builder()\n              \u2026(listOf(dummyAd)).build()"

    .line 288
    .line 289
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Lx1/d;->a()V

    .line 293
    .line 294
    .line 295
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/customaudience/r;->a()Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-static {p2, p1}, Landroidx/privacysandbox/ads/adservices/customaudience/x;->a(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/CustomAudience;)Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/customaudience/y;->a(Landroid/adservices/customaudience/JoinCustomAudienceRequest$Builder;)Landroid/adservices/customaudience/JoinCustomAudienceRequest;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string p2, "Builder().setCustomAudience(ca).build()"

    .line 308
    .line 309
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sget-object p2, Lx1/e;->e:Landroid/adservices/customaudience/CustomAudienceManager;

    .line 313
    .line 314
    if-eqz p2, :cond_8

    .line 315
    .line 316
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {p2, p1, v4, v7}, Landroidx/privacysandbox/ads/adservices/customaudience/n;->a(Landroid/adservices/customaudience/CustomAudienceManager;Landroid/adservices/customaudience/JoinCustomAudienceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :goto_1
    :try_start_3
    sget-object p2, Lx1/e;->b:Ljava/lang/String;

    .line 325
    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    sget-object p2, Lx1/e;->f:Lv1/a;

    .line 345
    .line 346
    if-nez p2, :cond_6

    .line 347
    .line 348
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_6
    move-object v6, p2

    .line 353
    :goto_2
    new-instance p2, Landroid/os/Bundle;

    .line 354
    .line 355
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 366
    .line 367
    invoke-virtual {v6, v1, p2}, Lv1/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :goto_3
    sget-object p2, Lx1/e;->b:Ljava/lang/String;

    .line 372
    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    sget-object p2, Lx1/e;->f:Lv1/a;

    .line 392
    .line 393
    if-nez p2, :cond_7

    .line 394
    .line 395
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_7
    move-object v6, p2

    .line 400
    :goto_4
    new-instance p2, Landroid/os/Bundle;

    .line 401
    .line 402
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 413
    .line 414
    invoke-virtual {v6, v1, p2}, Lv1/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    .line 416
    .line 417
    :cond_8
    :goto_5
    return-void

    .line 418
    :goto_6
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    :try_start_0
    const-string v0, "_removed_"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    const-string v0, "gps"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-static {p2, v0, v2, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const/16 v0, 0x3e8

    .line 38
    .line 39
    int-to-long v4, v0

    .line 40
    div-long/2addr v2, v4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x40

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "@1"

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return-object p1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    return-object v1

    .line 76
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/appevents/AppEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-boolean v0, Lx1/e;->d:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lx1/e;->c()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :goto_0
    sget-boolean v0, Lx1/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/appevents/AppEvent;->e()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    const-string v1, "_eventName"

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    :try_start_2
    sget-object p2, Lx1/e;->b:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "Failed to get event name from event."

    .line 42
    .line 43
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v0}, Lx1/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_2
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-boolean v0, Lx1/e;->d:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lx1/e;->c()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    sget-boolean v0, Lx1/e;->c:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2}, Lx1/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
