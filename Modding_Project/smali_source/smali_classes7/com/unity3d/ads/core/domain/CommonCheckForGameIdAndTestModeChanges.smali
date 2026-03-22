.class public final Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;
.super Ljava/lang/Object;
.source "CommonCheckForGameIdAndTestModeChanges.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetGameId;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetGameId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getGameId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sendDiagnosticEvent"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 17
    .line 18
    return-void
.end method

.method private final sendDiagnostic(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, v7

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v7}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 23
    .line 24
    const/16 v8, 0x3a

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v2, p1

    .line 32
    move-object v4, p2

    .line 33
    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getPreviousGameId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    :cond_1
    const-string v3, "previous_game_id"

    .line 20
    .line 21
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "game_id"

    .line 26
    .line 27
    invoke-static {v4, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v3, v4}, [Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "native_initialize_game_id_changed"

    .line 52
    .line 53
    invoke-direct {p0, v0, v3, p1}, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnostic(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "native_initialize_game_id_same"

    .line 58
    .line 59
    invoke-direct {p0, v0, v3, p1}, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnostic(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isTestMode()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getPreviousTestMode()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v2, "previous_test_mode"

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "test_mode"

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    filled-new-array {v2, v3}, [Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eq v0, v1, :cond_3

    .line 99
    .line 100
    const-string v0, "native_initialize_test_mode_changed"

    .line 101
    .line 102
    invoke-direct {p0, v0, v2, p1}, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnostic(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const-string v0, "native_initialize_test_mode_same"

    .line 107
    .line 108
    invoke-direct {p0, v0, v2, p1}, Lcom/unity3d/ads/core/domain/CommonCheckForGameIdAndTestModeChanges;->sendDiagnostic(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_1
    return-void
.end method
