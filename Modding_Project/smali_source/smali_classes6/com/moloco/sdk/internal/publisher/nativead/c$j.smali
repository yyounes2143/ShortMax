.class public final Lcom/moloco/sdk/internal/publisher/nativead/c$j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/c;->l(Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/moloco/sdk/internal/publisher/nativead/c$b;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$load$2"
    f = "NativeAdLoader.kt"
    l = {
        0x7b,
        0x83,
        0x8a,
        0x90
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader$load$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n1#2:320\n*E\n"
    }
.end annotation


# instance fields
.field public h:J

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Lcom/moloco/sdk/internal/publisher/nativead/c;

.field public final synthetic m:Lcom/moloco/sdk/acm/e;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lcom/moloco/sdk/internal/publisher/s0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/acm/e;Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/c;",
            "Lcom/moloco/sdk/acm/e;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/c$j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->m:Lcom/moloco/sdk/acm/e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->n:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

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
            "Lkotlin/Result<",
            "Lcom/moloco/sdk/internal/publisher/nativead/c$b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/c$j;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/c$j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->m:Lcom/moloco/sdk/acm/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->n:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/c$j;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/acm/e;Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->k:I

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    if-eq v0, v4, :cond_3

    .line 16
    .line 17
    if-eq v0, v3, :cond_2

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->j:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 26
    .line 27
    iget-object v1, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    check-cast v2, Lkotlin/Result;

    .line 37
    .line 38
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    iget-wide v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 53
    .line 54
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v4, p1

    .line 62
    .line 63
    check-cast v4, Lkotlin/Result;

    .line 64
    .line 65
    invoke-virtual {v4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    move-object v9, v0

    .line 70
    move-wide v5, v2

    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_2
    iget-wide v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 74
    .line 75
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 78
    .line 79
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    iget-wide v4, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object/from16 v0, p1

    .line 90
    .line 91
    check-cast v0, Lkotlin/Result;

    .line 92
    .line 93
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->r(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/services/l;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/l;->a()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 113
    .line 114
    iget-object v6, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v3, "WebView Error: "

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const-string v3, "NativeAdLoader"

    .line 146
    .line 147
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/moloco/sdk/internal/MolocoLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 148
    .line 149
    .line 150
    invoke-static {v6}, Lcom/moloco/sdk/internal/publisher/nativead/c;->m(Lcom/moloco/sdk/internal/publisher/nativead/c;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v2, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_WEBVIEW_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 155
    .line 156
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/errors/a;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/errors/a;

    .line 157
    .line 158
    invoke-static {v1, v2, v3}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-interface {v5, v1, v2}, Lcom/moloco/sdk/internal/publisher/s0;->c(Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0

    .line 179
    :cond_5
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->q(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/services/j;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->m:Lcom/moloco/sdk/acm/e;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/moloco/sdk/acm/e;->d()V

    .line 192
    .line 193
    .line 194
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->p(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/acm/recorder/a;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v9, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 201
    .line 202
    invoke-static {v9}, Lcom/moloco/sdk/internal/publisher/nativead/c;->n(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/acm/e;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-interface {v0, v9}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->p(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/acm/recorder/a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v9, Lcom/moloco/sdk/acm/b;

    .line 216
    .line 217
    sget-object v10, Lcom/moloco/sdk/internal/client_metrics_data/a;->j:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 218
    .line 219
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-direct {v9, v10}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object v10, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 227
    .line 228
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    iget-object v11, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 233
    .line 234
    invoke-static {v11}, Lcom/moloco/sdk/internal/publisher/nativead/c;->a(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/publisher/AdFormatType;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 243
    .line 244
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    const-string/jumbo v12, "toLowerCase(...)"

    .line 249
    .line 250
    .line 251
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v10, v11}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-interface {v0, v9}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 262
    .line 263
    iget-object v9, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->n:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v10, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->m:Lcom/moloco/sdk/acm/e;

    .line 266
    .line 267
    iget-object v11, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 268
    .line 269
    iput-wide v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 270
    .line 271
    iput v4, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->k:I

    .line 272
    .line 273
    invoke-static {v0, v9, v10, v11, v7}, Lcom/moloco/sdk/internal/publisher/nativead/c;->d(Lcom/moloco/sdk/internal/publisher/nativead/c;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-ne v0, v8, :cond_6

    .line 278
    .line 279
    return-object v8

    .line 280
    :cond_6
    move-wide v4, v5

    .line 281
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    if-nez v6, :cond_c

    .line 286
    .line 287
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 288
    .line 289
    iget-object v6, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 290
    .line 291
    invoke-static {v6}, Lcom/moloco/sdk/internal/publisher/nativead/c;->o(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/scheduling/a;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-interface {v6}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    new-instance v15, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;

    .line 300
    .line 301
    iget-object v10, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 302
    .line 303
    iget-object v11, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 304
    .line 305
    const/16 v16, 0x0

    .line 306
    .line 307
    move-object v9, v15

    .line 308
    move-object v12, v0

    .line 309
    move-wide v13, v4

    .line 310
    move-object v1, v15

    .line 311
    move-object/from16 v15, v16

    .line 312
    .line 313
    invoke-direct/range {v9 .. v15}, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;-><init>(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/ortb/model/c;JLrs/c;)V

    .line 314
    .line 315
    .line 316
    iput-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 317
    .line 318
    iput-wide v4, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 319
    .line 320
    iput v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->k:I

    .line 321
    .line 322
    invoke-static {v6, v1, v7}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    if-ne v1, v8, :cond_7

    .line 327
    .line 328
    return-object v8

    .line 329
    :cond_7
    move-wide v3, v4

    .line 330
    :goto_1
    iget-object v1, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    iget-object v9, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 345
    .line 346
    iput-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 347
    .line 348
    iput-wide v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->h:J

    .line 349
    .line 350
    iput v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->k:I

    .line 351
    .line 352
    invoke-static {v1, v5, v6, v9, v7}, Lcom/moloco/sdk/internal/publisher/nativead/c;->e(Lcom/moloco/sdk/internal/publisher/nativead/c;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    if-ne v1, v8, :cond_8

    .line 357
    .line 358
    return-object v8

    .line 359
    :cond_8
    move-object v9, v0

    .line 360
    move-wide v5, v3

    .line 361
    move-object v4, v1

    .line 362
    :goto_2
    invoke-static {v4}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-nez v0, :cond_b

    .line 367
    .line 368
    move-object v10, v4

    .line 369
    check-cast v10, Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 370
    .line 371
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->l:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 372
    .line 373
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-object v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->o:Lcom/moloco/sdk/internal/publisher/s0;

    .line 382
    .line 383
    iput-object v9, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->i:Ljava/lang/Object;

    .line 384
    .line 385
    iput-object v10, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->j:Ljava/lang/Object;

    .line 386
    .line 387
    const/4 v2, 0x4

    .line 388
    iput v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$j;->k:I

    .line 389
    .line 390
    move-object v2, v10

    .line 391
    move-wide v4, v5

    .line 392
    move-object/from16 v6, p0

    .line 393
    .line 394
    invoke-virtual/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/c;->b(Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/nativead/model/a;Lcom/moloco/sdk/internal/publisher/s0;JLrs/c;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    if-ne v2, v8, :cond_9

    .line 399
    .line 400
    return-object v8

    .line 401
    :cond_9
    move-object v1, v9

    .line 402
    move-object v0, v10

    .line 403
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    if-nez v3, :cond_a

    .line 408
    .line 409
    check-cast v2, Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 410
    .line 411
    new-instance v3, Lcom/moloco/sdk/internal/publisher/nativead/c$b;

    .line 412
    .line 413
    invoke-direct {v3, v1, v0, v2}, Lcom/moloco/sdk/internal/publisher/nativead/c$b;-><init>(Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;Lcom/moloco/sdk/internal/publisher/nativead/model/d;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    return-object v0

    .line 425
    :cond_a
    invoke-static {v3}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0

    .line 438
    :cond_b
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :cond_c
    invoke-static {v6}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    return-object v0
.end method
