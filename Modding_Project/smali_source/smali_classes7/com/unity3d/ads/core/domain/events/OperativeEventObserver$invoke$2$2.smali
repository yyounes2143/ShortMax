.class final Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OperativeEventObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.events.OperativeEventObserver$invoke$2$2"
    f = "OperativeEventObserver.kt"
    l = {
        0x28,
        0x2b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOperativeEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 5 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,49:1\n484#2:50\n1#3:51\n20#4,4:52\n24#4,6:57\n29#5:56\n*S KotlinDebug\n*F\n+ 1 OperativeEventObserver.kt\ncom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2\n*L\n37#1:50\n37#1:51\n46#1:52,4\n46#1:57,6\n46#1:56\n*E\n"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;-><init>(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->invoke(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    .line 41
    .line 42
    sget-object v1, Lgatewayprotocol/v1/UniversalRequestKt;->INSTANCE:Lgatewayprotocol/v1/UniversalRequestKt;

    .line 43
    .line 44
    sget-object v1, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    .line 45
    .line 46
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "newBuilder()"

    .line 51
    .line 52
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setOperativeEvent(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->access$getGetUniversalRequestForPayLoad$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput v3, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->label:I

    .line 73
    .line 74
    invoke-interface {v1, p1, p0}, Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;->invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    :goto_0
    check-cast p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 82
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v3, "randomUUID().toString()"

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 97
    .line 98
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->access$getUniversalRequestDataSource$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v4, "fullRequest.toByteArray()"

    .line 107
    .line 108
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object v1, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    iput v2, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->label:I

    .line 118
    .line 119
    invoke-virtual {v3, v1, p1, p0}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;->set(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lrs/c;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v0, :cond_4

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_4
    move-object v0, v1

    .line 127
    :goto_1
    new-instance p1, Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;

    .line 128
    .line 129
    invoke-direct {p1, v0}, Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver$invoke$2$2;->this$0:Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;->access$getBackgroundWorker$p(Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;)Lcom/unity3d/ads/core/domain/work/BackgroundWorker;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Landroidx/work/Constraints$Builder;

    .line 139
    .line 140
    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "Builder()\n            .s\u2026TED)\n            .build()"

    .line 154
    .line 155
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 159
    .line 160
    const-class v3, Lcom/unity3d/ads/core/domain/work/OperativeEventJob;

    .line 161
    .line 162
    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;->invoke()Landroidx/work/Data;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v1, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 180
    .line 181
    const-string v1, "UnityAdsBackgroundWorker"

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string v1, "OneTimeWorkRequestBuilde\u2026TAG)\n            .build()"

    .line 194
    .line 195
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;->getWorkManager()Landroidx/work/WorkManager;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 205
    .line 206
    .line 207
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p1
.end method
