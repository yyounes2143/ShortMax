.class public final Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;
.super Ljava/lang/Object;
.source "GetOperativeEventRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGetOperativeEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetOperativeEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventRequest\n+ 2 OperativeEventRequestKt.kt\ngatewayprotocol/v1/OperativeEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n10#2:44\n1#3:45\n1#3:46\n*S KotlinDebug\n*F\n+ 1 GetOperativeEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventRequest\n*L\n29#1:44\n29#1:45\n*E\n"
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

.field private final generateByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetByteStringId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/repository/CampaignRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "generateByteStringId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deviceInfoRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "campaignRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->generateByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p7, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p7

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p7}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p7, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;

    .line 41
    .line 42
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;

    .line 45
    .line 46
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p3, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;

    .line 49
    .line 50
    iget-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    move-object p6, p4

    .line 53
    check-cast p6, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    .line 54
    .line 55
    iget-object p4, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p4, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;

    .line 58
    .line 59
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object p7, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;

    .line 75
    .line 76
    invoke-static {}, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->newBuilder()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v4, "newBuilder()"

    .line 81
    .line 82
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p7, v2}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;)Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;

    .line 86
    .line 87
    .line 88
    move-result-object p7

    .line 89
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->generateByteStringId:Lcom/unity3d/ads/core/domain/GetByteStringId;

    .line 90
    .line 91
    invoke-interface {v2}, Lcom/unity3d/ads/core/domain/GetByteStringId;->invoke()Lcom/google/protobuf/ByteString;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p7, v2}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setEventId(Lcom/google/protobuf/ByteString;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p7, p1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setEventType(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p7, p3}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p7, p2}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setTrackingToken(Lcom/google/protobuf/ByteString;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p7, p4}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setAdditionalData(Lcom/google/protobuf/ByteString;)V

    .line 108
    .line 109
    .line 110
    if-eqz p5, :cond_3

    .line 111
    .line 112
    invoke-virtual {p7, p5}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setSid(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p7, p1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 125
    .line 126
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object p6, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$1:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p7, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$2:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object p7, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$3:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object p7, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->L$4:Ljava/lang/Object;

    .line 135
    .line 136
    iput v3, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest$invoke$1;->label:I

    .line 137
    .line 138
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v1, :cond_4

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_4
    move-object p4, p0

    .line 146
    move-object p2, p7

    .line 147
    move-object p3, p2

    .line 148
    move-object p7, p1

    .line 149
    move-object p1, p3

    .line 150
    :goto_1
    check-cast p7, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 151
    .line 152
    invoke-virtual {p1, p7}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p4, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p4, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->campaignRepository:Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 165
    .line 166
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/CampaignRepository;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2, p1}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    .line 171
    .line 172
    .line 173
    if-eqz p6, :cond_5

    .line 174
    .line 175
    invoke-virtual {p2, p6}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->setAdFormat(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {p3}, Lgatewayprotocol/v1/OperativeEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    return-object p1
.end method
