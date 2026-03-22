.class public final Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;
.super Ljava/lang/Object;
.source "AndroidOmImpressionOccurred.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final openMeasurementRepository:Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "openMeasurementRepository"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;->openMeasurementRepository:Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdObject;ZLrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->label:I

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
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 41
    .line 42
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    move-object v7, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;->openMeasurementRepository:Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    iput v3, v0, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred$invoke$1;->label:I

    .line 73
    .line 74
    invoke-interface {p3, v2, p2, v0}, Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;->impressionOccurred(Lcom/google/protobuf/ByteString;ZLrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-ne p3, v1, :cond_3

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    move-object p2, p0

    .line 82
    goto :goto_1

    .line 83
    :goto_2
    check-cast p3, Lcom/unity3d/ads/core/data/model/OMResult;

    .line 84
    .line 85
    instance-of p1, p3, Lcom/unity3d/ads/core/data/model/OMResult$Success;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object v2, p2, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 90
    .line 91
    const/16 v9, 0x2e

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    const-string v3, "om_impression_occurred_success"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-static/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    instance-of p1, p3, Lcom/unity3d/ads/core/data/model/OMResult$Failure;

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    iget-object v2, p2, Lcom/unity3d/ads/core/domain/om/AndroidOmImpressionOccurred;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    .line 110
    invoke-static {}, Lkotlin/collections/p0;->c()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p3, Lcom/unity3d/ads/core/data/model/OMResult$Failure;

    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OMResult$Failure;->getReason()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-string v0, "reason"

    .line 121
    .line 122
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OMResult$Failure;->getReasonDebug()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    const-string p2, "reason_debug"

    .line 132
    .line 133
    invoke-virtual {p3}, Lcom/unity3d/ads/core/data/model/OMResult$Failure;->getReasonDebug()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_5
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    invoke-static {p1}, Lkotlin/collections/p0;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const/16 v9, 0x2a

    .line 147
    .line 148
    const/4 v10, 0x0

    .line 149
    const-string v3, "om_impression_occurred_failure"

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v8, 0x0

    .line 154
    invoke-static/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1
.end method
