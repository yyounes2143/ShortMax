.class public final Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;
.super Ljava/lang/Object;
.source "AndroidTriggerInitializationCompletedRequest.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getInitializationCompletedRequest:Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/GetRequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/gatewayclient/GatewayClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getInitializationCompletedRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getRequestPolicy"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "gatewayClient"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sendDiagnosticEvent"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->getInitializationCompletedRequest:Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public invoke(Lrs/c;)Ljava/lang/Object;
    .locals 24
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->label:I

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
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v8, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->label:I

    .line 38
    .line 39
    const-string v11, "reason_debug"

    .line 40
    .line 41
    const-string v12, "reason"

    .line 42
    .line 43
    const-string v13, "operation"

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    const/4 v14, 0x1

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    if-eq v3, v14, :cond_2

    .line 50
    .line 51
    if-ne v3, v4, :cond_1

    .line 52
    .line 53
    iget-wide v2, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->J$0:J

    .line 54
    .line 55
    iget-object v4, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;

    .line 58
    .line 59
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    iget-wide v5, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->J$0:J

    .line 76
    .line 77
    iget-object v3, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;

    .line 80
    .line 81
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    move-object v15, v3

    .line 85
    :goto_2
    move-wide v9, v5

    .line 86
    goto :goto_4

    .line 87
    :catch_1
    move-exception v0

    .line 88
    move-object v4, v3

    .line 89
    :goto_3
    move-wide v2, v5

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_3
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 96
    .line 97
    invoke-virtual {v0}, Lkotlin/time/h;->b()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    iget-object v15, v1, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 102
    .line 103
    const/16 v22, 0x3e

    .line 104
    .line 105
    const/16 v23, 0x0

    .line 106
    .line 107
    const-string v16, "native_initialization_completed_event_request_started"

    .line 108
    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    const/16 v21, 0x0

    .line 118
    .line 119
    invoke-static/range {v15 .. v23}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :try_start_2
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->getInitializationCompletedRequest:Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    .line 123
    .line 124
    iput-object v1, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    iput-wide v5, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->J$0:J

    .line 127
    .line 128
    iput v14, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->label:I

    .line 129
    .line 130
    invoke-interface {v0, v8}, Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 134
    if-ne v0, v2, :cond_4

    .line 135
    .line 136
    return-object v2

    .line 137
    :cond_4
    move-object v15, v1

    .line 138
    goto :goto_2

    .line 139
    :goto_4
    :try_start_3
    move-object v5, v0

    .line 140
    check-cast v5, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 141
    .line 142
    iget-object v0, v15, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->getRequestPolicy:Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetRequestPolicy;->invoke()Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iget-object v3, v15, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->gatewayClient:Lcom/unity3d/ads/gatewayclient/GatewayClient;

    .line 149
    .line 150
    sget-object v7, Lcom/unity3d/ads/core/data/model/OperationType;->INITIALIZATION_COMPLETED:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 151
    .line 152
    iput-object v15, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput-wide v9, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->J$0:J

    .line 155
    .line 156
    iput v4, v8, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest$invoke$1;->label:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v0, 0x1

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    move-wide/from16 v17, v9

    .line 163
    .line 164
    move v9, v0

    .line 165
    move-object/from16 v10, v16

    .line 166
    .line 167
    :try_start_4
    invoke-static/range {v3 .. v10}, Lcom/unity3d/ads/gatewayclient/GatewayClient$DefaultImpls;->request$default(Lcom/unity3d/ads/gatewayclient/GatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    if-ne v0, v2, :cond_5

    .line 172
    .line 173
    return-object v2

    .line 174
    :cond_5
    move-object v4, v15

    .line 175
    move-wide/from16 v2, v17

    .line 176
    .line 177
    :goto_5
    :try_start_5
    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    .line 178
    .line 179
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_6

    .line 184
    .line 185
    iget-object v15, v4, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 186
    .line 187
    const-string v16, "native_initialization_completed_event_request_failure_time"

    .line 188
    .line 189
    invoke-static {v2, v3}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v5}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 198
    .line 199
    .line 200
    move-result-object v17

    .line 201
    sget-object v5, Lcom/unity3d/ads/core/data/model/OperationType;->INITIALIZATION_COMPLETED:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v13, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    const-string v6, "gateway"

    .line 212
    .line 213
    invoke-static {v12, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v11, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    filled-new-array {v5, v6, v0}, [Lkotlin/Pair;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 234
    .line 235
    .line 236
    move-result-object v18

    .line 237
    const/16 v22, 0x38

    .line 238
    .line 239
    const/16 v23, 0x0

    .line 240
    .line 241
    const/16 v19, 0x0

    .line 242
    .line 243
    const/16 v20, 0x0

    .line 244
    .line 245
    const/16 v21, 0x0

    .line 246
    .line 247
    invoke-static/range {v15 .. v23}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 251
    .line 252
    return-object v0

    .line 253
    :cond_6
    iget-object v0, v4, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 254
    .line 255
    invoke-static {v2, v3}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 260
    .line 261
    .line 262
    move-result-wide v2

    .line 263
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    const/16 v9, 0x3c

    .line 268
    .line 269
    const/4 v10, 0x0

    .line 270
    const-string v3, "native_initialization_completed_event_request_success_time"

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    const/4 v6, 0x0

    .line 274
    const/4 v7, 0x0

    .line 275
    const/4 v8, 0x0

    .line 276
    move-object v2, v0

    .line 277
    invoke-static/range {v2 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 281
    .line 282
    return-object v0

    .line 283
    :catch_2
    move-exception v0

    .line 284
    :goto_6
    move-object v4, v15

    .line 285
    move-wide/from16 v2, v17

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :catch_3
    move-exception v0

    .line 289
    move-wide/from16 v17, v9

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :catch_4
    move-exception v0

    .line 293
    move-object v4, v1

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :goto_7
    iget-object v15, v4, Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 297
    .line 298
    invoke-static {v2, v3}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 307
    .line 308
    .line 309
    move-result-object v17

    .line 310
    sget-object v2, Lcom/unity3d/ads/core/data/model/OperationType;->INITIALIZATION_COMPLETED:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/OperationType;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v13, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const-string v3, "uncaught_exception"

    .line 321
    .line 322
    invoke-static {v12, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const/4 v4, 0x0

    .line 327
    const/4 v5, 0x0

    .line 328
    invoke-static {v0, v4, v14, v5}, Lcom/unity3d/ads/core/extensions/ExceptionExtensionsKt;->getShortenedStackTrace$default(Ljava/lang/Throwable;IILjava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v11, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    filled-new-array {v2, v3, v0}, [Lkotlin/Pair;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 341
    .line 342
    .line 343
    move-result-object v18

    .line 344
    const/16 v22, 0x38

    .line 345
    .line 346
    const/16 v23, 0x0

    .line 347
    .line 348
    const-string v16, "native_initialization_completed_event_request_failure_time"

    .line 349
    .line 350
    const/16 v19, 0x0

    .line 351
    .line 352
    const/16 v20, 0x0

    .line 353
    .line 354
    const/16 v21, 0x0

    .line 355
    .line 356
    invoke-static/range {v15 .. v23}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 360
    .line 361
    return-object v0
.end method
