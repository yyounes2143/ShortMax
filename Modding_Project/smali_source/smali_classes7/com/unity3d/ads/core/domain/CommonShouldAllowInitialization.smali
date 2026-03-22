.class public final Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;
.super Ljava/lang/Object;
.source "CommonShouldAllowInitialization.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ShouldAllowInitialization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/domain/SetInitializationState;Lcom/unity3d/ads/core/domain/ValidateGameId;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetInitializationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/SetInitializationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/ValidateGameId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "alternativeFlowReader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "checkForGameIdAndTestModeChanges"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "getInitializationState"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "setInitializationState"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "validateGameId"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getAlternativeFlowReader()Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCheckForGameIdAndTestModeChanges()Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGetInitializationState()Lcom/unity3d/ads/core/domain/GetInitializationState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSetInitializationState()Lcom/unity3d/ads/core/domain/SetInitializationState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidateGameId()Lcom/unity3d/ads/core/domain/ValidateGameId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    .line 2
    .line 3
    return-object v0
.end method

.method public invoke(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->validateGameId:Lcom/unity3d/ads/core/domain/ValidateGameId;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/domain/ValidateGameId;->invoke(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;->invoke()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x4

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/GetInitializationState;->invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v5, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    aget p1, v5, p1

    .line 36
    .line 37
    if-eq p1, v4, :cond_4

    .line 38
    .line 39
    if-eq p1, v3, :cond_3

    .line 40
    .line 41
    if-eq p1, v2, :cond_2

    .line 42
    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 47
    .line 48
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;->invoke(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    .line 58
    .line 59
    sget-object v1, Lcom/unity3d/ads/core/data/model/InitializationState;->INITIALIZING:Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 60
    .line 61
    invoke-interface {p1, v1, v0}, Lcom/unity3d/ads/core/domain/SetInitializationState;->invoke(Lcom/unity3d/ads/core/data/model/InitializationState;Z)V

    .line 62
    .line 63
    .line 64
    return v4

    .line 65
    :cond_3
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->notifyInitializationComplete()V

    .line 66
    .line 67
    .line 68
    :cond_4
    return v0

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->getInitializationState:Lcom/unity3d/ads/core/domain/GetInitializationState;

    .line 70
    .line 71
    invoke-interface {p1, v4}, Lcom/unity3d/ads/core/domain/GetInitializationState;->invoke(Z)Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v5, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    aget p1, v5, p1

    .line 82
    .line 83
    if-eq p1, v4, :cond_a

    .line 84
    .line 85
    if-eq p1, v3, :cond_9

    .line 86
    .line 87
    if-eq p1, v2, :cond_7

    .line 88
    .line 89
    if-ne p1, v1, :cond_6

    .line 90
    .line 91
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    .line 92
    .line 93
    const-string v1, "Unity Ads SDK failed to initialize due to previous failed reason"

    .line 94
    .line 95
    invoke-static {p1, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->notifyInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 100
    .line 101
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_7
    invoke-static {}, Lcom/unity3d/services/core/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    const-string p1, "Error during Unity Services environment check, halting Unity Services init"

    .line 112
    .line 113
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    .line 117
    .line 118
    const-string v1, "Unity Ads SDK failed to initialize due to environment check failed"

    .line 119
    .line 120
    invoke-static {p1, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->notifyInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/InitMetric;->newInitEnvironmentNotOk()Lcom/unity3d/services/core/request/metrics/Metric;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {p1, v1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :cond_8
    const-string p1, "Unity Services environment check OK"

    .line 136
    .line 137
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/InitMetric;->newInitEnvironmentOk()Lcom/unity3d/services/core/request/metrics/Metric;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {p1, v0}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->checkForGameIdAndTestModeChanges:Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;

    .line 152
    .line 153
    invoke-interface {p1, v4}, Lcom/unity3d/ads/core/domain/CheckForGameIdAndTestModeChanges;->invoke(Z)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CommonShouldAllowInitialization;->setInitializationState:Lcom/unity3d/ads/core/domain/SetInitializationState;

    .line 157
    .line 158
    sget-object v0, Lcom/unity3d/ads/core/data/model/InitializationState;->INITIALIZING:Lcom/unity3d/ads/core/data/model/InitializationState;

    .line 159
    .line 160
    invoke-interface {p1, v0, v4}, Lcom/unity3d/ads/core/domain/SetInitializationState;->invoke(Lcom/unity3d/ads/core/data/model/InitializationState;Z)V

    .line 161
    .line 162
    .line 163
    return v4

    .line 164
    :cond_9
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->notifyInitializationComplete()V

    .line 165
    .line 166
    .line 167
    :cond_a
    return v0
.end method
