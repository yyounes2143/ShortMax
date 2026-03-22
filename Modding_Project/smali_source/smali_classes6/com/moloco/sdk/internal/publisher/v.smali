.class public final Lcom/moloco/sdk/internal/publisher/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/v$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/moloco/sdk/internal/publisher/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I

.field public static final h:Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/publisher/Initialization;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/publisher/Initialization;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/moloco/sdk/Init$SDKInitResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/internal/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/v;->f:Lcom/moloco/sdk/internal/publisher/v$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/v;->g:I

    .line 12
    .line 13
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 14
    .line 15
    sget-object v1, Lcom/moloco/sdk/publisher/Initialization;->SUCCESS:Lcom/moloco/sdk/publisher/Initialization;

    .line 16
    .line 17
    const-string v2, "Already Initialized"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/MolocoInitStatus;-><init>(Lcom/moloco/sdk/publisher/Initialization;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/moloco/sdk/internal/publisher/v;->h:Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 23
    .line 24
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 25
    .line 26
    const-string v2, "Initialized"

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/publisher/MolocoInitStatus;-><init>(Lcom/moloco/sdk/publisher/Initialization;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/moloco/sdk/internal/publisher/v;->i:Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "timeProviderService"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/v;->a:Lcom/moloco/sdk/internal/services/j;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->b:Lkt/e;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->c:Lkt/i;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/v;->e:Lkt/e;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic a()Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/publisher/v;->h:Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/publisher/v;Lcom/moloco/sdk/internal/g0;JLcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/acm/e;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/moloco/sdk/internal/publisher/v;->c(Lcom/moloco/sdk/internal/g0;JLcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/acm/e;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f()Lcom/moloco/sdk/publisher/MolocoInitStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/publisher/v;->i:Lcom/moloco/sdk/publisher/MolocoInitStatus;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final c(Lcom/moloco/sdk/internal/g0;JLcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/acm/e;Lrs/c;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;J",
            "Lcom/moloco/sdk/internal/services/init/m;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/acm/e;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    instance-of v8, v7, Lcom/moloco/sdk/internal/publisher/v$d;

    .line 16
    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    move-object v8, v7

    .line 20
    check-cast v8, Lcom/moloco/sdk/internal/publisher/v$d;

    .line 21
    .line 22
    iget v9, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 23
    .line 24
    const/high16 v10, -0x80000000

    .line 25
    .line 26
    and-int v11, v9, v10

    .line 27
    .line 28
    if-eqz v11, :cond_0

    .line 29
    .line 30
    sub-int/2addr v9, v10

    .line 31
    iput v9, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v8, Lcom/moloco/sdk/internal/publisher/v$d;

    .line 35
    .line 36
    invoke-direct {v8, v0, v7}, Lcom/moloco/sdk/internal/publisher/v$d;-><init>(Lcom/moloco/sdk/internal/publisher/v;Lrs/c;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v7, v8, Lcom/moloco/sdk/internal/publisher/v$d;->n:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    iget v10, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 46
    .line 47
    const/4 v12, 0x4

    .line 48
    const/4 v13, 0x3

    .line 49
    const/4 v14, 0x2

    .line 50
    const/4 v15, 0x1

    .line 51
    const/4 v11, 0x0

    .line 52
    if-eqz v10, :cond_6

    .line 53
    .line 54
    if-eq v10, v15, :cond_5

    .line 55
    .line 56
    if-eq v10, v14, :cond_4

    .line 57
    .line 58
    if-eq v10, v13, :cond_3

    .line 59
    .line 60
    if-eq v10, v12, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    if-ne v10, v1, :cond_1

    .line 64
    .line 65
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_2
    iget-object v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 81
    .line 82
    iget-object v2, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lcom/moloco/sdk/acm/e;

    .line 85
    .line 86
    iget-object v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lcom/moloco/sdk/acm/recorder/a;

    .line 89
    .line 90
    iget-object v4, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Lcom/moloco/sdk/internal/publisher/v;

    .line 93
    .line 94
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_3
    iget-wide v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->m:J

    .line 100
    .line 101
    iget-object v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->l:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 104
    .line 105
    iget-object v4, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v4, Lcom/moloco/sdk/acm/e;

    .line 108
    .line 109
    iget-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Lcom/moloco/sdk/acm/recorder/a;

    .line 112
    .line 113
    iget-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v6, Lcom/moloco/sdk/internal/services/init/m;

    .line 116
    .line 117
    iget-object v10, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v10, Lcom/moloco/sdk/internal/publisher/v;

    .line 120
    .line 121
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object/from16 v21, v6

    .line 125
    .line 126
    move-object v6, v4

    .line 127
    move-object/from16 v4, v21

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_4
    iget-object v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Lcom/moloco/sdk/acm/e;

    .line 134
    .line 135
    iget-object v2, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Lcom/moloco/sdk/acm/recorder/a;

    .line 138
    .line 139
    iget-object v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, Lcom/moloco/sdk/internal/g0;

    .line 142
    .line 143
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_5
    iget-wide v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->m:J

    .line 149
    .line 150
    iget-object v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v3, Lcom/moloco/sdk/acm/e;

    .line 153
    .line 154
    iget-object v4, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Lcom/moloco/sdk/acm/recorder/a;

    .line 157
    .line 158
    iget-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v5, Lcom/moloco/sdk/internal/services/init/m;

    .line 161
    .line 162
    iget-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Lcom/moloco/sdk/internal/g0;

    .line 165
    .line 166
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    move-object/from16 v21, v6

    .line 170
    .line 171
    move-object v6, v3

    .line 172
    move-wide v2, v1

    .line 173
    move-object/from16 v1, v21

    .line 174
    .line 175
    move-object/from16 v22, v5

    .line 176
    .line 177
    move-object v5, v4

    .line 178
    move-object/from16 v4, v22

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    invoke-static {v7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    instance-of v7, v1, Lcom/moloco/sdk/internal/g0$a;

    .line 185
    .line 186
    if-eqz v7, :cond_b

    .line 187
    .line 188
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/v;->b:Lkt/e;

    .line 189
    .line 190
    sget-object v10, Lcom/moloco/sdk/publisher/Initialization;->FAILURE:Lcom/moloco/sdk/publisher/Initialization;

    .line 191
    .line 192
    iput-object v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v4, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 195
    .line 196
    iput-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 199
    .line 200
    iput-wide v2, v8, Lcom/moloco/sdk/internal/publisher/v$d;->m:J

    .line 201
    .line 202
    iput v15, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 203
    .line 204
    invoke-interface {v7, v10, v8}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    if-ne v7, v9, :cond_7

    .line 209
    .line 210
    return-object v9

    .line 211
    :cond_7
    :goto_1
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 212
    .line 213
    const/16 v10, 0xc

    .line 214
    .line 215
    const/4 v12, 0x0

    .line 216
    const-string v13, "InitializationHandler"

    .line 217
    .line 218
    const-string v15, "sdk init failed"

    .line 219
    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    move-object/from16 p1, v7

    .line 225
    .line 226
    move-object/from16 p2, v13

    .line 227
    .line 228
    move-object/from16 p3, v15

    .line 229
    .line 230
    move-object/from16 p4, v16

    .line 231
    .line 232
    move/from16 p5, v17

    .line 233
    .line 234
    move/from16 p6, v10

    .line 235
    .line 236
    move-object/from16 p7, v12

    .line 237
    .line 238
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    move-object v7, v1

    .line 242
    check-cast v7, Lcom/moloco/sdk/internal/g0$a;

    .line 243
    .line 244
    invoke-virtual {v7}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Lcom/moloco/sdk/internal/services/init/i;

    .line 249
    .line 250
    iput-object v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 251
    .line 252
    iput-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 253
    .line 254
    iput-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 255
    .line 256
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 257
    .line 258
    iput v14, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 259
    .line 260
    invoke-interface {v4, v7, v2, v3, v8}, Lcom/moloco/sdk/internal/services/init/m;->b(Lcom/moloco/sdk/internal/services/init/i;JLrs/c;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-ne v2, v9, :cond_8

    .line 265
    .line 266
    return-object v9

    .line 267
    :cond_8
    move-object v3, v1

    .line 268
    move-object v2, v5

    .line 269
    move-object v1, v6

    .line 270
    :goto_2
    check-cast v3, Lcom/moloco/sdk/internal/g0$a;

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lcom/moloco/sdk/internal/services/init/i;

    .line 277
    .line 278
    instance-of v4, v3, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 279
    .line 280
    const-string v5, "failure"

    .line 281
    .line 282
    if-eqz v4, :cond_9

    .line 283
    .line 284
    new-instance v4, Lcom/moloco/sdk/acm/b;

    .line 285
    .line 286
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->c:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 287
    .line 288
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-direct {v4, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 296
    .line 297
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    check-cast v3, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 302
    .line 303
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v4, v7, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-interface {v2, v4}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 316
    .line 317
    .line 318
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 319
    .line 320
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v1, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v1, v4, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-interface {v2, v1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_5

    .line 348
    .line 349
    :cond_9
    instance-of v4, v3, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 350
    .line 351
    if-eqz v4, :cond_a

    .line 352
    .line 353
    new-instance v4, Lcom/moloco/sdk/acm/b;

    .line 354
    .line 355
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->c:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 356
    .line 357
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-direct {v4, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 365
    .line 366
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    check-cast v3, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 371
    .line 372
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-virtual {v4, v7, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-interface {v2, v4}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 385
    .line 386
    .line 387
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 388
    .line 389
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v1, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v1, v4, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-interface {v2, v1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :cond_a
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 419
    .line 420
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 421
    .line 422
    .line 423
    throw v1

    .line 424
    :cond_b
    instance-of v7, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 425
    .line 426
    if-eqz v7, :cond_f

    .line 427
    .line 428
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 429
    .line 430
    const/16 v19, 0xc

    .line 431
    .line 432
    const/16 v20, 0x0

    .line 433
    .line 434
    const-string v15, "InitializationHandler"

    .line 435
    .line 436
    const-string v16, "sdk init success"

    .line 437
    .line 438
    const/16 v17, 0x0

    .line 439
    .line 440
    const/16 v18, 0x0

    .line 441
    .line 442
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    check-cast v1, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 452
    .line 453
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/v;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 454
    .line 455
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/v;->b:Lkt/e;

    .line 456
    .line 457
    sget-object v10, Lcom/moloco/sdk/publisher/Initialization;->SUCCESS:Lcom/moloco/sdk/publisher/Initialization;

    .line 458
    .line 459
    iput-object v0, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v4, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 462
    .line 463
    iput-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v1, v8, Lcom/moloco/sdk/internal/publisher/v$d;->l:Ljava/lang/Object;

    .line 468
    .line 469
    iput-wide v2, v8, Lcom/moloco/sdk/internal/publisher/v$d;->m:J

    .line 470
    .line 471
    iput v13, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 472
    .line 473
    invoke-interface {v7, v10, v8}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    if-ne v7, v9, :cond_c

    .line 478
    .line 479
    return-object v9

    .line 480
    :cond_c
    move-object v10, v0

    .line 481
    move-wide/from16 v21, v2

    .line 482
    .line 483
    move-object v3, v1

    .line 484
    move-wide/from16 v1, v21

    .line 485
    .line 486
    :goto_3
    iput-object v10, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v5, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 489
    .line 490
    iput-object v6, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 491
    .line 492
    iput-object v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 493
    .line 494
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->l:Ljava/lang/Object;

    .line 495
    .line 496
    iput v12, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 497
    .line 498
    invoke-interface {v4, v1, v2, v8}, Lcom/moloco/sdk/internal/services/init/m;->a(JLrs/c;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    if-ne v1, v9, :cond_d

    .line 503
    .line 504
    return-object v9

    .line 505
    :cond_d
    move-object v1, v3

    .line 506
    move-object v3, v5

    .line 507
    move-object v2, v6

    .line 508
    move-object v4, v10

    .line 509
    :goto_4
    new-instance v5, Lcom/moloco/sdk/acm/b;

    .line 510
    .line 511
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->b:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 512
    .line 513
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    invoke-direct {v5, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->e:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 521
    .line 522
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-virtual {v1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getCountryIso2Code()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    const-string v12, "getCountryIso2Code(...)"

    .line 531
    .line 532
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5, v7, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-interface {v3, v5}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 540
    .line 541
    .line 542
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 543
    .line 544
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    const-string/jumbo v7, "success"

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2, v5, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-virtual {v1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getCountryIso2Code()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v5, v6}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-interface {v3, v2}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v4, Lcom/moloco/sdk/internal/publisher/v;->e:Lkt/e;

    .line 574
    .line 575
    sget-object v3, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 576
    .line 577
    invoke-virtual {v3, v1}, Lcom/moloco/sdk/service_locator/b$f;->a(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/e;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->h:Ljava/lang/Object;

    .line 582
    .line 583
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->i:Ljava/lang/Object;

    .line 584
    .line 585
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->j:Ljava/lang/Object;

    .line 586
    .line 587
    iput-object v11, v8, Lcom/moloco/sdk/internal/publisher/v$d;->k:Ljava/lang/Object;

    .line 588
    .line 589
    const/4 v3, 0x5

    .line 590
    iput v3, v8, Lcom/moloco/sdk/internal/publisher/v$d;->p:I

    .line 591
    .line 592
    invoke-interface {v2, v1, v8}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    if-ne v1, v9, :cond_e

    .line 597
    .line 598
    return-object v9

    .line 599
    :cond_e
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 600
    .line 601
    return-object v1

    .line 602
    :cond_f
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 603
    .line 604
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 605
    .line 606
    .line 607
    throw v1
.end method

.method public final d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/init/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/internal/services/init/m;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v4, p4

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    instance-of v1, v0, Lcom/moloco/sdk/internal/publisher/v$e;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/moloco/sdk/internal/publisher/v$e;

    .line 13
    .line 14
    iget v2, v1, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 15
    .line 16
    const/high16 v3, -0x80000000

    .line 17
    .line 18
    and-int v5, v2, v3

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iput v2, v1, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 24
    .line 25
    :goto_0
    move-object v5, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lcom/moloco/sdk/internal/publisher/v$e;

    .line 28
    .line 29
    invoke-direct {v1, v6, v0}, Lcom/moloco/sdk/internal/publisher/v$e;-><init>(Lcom/moloco/sdk/internal/publisher/v;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v5, Lcom/moloco/sdk/internal/publisher/v$e;->k:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget v1, v5, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    const/4 v3, 0x2

    .line 43
    const/4 v8, 0x1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    if-eq v1, v8, :cond_3

    .line 47
    .line 48
    if-eq v1, v3, :cond_2

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    iget-object v1, v5, Lcom/moloco/sdk/internal/publisher/v$e;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    iget-object v1, v5, Lcom/moloco/sdk/internal/publisher/v$e;->j:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 77
    .line 78
    iget-object v2, v5, Lcom/moloco/sdk/internal/publisher/v$e;->i:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lcom/moloco/sdk/acm/recorder/a;

    .line 81
    .line 82
    iget-object v4, v5, Lcom/moloco/sdk/internal/publisher/v$e;->h:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Lcom/moloco/sdk/internal/publisher/v;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 94
    .line 95
    const/16 v14, 0xc

    .line 96
    .line 97
    const/4 v15, 0x0

    .line 98
    const-string v10, "InitializationHandler"

    .line 99
    .line 100
    const-string v11, "initialize()"

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    const/4 v13, 0x0

    .line 104
    move-object v9, v0

    .line 105
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 109
    .line 110
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/a;->a:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 111
    .line 112
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-direct {v1, v9}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v4, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/moloco/sdk/internal/publisher/v;->i()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    const/16 v14, 0xc

    .line 129
    .line 130
    const/4 v15, 0x0

    .line 131
    const-string v10, "InitializationHandler"

    .line 132
    .line 133
    const-string v11, "PersistentHttpRequest is not available, failing to initialize"

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    move-object v9, v0

    .line 138
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 142
    .line 143
    sget-object v1, Lcom/moloco/sdk/internal/services/init/b;->e:Lcom/moloco/sdk/internal/services/init/b;

    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/init/i$a;-><init>(Lcom/moloco/sdk/internal/services/init/b;)V

    .line 146
    .line 147
    .line 148
    iput-object v6, v5, Lcom/moloco/sdk/internal/publisher/v$e;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v4, v5, Lcom/moloco/sdk/internal/publisher/v$e;->i:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v0, v5, Lcom/moloco/sdk/internal/publisher/v$e;->j:Ljava/lang/Object;

    .line 153
    .line 154
    iput v8, v5, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 155
    .line 156
    const-wide/16 v1, 0x0

    .line 157
    .line 158
    move-object/from16 v8, p3

    .line 159
    .line 160
    invoke-interface {v8, v0, v1, v2, v5}, Lcom/moloco/sdk/internal/services/init/m;->b(Lcom/moloco/sdk/internal/services/init/i;JLrs/c;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-ne v1, v7, :cond_5

    .line 165
    .line 166
    return-object v7

    .line 167
    :cond_5
    move-object v1, v0

    .line 168
    move-object v2, v4

    .line 169
    move-object v4, v6

    .line 170
    :goto_2
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 171
    .line 172
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/a;->c:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-direct {v0, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 182
    .line 183
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v0, v8, v9}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v4, Lcom/moloco/sdk/internal/publisher/v;->b:Lkt/e;

    .line 203
    .line 204
    sget-object v2, Lcom/moloco/sdk/publisher/Initialization;->FAILURE:Lcom/moloco/sdk/publisher/Initialization;

    .line 205
    .line 206
    iput-object v1, v5, Lcom/moloco/sdk/internal/publisher/v$e;->h:Ljava/lang/Object;

    .line 207
    .line 208
    const/4 v4, 0x0

    .line 209
    iput-object v4, v5, Lcom/moloco/sdk/internal/publisher/v$e;->i:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v4, v5, Lcom/moloco/sdk/internal/publisher/v$e;->j:Ljava/lang/Object;

    .line 212
    .line 213
    iput v3, v5, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 214
    .line 215
    invoke-interface {v0, v2, v5}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v7, :cond_6

    .line 220
    .line 221
    return-object v7

    .line 222
    :cond_6
    :goto_3
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 223
    .line 224
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_7
    move-object/from16 v8, p3

    .line 229
    .line 230
    iput v2, v5, Lcom/moloco/sdk/internal/publisher/v$e;->m:I

    .line 231
    .line 232
    move-object/from16 v0, p0

    .line 233
    .line 234
    move-object/from16 v1, p1

    .line 235
    .line 236
    move-object/from16 v2, p2

    .line 237
    .line 238
    move-object/from16 v3, p3

    .line 239
    .line 240
    move-object/from16 v4, p4

    .line 241
    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/v;->g(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-ne v0, v7, :cond_8

    .line 247
    .line 248
    return-object v7

    .line 249
    :cond_8
    :goto_4
    return-object v0
.end method

.method public final e(Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/internal/publisher/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/v$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/v$b;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/v$b;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/v$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/publisher/v$b;-><init>(Lcom/moloco/sdk/internal/publisher/v;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/v$b;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/v$b;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 54
    .line 55
    const/16 v9, 0xc

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const-string v5, "InitializationHandler"

    .line 59
    .line 60
    const-string v6, "Moloco SDK awaiting init to receive AdFactory"

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/v;->e:Lkt/e;

    .line 68
    .line 69
    new-instance v2, Lcom/moloco/sdk/internal/publisher/v$c;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct {v2, v4}, Lcom/moloco/sdk/internal/publisher/v$c;-><init>(Lrs/c;)V

    .line 73
    .line 74
    .line 75
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/v$b;->j:I

    .line 76
    .line 77
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_3

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    const-string v0, "null cannot be cast to non-null type com.moloco.sdk.internal.AdFactory"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast p1, Lcom/moloco/sdk/internal/e;

    .line 90
    .line 91
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 92
    .line 93
    const/16 v5, 0xc

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const-string v1, "InitializationHandler"

    .line 97
    .line 98
    const-string v2, "Moloco SDK init completed, AdFactory received"

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p1
.end method

.method public final g(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/internal/services/init/m;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v8, Lcom/moloco/sdk/internal/publisher/v$f;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p4

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/v$f;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/publisher/v;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final h(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/v;->e:Lkt/e;

    .line 5
    .line 6
    invoke-interface {v1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/v;->b:Lkt/e;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$f;->c()Lcom/moloco/sdk/internal/services/init/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/services/init/j;->a(Lrs/c;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/v;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final j()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/publisher/Initialization;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->c:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->d:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lcom/moloco/sdk/internal/services/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/v;->a:Lcom/moloco/sdk/internal/services/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method
