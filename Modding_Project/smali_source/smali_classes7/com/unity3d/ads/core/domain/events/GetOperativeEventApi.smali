.class public final Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;
.super Ljava/lang/Object;
.source "GetOperativeEventApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGetOperativeEventApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetOperativeEventApi.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
    }
.end annotation


# instance fields
.field private final operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final operativeEventRequest:Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "operativeEventRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operativeEventRequest"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->operativeEventRequest:Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object/from16 v8, p6

    .line 16
    .line 17
    :goto_1
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, p3

    .line 21
    move-object v6, p4

    .line 22
    move-object/from16 v9, p7

    .line 23
    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method


# virtual methods
.method public final invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;
    .locals 11
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;

    iget v3, v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->label:I

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lrs/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v10, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v10, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v10, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->operativeEventRequest:Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;

    iput-object v0, v10, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->L$0:Ljava/lang/Object;

    iput v4, v10, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi$invoke$1;->label:I

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;->invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, v0

    .line 3
    :goto_2
    check-cast v1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    .line 4
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->operativeEventRepository:Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;

    invoke-virtual {v2, v1}, Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;->addOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    .line 5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method public final invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/google/protobuf/ByteString;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lcom/google/protobuf/ByteString;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 6
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getPlayerServerId()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    move-result-object p2

    sget-object v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;->DIAGNOSTIC_AD_TYPE_BANNER:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 10
    sget-object p2, Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;

    move-object v6, p2

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v7, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;->invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
