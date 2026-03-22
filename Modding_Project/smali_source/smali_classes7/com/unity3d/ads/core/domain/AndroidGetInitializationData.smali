.class public final Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;
.super Ljava/lang/Object;
.source "AndroidGetInitializationData.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetInitializationData;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidGetInitializationData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetInitializationData.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationData\n+ 2 InitializationDataKt.kt\ngatewayprotocol/v1/InitializationDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n10#2:14\n1#3:15\n*S KotlinDebug\n*F\n+ 1 AndroidGetInitializationData.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationData\n*L\n9#1:14\n9#1:15\n*E\n"
    }
.end annotation


# instance fields
.field private final getInitializeRequestPayload:Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getUniversalRequestSharedData:Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getInitializeRequestPayload"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getUniversalRequestSharedData"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;->getInitializeRequestPayload:Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;->getUniversalRequestSharedData:Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$3:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 68
    .line 69
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v5, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 72
    .line 73
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object v7, v5

    .line 81
    move-object v5, v2

    .line 82
    move-object v2, v7

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;

    .line 88
    .line 89
    invoke-static {}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->newBuilder()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v5, "newBuilder()"

    .line 94
    .line 95
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;->getInitializeRequestPayload:Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;

    .line 103
    .line 104
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$2:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$3:Ljava/lang/Object;

    .line 111
    .line 112
    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->label:I

    .line 113
    .line 114
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v1, :cond_4

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_4
    move-object v6, p0

    .line 122
    move-object v4, v2

    .line 123
    move-object v5, v4

    .line 124
    :goto_1
    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 125
    .line 126
    invoke-virtual {v5, p1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v6, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData;->getUniversalRequestSharedData:Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    .line 130
    .line 131
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$1:Ljava/lang/Object;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$2:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->L$3:Ljava/lang/Object;

    .line 139
    .line 140
    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationData$invoke$1;->label:I

    .line 141
    .line 142
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v1, :cond_5

    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_5
    move-object v0, v2

    .line 150
    move-object v1, v4

    .line 151
    :goto_2
    check-cast p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1
.end method
