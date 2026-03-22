.class public final Lad-manager/b/s;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:Ljava/lang/Throwable;

.field public i:I

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(JJLkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lad-manager/b/s;->j:J

    .line 2
    .line 3
    iput-wide p3, p0, Lad-manager/b/s;->k:J

    .line 4
    .line 5
    iput-object p5, p0, Lad-manager/b/s;->l:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7

    .line 1
    new-instance p1, Lad-manager/b/s;

    .line 2
    .line 3
    iget-wide v1, p0, Lad-manager/b/s;->j:J

    .line 4
    .line 5
    iget-wide v3, p0, Lad-manager/b/s;->k:J

    .line 6
    .line 7
    iget-object v5, p0, Lad-manager/b/s;->l:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Lad-manager/b/s;-><init>(JJLkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/b/s;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/b/s;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/b/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string v0, "runAfterCCPAConfigured catch exception -> "

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lad-manager/b/s;->i:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "ms"

    .line 14
    .line 15
    const-string v8, "runAfterCCPAConfigured end -> runAfterCCPA, cost="

    .line 16
    .line 17
    const-string v9, "CCPAManager"

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    if-eq v2, v6, :cond_2

    .line 23
    .line 24
    if-eq v2, v5, :cond_1

    .line 25
    .line 26
    if-eq v2, v4, :cond_1

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_0
    iget-object v0, p0, Lad-manager/b/s;->h:Ljava/lang/Throwable;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    move-object v0, p1

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :try_start_1
    iget-wide v11, p0, Lad-manager/b/s;->j:J

    .line 64
    .line 65
    new-instance p1, Lad-manager/b/q;

    .line 66
    .line 67
    invoke-direct {p1, v10}, Lad-manager/b/q;-><init>(Lrs/c;)V

    .line 68
    .line 69
    .line 70
    iput v6, p0, Lad-manager/b/s;->i:I

    .line 71
    .line 72
    invoke-static {v11, v12, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-ne p1, v1, :cond_4

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_4
    :goto_0
    sget-object p1, Lga/a;->a:Lga/a;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    iget-wide v11, p0, Lad-manager/b/s;->k:J

    .line 91
    .line 92
    sub-long/2addr v2, v11

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v9, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lad-manager/b/r;

    .line 111
    .line 112
    iget-object v2, p0, Lad-manager/b/s;->l:Lkotlin/jvm/functions/Function0;

    .line 113
    .line 114
    invoke-direct {v0, v2, v10}, Lad-manager/b/r;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 115
    .line 116
    .line 117
    iput v5, p0, Lad-manager/b/s;->i:I

    .line 118
    .line 119
    invoke-static {p1, v0, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v1, :cond_5

    .line 124
    .line 125
    return-object v1

    .line 126
    :goto_1
    :try_start_2
    sget-object v2, Lga/a;->a:Lga/a;

    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v2, v9, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    iget-wide v11, p0, Lad-manager/b/s;->k:J

    .line 157
    .line 158
    sub-long/2addr v5, v11

    .line 159
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v2, v9, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Lad-manager/b/r;

    .line 177
    .line 178
    iget-object v2, p0, Lad-manager/b/s;->l:Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    invoke-direct {v0, v2, v10}, Lad-manager/b/r;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 181
    .line 182
    .line 183
    iput v4, p0, Lad-manager/b/s;->i:I

    .line 184
    .line 185
    invoke-static {p1, v0, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-ne p1, v1, :cond_5

    .line 190
    .line 191
    return-object v1

    .line 192
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    return-object p1

    .line 195
    :goto_3
    sget-object p1, Lga/a;->a:Lga/a;

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    iget-wide v11, p0, Lad-manager/b/s;->k:J

    .line 207
    .line 208
    sub-long/2addr v4, v11

    .line 209
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, v9, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance v2, Lad-manager/b/r;

    .line 227
    .line 228
    iget-object v4, p0, Lad-manager/b/s;->l:Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    invoke-direct {v2, v4, v10}, Lad-manager/b/r;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lad-manager/b/s;->h:Ljava/lang/Throwable;

    .line 234
    .line 235
    iput v3, p0, Lad-manager/b/s;->i:I

    .line 236
    .line 237
    invoke-static {p1, v2, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-ne p1, v1, :cond_6

    .line 242
    .line 243
    return-object v1

    .line 244
    :cond_6
    :goto_4
    throw v0
.end method
