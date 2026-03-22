.class public final Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;
.super Ljava/lang/Object;
.source "AndroidSendDiagnosticEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getDiagnosticEventRequest:Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "diagnosticEventRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getDiagnosticEventRequest"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;->diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;->getDiagnosticEventRequest:Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "event"

    .line 3
    .line 4
    move-object v3, p1

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v7, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v7, v1

    .line 22
    :goto_0
    if-eqz p5, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v8, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v8, v1

    .line 31
    :goto_1
    if-eqz p5, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->getPlacementId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v9, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object v9, v1

    .line 40
    :goto_2
    if-eqz p5, :cond_3

    .line 41
    .line 42
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_3
    move-object v10, v1

    .line 47
    if-eqz p3, :cond_5

    .line 48
    .line 49
    invoke-static {p3}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    :goto_3
    move-object v4, v1

    .line 57
    goto :goto_5

    .line 58
    :cond_5
    :goto_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_5
    const-string v1, "true"

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    if-eqz p5, :cond_6

    .line 68
    .line 69
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->isScarAd()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ne v5, v2, :cond_6

    .line 74
    .line 75
    const-string v5, "scar"

    .line 76
    .line 77
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_6
    if-eqz p5, :cond_7

    .line 81
    .line 82
    invoke-virtual/range {p5 .. p5}, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-ne v5, v2, :cond_7

    .line 87
    .line 88
    const-string v2, "offerwall"

    .line 89
    .line 90
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_7
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;->getDiagnosticEventRequest:Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;

    .line 94
    .line 95
    move-object v3, p1

    .line 96
    move-object/from16 v5, p4

    .line 97
    .line 98
    move-object v6, p2

    .line 99
    move-object/from16 v11, p6

    .line 100
    .line 101
    invoke-virtual/range {v2 .. v11}, Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;->invoke(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/Boolean;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Ljava/lang/Integer;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;->diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    .line 106
    .line 107
    invoke-interface {v2, v1}, Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;->addDiagnosticEvent(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
