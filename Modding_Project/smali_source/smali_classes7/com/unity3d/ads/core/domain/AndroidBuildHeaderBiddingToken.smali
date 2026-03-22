.class public final Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;
.super Ljava/lang/Object;
.source "AndroidBuildHeaderBiddingToken.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidBuildHeaderBiddingToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidBuildHeaderBiddingToken.kt\ncom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken\n+ 2 HeaderBiddingTokenKt.kt\ngatewayprotocol/v1/HeaderBiddingTokenKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TokenCountersKt.kt\ngatewayprotocol/v1/TokenCountersKtKt\n*L\n1#1,76:1\n10#2:77\n1#3:78\n1#3:79\n1#3:81\n10#4:80\n*S KotlinDebug\n*F\n+ 1 AndroidBuildHeaderBiddingToken.kt\ncom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken\n*L\n36#1:77\n36#1:78\n69#1:81\n69#1:80\n*E\n"
    }
.end annotation


# instance fields
.field private final campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final generateId:Lcom/unity3d/ads/core/domain/GetByteStringId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getInitializationData:Lcom/unity3d/ads/core/domain/GetInitializationData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getLimitedSessionToken:Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tcfRepository:Lcom/unity3d/ads/core/data/repository/TcfRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final testDataInfo:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;Lcom/unity3d/ads/core/domain/GetInitializationData;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/repository/TcfRepository;Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;Lcom/unity3d/ads/core/data/manager/OfferwallManager;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetByteStringId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/GetClientInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/GetInitializationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/ads/core/data/repository/CampaignRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/data/repository/TcfRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/unity3d/ads/core/data/manager/OfferwallManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "generateId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getClientInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "getTimestamps"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "getLimitedSessionToken"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "getInitializationData"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "deviceInfoRepository"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "sessionRepository"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "campaignRepository"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "tcfRepository"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "testDataInfo"

    .line 47
    .line 48
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "offerwallManager"

    .line 52
    .line 53
    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->generateId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;

    .line 62
    .line 63
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    .line 64
    .line 65
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getLimitedSessionToken:Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;

    .line 66
    .line 67
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getInitializationData:Lcom/unity3d/ads/core/domain/GetInitializationData;

    .line 68
    .line 69
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 70
    .line 71
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 72
    .line 73
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 74
    .line 75
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->tcfRepository:Lcom/unity3d/ads/core/data/repository/TcfRepository;

    .line 76
    .line 77
    iput-object p10, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->testDataInfo:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;

    .line 78
    .line 79
    iput-object p11, p0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public invoke(ILcom/unity3d/ads/TokenConfiguration;ZLrs/c;)Ljava/lang/Object;
    .locals 17
    .param p2    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Z",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    instance-of v2, v1, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 36
    .line 37
    const-string v5, "newBuilder()"

    .line 38
    .line 39
    const/4 v6, 0x5

    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x3

    .line 42
    const/4 v9, 0x2

    .line 43
    const/4 v10, 0x1

    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v4, :cond_6

    .line 46
    .line 47
    if-eq v4, v10, :cond_5

    .line 48
    .line 49
    if-eq v4, v9, :cond_4

    .line 50
    .line 51
    if-eq v4, v8, :cond_3

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    if-ne v4, v6, :cond_1

    .line 56
    .line 57
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 60
    .line 61
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 64
    .line 65
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 68
    .line 69
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 93
    .line 94
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 97
    .line 98
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v8, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 101
    .line 102
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v9, Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 105
    .line 106
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_3
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v4, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 118
    .line 119
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v7, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 122
    .line 123
    iget-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v8, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 126
    .line 127
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v9, Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 130
    .line 131
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 134
    .line 135
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_4
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v4, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 143
    .line 144
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v9, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 147
    .line 148
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v10, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 151
    .line 152
    iget-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v12, Lcom/google/protobuf/ByteString;

    .line 155
    .line 156
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v13, Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 159
    .line 160
    iget-object v14, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v14, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    move-object v15, v13

    .line 168
    move-object v13, v10

    .line 169
    move-object v10, v14

    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_5
    iget-boolean v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->Z$0:Z

    .line 173
    .line 174
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$6:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v10, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 177
    .line 178
    iget-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v12, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 181
    .line 182
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v13, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 185
    .line 186
    iget-object v14, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v14, Lcom/google/protobuf/ByteString;

    .line 189
    .line 190
    iget-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v15, Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 193
    .line 194
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v6, Lcom/unity3d/ads/TokenConfiguration;

    .line 197
    .line 198
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;

    .line 201
    .line 202
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v16, v12

    .line 206
    .line 207
    move v12, v4

    .line 208
    move-object/from16 v4, v16

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_6
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 215
    .line 216
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getTokenCounters()Lcom/unity3d/ads/core/data/model/TokenCounters;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 221
    .line 222
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 227
    .line 228
    invoke-interface {v4}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->incrementTokenSequenceNumber()V

    .line 229
    .line 230
    .line 231
    sget-object v4, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->Companion:Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;

    .line 232
    .line 233
    invoke-static {}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;->newBuilder()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v6}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;)Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->generateId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 245
    .line 246
    invoke-interface {v6}, Lcom/unity3d/ads/core/domain/GetByteStringId;->invoke()Lcom/google/protobuf/ByteString;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v4, v6}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTokenId(Lcom/google/protobuf/ByteString;)V

    .line 251
    .line 252
    .line 253
    move/from16 v6, p1

    .line 254
    .line 255
    invoke-virtual {v4, v6}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTokenNumber(I)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;

    .line 259
    .line 260
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 261
    .line 262
    move-object/from16 v7, p2

    .line 263
    .line 264
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 267
    .line 268
    iput-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$6:Ljava/lang/Object;

    .line 275
    .line 276
    move/from16 v12, p3

    .line 277
    .line 278
    iput-boolean v12, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->Z$0:Z

    .line 279
    .line 280
    iput v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 281
    .line 282
    invoke-interface {v6, v2}, Lcom/unity3d/ads/core/domain/GetClientInfo;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-ne v6, v3, :cond_7

    .line 287
    .line 288
    return-object v3

    .line 289
    :cond_7
    move-object v14, v1

    .line 290
    move-object v10, v4

    .line 291
    move-object v13, v10

    .line 292
    move-object v1, v6

    .line 293
    move-object v6, v7

    .line 294
    move-object v7, v0

    .line 295
    :goto_1
    check-cast v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 296
    .line 297
    invoke-virtual {v10, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getTimestamps:Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    .line 301
    .line 302
    invoke-interface {v1}, Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;->invoke()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTimestamps(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    .line 307
    .line 308
    .line 309
    if-eqz v6, :cond_8

    .line 310
    .line 311
    invoke-virtual {v6}, Lcom/unity3d/ads/TokenConfiguration;->getAdFormat()Lcom/unity3d/ads/AdFormat;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/AdFormatExtensions;->toProtoAdFormat(Lcom/unity3d/ads/AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setAdFormat(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V

    .line 320
    .line 321
    .line 322
    :cond_8
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 323
    .line 324
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 332
    .line 333
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 341
    .line 342
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getPiiData()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_9

    .line 355
    .line 356
    invoke-virtual {v1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-nez v6, :cond_a

    .line 365
    .line 366
    :cond_9
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setPii(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    .line 367
    .line 368
    .line 369
    :cond_a
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 370
    .line 371
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/CampaignRepository;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->tcfRepository:Lcom/unity3d/ads/core/data/repository/TcfRepository;

    .line 379
    .line 380
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/TcfRepository;->getTcfString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_b

    .line 385
    .line 386
    invoke-static {v1}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteStringUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTcf(Lcom/google/protobuf/ByteString;)V

    .line 391
    .line 392
    .line 393
    :cond_b
    invoke-virtual {v4, v12}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setScarSignalsCollected(Z)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v7, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    .line 397
    .line 398
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 399
    .line 400
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 401
    .line 402
    iput-object v14, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 403
    .line 404
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 407
    .line 408
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 409
    .line 410
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$6:Ljava/lang/Object;

    .line 411
    .line 412
    iput v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 413
    .line 414
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/manager/OfferwallManager;->isConnected(Lrs/c;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    if-ne v1, v3, :cond_c

    .line 419
    .line 420
    return-object v3

    .line 421
    :cond_c
    move-object v9, v4

    .line 422
    move-object v10, v7

    .line 423
    move-object v12, v14

    .line 424
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setOfferwallEnabled(Z)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_11

    .line 438
    .line 439
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 440
    .line 441
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGameId()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    if-eqz v1, :cond_e

    .line 446
    .line 447
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-lez v1, :cond_e

    .line 452
    .line 453
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getInitializationData:Lcom/unity3d/ads/core/domain/GetInitializationData;

    .line 454
    .line 455
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 456
    .line 457
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 458
    .line 459
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 462
    .line 463
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 466
    .line 467
    iput v8, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 468
    .line 469
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/domain/GetInitializationData;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    if-ne v1, v3, :cond_d

    .line 474
    .line 475
    return-object v3

    .line 476
    :cond_d
    move-object v4, v9

    .line 477
    move-object v7, v4

    .line 478
    move-object v8, v13

    .line 479
    move-object v9, v15

    .line 480
    :goto_3
    check-cast v1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    .line 481
    .line 482
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setInitializationData(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;)V

    .line 483
    .line 484
    .line 485
    :goto_4
    move-object v6, v8

    .line 486
    goto :goto_6

    .line 487
    :cond_e
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->getLimitedSessionToken:Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;

    .line 488
    .line 489
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 490
    .line 491
    iput-object v15, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 492
    .line 493
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 494
    .line 495
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 496
    .line 497
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 498
    .line 499
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$5:Ljava/lang/Object;

    .line 500
    .line 501
    const/4 v4, 0x4

    .line 502
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 503
    .line 504
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    if-ne v1, v3, :cond_f

    .line 509
    .line 510
    return-object v3

    .line 511
    :cond_f
    move-object v4, v9

    .line 512
    move-object v7, v4

    .line 513
    move-object v8, v13

    .line 514
    move-object v9, v15

    .line 515
    :goto_5
    check-cast v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;

    .line 516
    .line 517
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setLimitedSessionToken(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V

    .line 518
    .line 519
    .line 520
    goto :goto_4

    .line 521
    :goto_6
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 522
    .line 523
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 524
    .line 525
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 526
    .line 527
    iput-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$2:Ljava/lang/Object;

    .line 528
    .line 529
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$3:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->L$4:Ljava/lang/Object;

    .line 532
    .line 533
    const/4 v4, 0x5

    .line 534
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken$invoke$1;->label:I

    .line 535
    .line 536
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lrs/c;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    if-ne v1, v3, :cond_10

    .line 541
    .line 542
    return-object v3

    .line 543
    :cond_10
    move-object v3, v7

    .line 544
    move-object v4, v3

    .line 545
    move-object v7, v9

    .line 546
    move-object v2, v10

    .line 547
    :goto_7
    check-cast v1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 548
    .line 549
    invoke-virtual {v3, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 550
    .line 551
    .line 552
    move-object v10, v2

    .line 553
    move-object v9, v4

    .line 554
    move-object v13, v6

    .line 555
    move-object v15, v7

    .line 556
    goto :goto_8

    .line 557
    :cond_11
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 558
    .line 559
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setSessionToken(Lcom/google/protobuf/ByteString;)V

    .line 564
    .line 565
    .line 566
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 567
    .line 568
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->cachedStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 573
    .line 574
    .line 575
    :goto_8
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;->testDataInfo:Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;

    .line 576
    .line 577
    invoke-virtual {v1}, Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;->invoke()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    if-eqz v1, :cond_12

    .line 582
    .line 583
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTestData(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    .line 584
    .line 585
    .line 586
    :cond_12
    sget-object v1, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->Companion:Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;

    .line 587
    .line 588
    invoke-static {}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->newBuilder()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;)Lgatewayprotocol/v1/TokenCountersKt$Dsl;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/TokenCounters;->getSeq()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->setSeq(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/TokenCounters;->getWins()I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->setWins(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v15}, Lcom/unity3d/ads/core/data/model/TokenCounters;->getStarts()I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->setStarts(I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_build()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->setTokenCounters(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v13}, Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;->_build()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    return-object v1
.end method
