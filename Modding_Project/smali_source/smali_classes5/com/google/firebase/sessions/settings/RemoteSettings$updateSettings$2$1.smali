.class final Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RemoteSettings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/RemoteSettings;->c(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/json/JSONObject;",
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
    c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1"
    f = "RemoteSettings.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Lcom/google/firebase/sessions/settings/RemoteSettings;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/RemoteSettings;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->j:Lcom/google/firebase/sessions/settings/RemoteSettings;

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
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->j:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lorg/json/JSONObject;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->i(Lorg/json/JSONObject;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "cache_duration"

    .line 4
    .line 5
    const-string v2, "session_timeout_seconds"

    .line 6
    .line 7
    const-string v3, "sampling_rate"

    .line 8
    .line 9
    const-string v4, "sessions_enabled"

    .line 10
    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget v6, v1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->h:I

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v7, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v6, v1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lorg/json/JSONObject;

    .line 41
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v9, "Fetched settings: "

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string v9, "FirebaseSessions"

    .line 60
    .line 61
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string v8, "app_quality"

    .line 65
    .line 66
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const/4 v11, 0x0

    .line 71
    if-eqz v10, :cond_6

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v8, "null cannot be cast to non-null type org.json.JSONObject"

    .line 78
    .line 79
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v6, Lorg/json/JSONObject;

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_2

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    move-object v4, v0

    .line 99
    move-object v0, v11

    .line 100
    move-object v2, v0

    .line 101
    move-object v3, v2

    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_2
    move-object v4, v11

    .line 105
    :goto_0
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_3

    .line 110
    .line 111
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/lang/Double;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    move-object v2, v11

    .line 120
    move-object v3, v2

    .line 121
    move-object v11, v4

    .line 122
    move-object v4, v0

    .line 123
    move-object v0, v3

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    move-object v3, v11

    .line 126
    :goto_1
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_4

    .line 131
    .line 132
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Integer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_2
    move-exception v0

    .line 140
    move-object v2, v11

    .line 141
    move-object v11, v4

    .line 142
    move-object v4, v0

    .line 143
    move-object v0, v2

    .line 144
    goto :goto_4

    .line 145
    :cond_4
    move-object v2, v11

    .line 146
    :goto_2
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Integer;

    .line 157
    .line 158
    move-object v11, v0

    .line 159
    goto :goto_3

    .line 160
    :catch_3
    move-exception v0

    .line 161
    move-object/from16 v18, v4

    .line 162
    .line 163
    move-object v4, v0

    .line 164
    move-object v0, v11

    .line 165
    move-object/from16 v11, v18

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    .line 170
    move-object v15, v2

    .line 171
    move-object v14, v3

    .line 172
    move-object v13, v4

    .line 173
    goto :goto_5

    .line 174
    :goto_4
    const-string v6, "Error parsing the configs remotely fetched: "

    .line 175
    .line 176
    invoke-static {v9, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-object v15, v2

    .line 184
    move-object v14, v3

    .line 185
    move-object v13, v11

    .line 186
    move-object v11, v0

    .line 187
    goto :goto_5

    .line 188
    :cond_6
    move-object v13, v11

    .line 189
    move-object v14, v13

    .line 190
    move-object v15, v14

    .line 191
    :goto_5
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->j:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lm9/g;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v11, :cond_7

    .line 198
    .line 199
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    goto :goto_6

    .line 204
    :cond_7
    invoke-static {}, Lcom/google/firebase/sessions/settings/RemoteSettings;->e()Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/google/firebase/sessions/settings/RemoteSettings$a;->a()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    :goto_6
    iget-object v3, v1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->j:Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 213
    .line 214
    invoke-static {v3}, Lcom/google/firebase/sessions/settings/RemoteSettings;->h(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lj9/m0;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-interface {v3}, Lj9/m0;->a()Lcom/google/firebase/sessions/k;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/google/firebase/sessions/k;->a()J

    .line 223
    .line 224
    .line 225
    move-result-wide v3

    .line 226
    new-instance v6, Lcom/google/firebase/sessions/settings/a;

    .line 227
    .line 228
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v16

    .line 232
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v17

    .line 236
    move-object v12, v6

    .line 237
    invoke-direct/range {v12 .. v17}, Lcom/google/firebase/sessions/settings/a;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 238
    .line 239
    .line 240
    iput v7, v1, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;->h:I

    .line 241
    .line 242
    invoke-interface {v0, v6, v1}, Lm9/g;->a(Lcom/google/firebase/sessions/settings/a;Lrs/c;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-ne v0, v5, :cond_8

    .line 247
    .line 248
    return-object v5

    .line 249
    :cond_8
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 250
    .line 251
    return-object v0
.end method
