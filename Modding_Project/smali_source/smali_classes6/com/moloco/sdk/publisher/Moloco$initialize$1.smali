.class final Lcom/moloco/sdk/publisher/Moloco$initialize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/publisher/Moloco;->initialize(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
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
    c = "com.moloco.sdk.publisher.Moloco$initialize$1"
    f = "Moloco.kt"
    l = {
        0x75,
        0x77,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

.field final synthetic $listener:Lcom/moloco/sdk/publisher/MolocoInitializationListener;

.field label:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/init/MolocoInitParams;",
            "Lcom/moloco/sdk/publisher/MolocoInitializationListener;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/publisher/Moloco$initialize$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$listener:Lcom/moloco/sdk/publisher/MolocoInitializationListener;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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

    .line 1
    new-instance p1, Lcom/moloco/sdk/publisher/Moloco$initialize$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$listener:Lcom/moloco/sdk/publisher/MolocoInitializationListener;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/publisher/Moloco$initialize$1;-><init>(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/moloco/sdk/publisher/Moloco$initialize$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
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
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "launched the scope to initialize sdk with thread name: "

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " and dispatcher DispatcherProvider().IO"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/16 v10, 0xc

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    const-string v6, "Moloco"

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lcom/moloco/sdk/service_locator/b$d;->a:Lcom/moloco/sdk/service_locator/b$d;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$d;->b()Lcom/moloco/sdk/internal/error/crash/a;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput v4, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->label:I

    .line 92
    .line 93
    invoke-interface {p1, p0}, Lcom/moloco/sdk/internal/error/crash/a;->a(Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-ne p1, v0, :cond_4

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_4
    :goto_0
    sget-object p1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 103
    .line 104
    invoke-static {p1, v1}, Lcom/moloco/sdk/publisher/Moloco;->access$initializeAndroidClientMetrics(Lcom/moloco/sdk/publisher/Moloco;Lcom/moloco/sdk/publisher/init/MolocoInitParams;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/moloco/sdk/publisher/Moloco;->access$getInitializationHandler(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/publisher/v;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getAppKey()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getMediationInfo()Lcom/moloco/sdk/publisher/MediationInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget-object p1, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$f;->d()Lcom/moloco/sdk/internal/services/init/m;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    sget-object p1, Lcom/moloco/sdk/acm/recorder/a;->Companion:Lcom/moloco/sdk/acm/recorder/a$a;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$initParam:Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;->getMediationInfo()Lcom/moloco/sdk/publisher/MediationInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/MediationInfo;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Lcom/moloco/sdk/acm/recorder/a$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/acm/recorder/a;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    iput v3, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->label:I

    .line 146
    .line 147
    move-object v9, p0

    .line 148
    invoke-virtual/range {v4 .. v9}, Lcom/moloco/sdk/internal/publisher/v;->d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_5

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_5
    :goto_1
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 156
    .line 157
    instance-of v1, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 158
    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 162
    .line 163
    const/16 v8, 0xc

    .line 164
    .line 165
    const/4 v9, 0x0

    .line 166
    const-string v4, "Moloco"

    .line 167
    .line 168
    const-string v5, "Moloco SDK initialization failed"

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    const/4 v7, 0x0

    .line 172
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$listener:Lcom/moloco/sdk/publisher/MolocoInitializationListener;

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    sget-object v1, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    .line 180
    .line 181
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/moloco/sdk/internal/services/init/i;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v1, p1}, Lcom/moloco/sdk/internal/publisher/v$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v0, p1}, Lcom/moloco/sdk/internal/publisher/r0;->a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    instance-of v1, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 202
    .line 203
    if-eqz v1, :cond_9

    .line 204
    .line 205
    sget-object v1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 206
    .line 207
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 214
    .line 215
    invoke-static {v1, p1}, Lcom/moloco/sdk/publisher/Moloco;->access$processInitConfigs(Lcom/moloco/sdk/publisher/Moloco;Lcom/moloco/sdk/Init$SDKInitResponse;)V

    .line 216
    .line 217
    .line 218
    iput v2, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->label:I

    .line 219
    .line 220
    invoke-static {v1, p0}, Lcom/moloco/sdk/publisher/Moloco;->access$updateAndroidClientMetricsOnInitSuccess(Lcom/moloco/sdk/publisher/Moloco;Lrs/c;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-ne p1, v0, :cond_7

    .line 225
    .line 226
    return-object v0

    .line 227
    :cond_7
    :goto_2
    sget-object p1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/moloco/sdk/publisher/Moloco;->access$initializeILRD(Lcom/moloco/sdk/publisher/Moloco;)V

    .line 230
    .line 231
    .line 232
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 233
    .line 234
    const/16 v5, 0xc

    .line 235
    .line 236
    const/4 v6, 0x0

    .line 237
    const-string v1, "Moloco"

    .line 238
    .line 239
    const-string v2, "Moloco SDK initialization success"

    .line 240
    .line 241
    const/4 v3, 0x0

    .line 242
    const/4 v4, 0x0

    .line 243
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$initialize$1;->$listener:Lcom/moloco/sdk/publisher/MolocoInitializationListener;

    .line 247
    .line 248
    if-eqz p1, :cond_8

    .line 249
    .line 250
    sget-object v0, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/v$a;->c()Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {p1, v0}, Lcom/moloco/sdk/internal/publisher/r0;->a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p1

    .line 262
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 263
    .line 264
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 265
    .line 266
    .line 267
    throw p1
.end method
