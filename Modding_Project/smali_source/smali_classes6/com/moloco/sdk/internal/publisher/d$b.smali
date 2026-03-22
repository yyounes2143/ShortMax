.class public final Lcom/moloco/sdk/internal/publisher/d$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/d;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.AdLoadImpl$load$2"
    f = "AdLoad.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/publisher/d;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/d;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/AdLoad$Listener;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/d$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/d$b;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/moloco/sdk/internal/publisher/d$b;->l:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/d$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/d$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$b;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/moloco/sdk/internal/publisher/d$b;->l:J

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/d$b;-><init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;JLrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->j:Ljava/lang/String;

    .line 30
    .line 31
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/d$b;->h:I

    .line 32
    .line 33
    invoke-static {p1, v1, p0}, Lcom/moloco/sdk/internal/publisher/d;->d(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 45
    .line 46
    const/16 v8, 0xc

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const-string v4, "AdLoadImpl"

    .line 50
    .line 51
    const-string v5, "Could not pre-process the bid response. Failing the load() call."

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/moloco/sdk/publisher/MolocoAdErrorKt;->createAdErrorInfo(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Lcom/moloco/sdk/publisher/AdLoad$Listener;->onAdLoadFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/d;->p(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/recorder/a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->a(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/e;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "failure"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    sget-object v3, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v0, v2, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 128
    .line 129
    invoke-static {v5}, Lcom/moloco/sdk/internal/publisher/d;->j(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const-string/jumbo v7, "toLowerCase(...)"

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/d;->p(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/recorder/a;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 163
    .line 164
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/a;->l:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-direct {v0, v4}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v3}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v0, v1, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 194
    .line 195
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/d;->j(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {p1, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 215
    .line 216
    .line 217
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1

    .line 220
    :cond_4
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 221
    .line 222
    const/16 v8, 0xc

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const-string v4, "AdLoad"

    .line 226
    .line 227
    const-string v5, "Processed the bidResponse, proceeding with the load() call."

    .line 228
    .line 229
    const/4 v6, 0x0

    .line 230
    const/4 v7, 0x0

    .line 231
    move-object v3, v0

    .line 232
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->k:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 236
    .line 237
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 238
    .line 239
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/d;->a(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/e;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 244
    .line 245
    invoke-static {v4}, Lcom/moloco/sdk/internal/publisher/d;->j(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 250
    .line 251
    invoke-static {v5}, Lcom/moloco/sdk/internal/publisher/d;->p(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/recorder/a;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-static {v1, v3, v4, v5}, Lcom/moloco/sdk/internal/publisher/b0;->a(Lcom/moloco/sdk/publisher/AdLoad$Listener;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/publisher/s0;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 260
    .line 261
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/d;->n(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_8

    .line 270
    .line 271
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/publisher/d;->isLoaded()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_7

    .line 278
    .line 279
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const/4 v0, 0x2

    .line 286
    const/4 v2, 0x0

    .line 287
    invoke-static {p1, v2, v0, v2}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->l:J

    .line 292
    .line 293
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-static {v0, v5}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_5

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_5

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    goto :goto_1

    .line 316
    :cond_5
    move-object v0, v2

    .line 317
    :goto_1
    invoke-interface {v1, p1, v3, v4, v0}, Lcom/moloco/sdk/internal/publisher/s0;->a(Lcom/moloco/sdk/publisher/MolocoAd;JLcom/moloco/sdk/internal/ortb/model/r;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 321
    .line 322
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v0, v3}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_6

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_6

    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    :cond_6
    invoke-interface {v1, p1, v2}, Lcom/moloco/sdk/internal/publisher/s0;->b(Lcom/moloco/sdk/publisher/MolocoAd;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 343
    .line 344
    .line 345
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 346
    .line 347
    return-object p1

    .line 348
    :cond_7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 349
    .line 350
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/d;->o(Lcom/moloco/sdk/internal/publisher/d;)Lkotlinx/coroutines/r;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    if-eqz v3, :cond_8

    .line 355
    .line 356
    invoke-interface {v3}, Lkotlinx/coroutines/r;->isActive()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-ne v3, v2, :cond_8

    .line 361
    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v1, "Already loading ad "

    .line 368
    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 373
    .line 374
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->j(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const/16 v1, 0x20

    .line 382
    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 387
    .line 388
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v1, ". Returning"

    .line 396
    .line 397
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    const/16 v5, 0xc

    .line 405
    .line 406
    const/4 v6, 0x0

    .line 407
    const-string v1, "AdLoad"

    .line 408
    .line 409
    const/4 v3, 0x0

    .line 410
    const/4 v4, 0x0

    .line 411
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 415
    .line 416
    return-object p1

    .line 417
    :cond_8
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$b;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 418
    .line 419
    iget-wide v2, p0, Lcom/moloco/sdk/internal/publisher/d$b;->l:J

    .line 420
    .line 421
    invoke-static {v0, p1, v2, v3, v1}, Lcom/moloco/sdk/internal/publisher/d;->g(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;)V

    .line 422
    .line 423
    .line 424
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 425
    .line 426
    return-object p1
.end method
