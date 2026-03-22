.class public final Lcom/moloco/sdk/internal/services/init/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/init/d;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInitApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,145:1\n332#2:146\n225#2:147\n99#2,2:148\n22#2:150\n*S KotlinDebug\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl\n*L\n73#1:146\n73#1:147\n73#1:148,2\n73#1:150\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/usertracker/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:J

.field public final f:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/x;Lcom/moloco/sdk/internal/services/usertracker/e;Ljava/lang/String;Ljava/lang/String;JLio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/usertracker/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceInfoService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appInfoService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "userTrackerService"

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "sdkVersion"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "endpoint"

    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "httpClient"

    .line 28
    .line 29
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/e;->a:Lcom/moloco/sdk/internal/services/j0;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/e;->b:Lcom/moloco/sdk/internal/services/x;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/e;->c:Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/init/e;->d:Ljava/lang/String;

    .line 42
    .line 43
    iput-wide p6, p0, Lcom/moloco/sdk/internal/services/init/e;->e:J

    .line 44
    .line 45
    iput-object p8, p0, Lcom/moloco/sdk/internal/services/init/e;->f:Lio/ktor/client/HttpClient;

    .line 46
    .line 47
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/e;->g:Landroid/net/Uri;

    .line 52
    .line 53
    return-void
.end method

.method public static final c(Lcom/moloco/sdk/internal/services/init/e;Lcom/moloco/sdk/internal/services/i0;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/w;Lwr/g;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$headers"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/init/e;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/i0;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p4, p0, p1, p2}, Lcom/moloco/sdk/internal/r;->a(Lwr/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/services/w;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "X-Moloco-App-Bundle"

    .line 20
    .line 21
    invoke-virtual {p4, p1, p0}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/MediationInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
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
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    instance-of v3, v0, Lcom/moloco/sdk/internal/services/init/e$a;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lcom/moloco/sdk/internal/services/init/e$a;

    .line 13
    .line 14
    iget v4, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/moloco/sdk/internal/services/init/e$a;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lcom/moloco/sdk/internal/services/init/e$a;-><init>(Lcom/moloco/sdk/internal/services/init/e;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lcom/moloco/sdk/internal/services/init/e$a;->o:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-eq v5, v8, :cond_3

    .line 46
    .line 47
    if-eq v5, v7, :cond_2

    .line 48
    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    iget-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lcom/moloco/sdk/acm/e;

    .line 54
    .line 55
    iget-object v4, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcom/moloco/sdk/acm/recorder/a;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lcom/moloco/sdk/internal/services/init/e;

    .line 62
    .line 63
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catch_0
    move-exception v0

    .line 69
    move-object v5, v4

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    iget-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/moloco/sdk/acm/e;

    .line 83
    .line 84
    iget-object v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v5, Lcom/moloco/sdk/acm/recorder/a;

    .line 87
    .line 88
    iget-object v7, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v7, Lcom/moloco/sdk/internal/services/init/e;

    .line 91
    .line 92
    :try_start_1
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    move-object v13, v7

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :catch_1
    move-exception v0

    .line 99
    move-object v3, v7

    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_3
    iget-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->n:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Lcom/moloco/sdk/internal/services/w;

    .line 105
    .line 106
    iget-object v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->m:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v5, Lcom/moloco/sdk/internal/services/i0;

    .line 109
    .line 110
    iget-object v8, v3, Lcom/moloco/sdk/internal/services/init/e$a;->l:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v8, Lcom/moloco/sdk/acm/e;

    .line 113
    .line 114
    iget-object v10, v3, Lcom/moloco/sdk/internal/services/init/e$a;->k:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v10, Lcom/moloco/sdk/acm/recorder/a;

    .line 117
    .line 118
    iget-object v11, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v11, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 121
    .line 122
    iget-object v12, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v12, Ljava/lang/String;

    .line 125
    .line 126
    iget-object v13, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v13, Lcom/moloco/sdk/internal/services/init/e;

    .line 129
    .line 130
    :try_start_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .line 132
    .line 133
    move-object/from16 v21, v10

    .line 134
    .line 135
    move-object v10, v2

    .line 136
    move-object/from16 v2, v21

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_2
    move-exception v0

    .line 140
    move-object v2, v10

    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/d;->d:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v2, v0}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :try_start_3
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/init/e;->a:Lcom/moloco/sdk/internal/services/j0;

    .line 157
    .line 158
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v10, v1, Lcom/moloco/sdk/internal/services/init/e;->b:Lcom/moloco/sdk/internal/services/x;

    .line 163
    .line 164
    invoke-interface {v10}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    iget-object v11, v1, Lcom/moloco/sdk/internal/services/init/e;->c:Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 169
    .line 170
    iput-object v1, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 171
    .line 172
    move-object/from16 v12, p1

    .line 173
    .line 174
    iput-object v12, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 175
    .line 176
    move-object/from16 v13, p2

    .line 177
    .line 178
    iput-object v13, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->k:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->l:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v0, v3, Lcom/moloco/sdk/internal/services/init/e$a;->m:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v10, v3, Lcom/moloco/sdk/internal/services/init/e$a;->n:Ljava/lang/Object;

    .line 187
    .line 188
    iput v8, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 189
    .line 190
    invoke-interface {v11, v3}, Lcom/moloco/sdk/internal/services/usertracker/e;->c(Lrs/c;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 194
    if-ne v8, v4, :cond_5

    .line 195
    .line 196
    return-object v4

    .line 197
    :cond_5
    move-object v11, v13

    .line 198
    move-object v13, v1

    .line 199
    move-object/from16 v21, v5

    .line 200
    .line 201
    move-object v5, v0

    .line 202
    move-object v0, v8

    .line 203
    move-object/from16 v8, v21

    .line 204
    .line 205
    :goto_1
    :try_start_4
    check-cast v0, Ljava/lang/String;

    .line 206
    .line 207
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 208
    .line 209
    const-string v15, "InitApi"

    .line 210
    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v7, "Requesting Init with appKey: "

    .line 217
    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v7, ", mref: "

    .line 225
    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v7, ", url: "

    .line 233
    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v7, v13, Lcom/moloco/sdk/internal/services/init/e;->g:Landroid/net/Uri;

    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v16

    .line 246
    const/16 v18, 0x4

    .line 247
    .line 248
    const/16 v19, 0x0

    .line 249
    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    invoke-static/range {v14 .. v19}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v6, v13, Lcom/moloco/sdk/internal/services/init/e;->f:Lio/ktor/client/HttpClient;

    .line 256
    .line 257
    iget-object v7, v13, Lcom/moloco/sdk/internal/services/init/e;->g:Landroid/net/Uri;

    .line 258
    .line 259
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    const-string v14, "app_key"

    .line 264
    .line 265
    invoke-virtual {v7, v14, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const-string v12, "rid"

    .line 270
    .line 271
    invoke-virtual {v7, v12, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string/jumbo v7, "toString(...)"

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v7, Lio/ktor/client/request/HttpRequestBuilder;

    .line 290
    .line 291
    invoke-direct {v7}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-static {v7, v0}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lcom/moloco/sdk/internal/services/init/f;

    .line 298
    .line 299
    invoke-direct {v0, v13, v5, v11, v10}, Lcom/moloco/sdk/internal/services/init/f;-><init>(Lcom/moloco/sdk/internal/services/init/e;Lcom/moloco/sdk/internal/services/i0;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/w;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v7, v0}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

    .line 303
    .line 304
    .line 305
    iget-wide v10, v13, Lcom/moloco/sdk/internal/services/init/e;->e:J

    .line 306
    .line 307
    invoke-static {v7, v10, v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;->b(Lio/ktor/client/request/HttpRequestBuilder;J)V

    .line 308
    .line 309
    .line 310
    sget-object v0, Lwr/m;->b:Lwr/m$a;

    .line 311
    .line 312
    invoke-virtual {v0}, Lwr/m$a;->a()Lwr/m;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v7, v0}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 317
    .line 318
    .line 319
    new-instance v0, Lio/ktor/client/statement/HttpStatement;

    .line 320
    .line 321
    invoke-direct {v0, v7, v6}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 322
    .line 323
    .line 324
    iput-object v13, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v8, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v9, v3, Lcom/moloco/sdk/internal/services/init/e$a;->k:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v9, v3, Lcom/moloco/sdk/internal/services/init/e$a;->l:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v9, v3, Lcom/moloco/sdk/internal/services/init/e$a;->m:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v9, v3, Lcom/moloco/sdk/internal/services/init/e$a;->n:Ljava/lang/Object;

    .line 337
    .line 338
    const/4 v5, 0x2

    .line 339
    iput v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 340
    .line 341
    invoke-virtual {v0, v3}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 345
    if-ne v0, v4, :cond_6

    .line 346
    .line 347
    return-object v4

    .line 348
    :cond_6
    move-object v5, v2

    .line 349
    move-object v2, v8

    .line 350
    :goto_2
    :try_start_5
    check-cast v0, Ltr/c;

    .line 351
    .line 352
    invoke-virtual {v0}, Ltr/c;->e()Lwr/o;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    sget-object v7, Lwr/o;->c:Lwr/o$a;

    .line 357
    .line 358
    invoke-virtual {v7}, Lwr/o$a;->B()Lwr/o;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    if-eqz v8, :cond_8

    .line 367
    .line 368
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 369
    .line 370
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    const-string/jumbo v7, "success"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v6, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-interface {v5, v6}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 382
    .line 383
    .line 384
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-interface {v6}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    new-instance v7, Lcom/moloco/sdk/internal/services/init/e$b;

    .line 393
    .line 394
    invoke-direct {v7, v0, v9}, Lcom/moloco/sdk/internal/services/init/e$b;-><init>(Ltr/c;Lrs/c;)V

    .line 395
    .line 396
    .line 397
    iput-object v13, v3, Lcom/moloco/sdk/internal/services/init/e$a;->h:Ljava/lang/Object;

    .line 398
    .line 399
    iput-object v5, v3, Lcom/moloco/sdk/internal/services/init/e$a;->i:Ljava/lang/Object;

    .line 400
    .line 401
    iput-object v2, v3, Lcom/moloco/sdk/internal/services/init/e$a;->j:Ljava/lang/Object;

    .line 402
    .line 403
    const/4 v0, 0x3

    .line 404
    iput v0, v3, Lcom/moloco/sdk/internal/services/init/e$a;->q:I

    .line 405
    .line 406
    invoke-static {v6, v7, v3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 410
    if-ne v0, v4, :cond_7

    .line 411
    .line 412
    return-object v4

    .line 413
    :cond_7
    move-object v4, v5

    .line 414
    move-object v3, v13

    .line 415
    :goto_3
    :try_start_6
    new-instance v5, Lcom/moloco/sdk/internal/g0$b;

    .line 416
    .line 417
    invoke-direct {v5, v0}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 418
    .line 419
    .line 420
    goto/16 :goto_5

    .line 421
    .line 422
    :catch_3
    move-exception v0

    .line 423
    move-object v8, v2

    .line 424
    move-object v13, v3

    .line 425
    move-object v2, v4

    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :catch_4
    move-exception v0

    .line 429
    move-object v3, v13

    .line 430
    goto/16 :goto_6

    .line 431
    .line 432
    :cond_8
    :try_start_7
    invoke-virtual {v7}, Lwr/o$a;->y()Lwr/o;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 440
    const-string v3, "failure"

    .line 441
    .line 442
    if-eqz v0, :cond_9

    .line 443
    .line 444
    :try_start_8
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v2, v0, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 455
    .line 456
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v6}, Lwr/o;->e0()I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-interface {v5, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 473
    .line 474
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v3, "http status "

    .line 481
    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v3, ": App not found or AppKey is not correct"

    .line 489
    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v16

    .line 497
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 498
    .line 499
    const-string v15, "InitApi"

    .line 500
    .line 501
    const/16 v19, 0xc

    .line 502
    .line 503
    const/16 v20, 0x0

    .line 504
    .line 505
    const/16 v17, 0x0

    .line 506
    .line 507
    const/16 v18, 0x0

    .line 508
    .line 509
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 513
    .line 514
    new-instance v3, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 515
    .line 516
    invoke-virtual {v6}, Lwr/o;->e0()I

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    invoke-direct {v3, v4}, Lcom/moloco/sdk/internal/services/init/i$b;-><init>(I)V

    .line 521
    .line 522
    .line 523
    invoke-direct {v0, v3}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :goto_4
    move-object v5, v0

    .line 527
    goto :goto_5

    .line 528
    :cond_9
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v2, v0, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 539
    .line 540
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-virtual {v6}, Lwr/o;->e0()I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-interface {v5, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 557
    .line 558
    .line 559
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 560
    .line 561
    const-string v15, "InitApi"

    .line 562
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    .line 568
    const-string v3, "SDK Init failed with status code: "

    .line 569
    .line 570
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v16

    .line 580
    const/16 v19, 0xc

    .line 581
    .line 582
    const/16 v20, 0x0

    .line 583
    .line 584
    const/16 v17, 0x0

    .line 585
    .line 586
    const/16 v18, 0x0

    .line 587
    .line 588
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    new-instance v0, Lcom/moloco/sdk/internal/g0$a;

    .line 592
    .line 593
    new-instance v3, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 594
    .line 595
    invoke-virtual {v6}, Lwr/o;->e0()I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    invoke-direct {v3, v4}, Lcom/moloco/sdk/internal/services/init/i$b;-><init>(I)V

    .line 600
    .line 601
    .line 602
    invoke-direct {v0, v3}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 603
    .line 604
    .line 605
    goto :goto_4

    .line 606
    :goto_5
    return-object v5

    .line 607
    :goto_6
    move-object v8, v2

    .line 608
    move-object v13, v3

    .line 609
    move-object v2, v5

    .line 610
    goto :goto_7

    .line 611
    :catch_5
    move-exception v0

    .line 612
    goto :goto_7

    .line 613
    :catch_6
    move-exception v0

    .line 614
    move-object v13, v1

    .line 615
    move-object v8, v5

    .line 616
    :goto_7
    invoke-virtual {v13, v0, v8, v2}, Lcom/moloco/sdk/internal/services/init/e;->b(Ljava/lang/Exception;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/g0;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    return-object v0
.end method

.method public final b(Ljava/lang/Exception;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/g0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/moloco/sdk/acm/e;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/ktor/client/plugins/HttpRequestTimeoutException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/moloco/sdk/internal/services/init/b;->a:Lcom/moloco/sdk/internal/services/init/b;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/moloco/sdk/internal/services/init/b;->d:Lcom/moloco/sdk/internal/services/init/b;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p1, Ljava/net/SocketException;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lcom/moloco/sdk/internal/services/init/b;->c:Lcom/moloco/sdk/internal/services/init/b;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object v0, Lcom/moloco/sdk/internal/services/init/b;->b:Lcom/moloco/sdk/internal/services/init/b;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    sget-object v0, Lcom/moloco/sdk/internal/services/init/b;->f:Lcom/moloco/sdk/internal/services/init/b;

    .line 30
    .line 31
    :goto_0
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v2, "InitApi"

    .line 37
    .line 38
    const-string v3, "SDK Init failed with client exception"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v4, p1

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "failure"

    .line 52
    .line 53
    invoke-virtual {p2, p1, v1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object p2, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, p2, v1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p3, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 75
    .line 76
    new-instance p2, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 77
    .line 78
    invoke-direct {p2, v0}, Lcom/moloco/sdk/internal/services/init/i$a;-><init>(Lcom/moloco/sdk/internal/services/init/b;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object p1
.end method
