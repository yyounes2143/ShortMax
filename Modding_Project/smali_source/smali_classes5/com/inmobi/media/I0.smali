.class public final Lcom/inmobi/media/I0;
.super Lcom/inmobi/media/G1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/S0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/inmobi/media/c2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Ljava/lang/String;Lcom/inmobi/media/c2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/I0;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/inmobi/media/I0;->f:Lcom/inmobi/media/c2;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/inmobi/media/I0;->g:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/inmobi/media/I0;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/inmobi/media/G1;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    const-string v0, "<get-TAG>(...)"

    .line 2
    .line 3
    const-string v1, "();"

    .line 4
    .line 5
    const-string v2, "Returning blob "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/inmobi/media/G1;->b:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/inmobi/media/S0;

    .line 14
    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v3}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 18
    .line 19
    .line 20
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const-string v4, "retrievedBlob"

    .line 22
    .line 23
    const-string v5, "TAG"

    .line 24
    .line 25
    const-string v6, "blob"

    .line 26
    .line 27
    const-string v7, "callback"

    .line 28
    .line 29
    const-string v8, "jsCallbackNamespace"

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v3}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    iget-object v10, p0, Lcom/inmobi/media/I0;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/inmobi/media/h;->F()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/inmobi/media/I0;->f:Lcom/inmobi/media/c2;

    .line 50
    .line 51
    iget-object v9, p0, Lcom/inmobi/media/I0;->g:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v10, p0, Lcom/inmobi/media/I0;->h:Ljava/lang/String;

    .line 54
    .line 55
    check-cast v3, Lcom/inmobi/media/ec;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v6, v3, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 70
    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    sget-object v7, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast v6, Lcom/inmobi/media/A5;

    .line 79
    .line 80
    invoke-virtual {v6, v7, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/16 v5, 0x28

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, ");"

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3, v9, v4}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/S0;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v3, Lcom/inmobi/media/A5;

    .line 141
    .line 142
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/S0;

    .line 147
    .line 148
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 149
    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v9, "Returning blob as empty string"

    .line 160
    .line 161
    check-cast v2, Lcom/inmobi/media/A5;

    .line 162
    .line 163
    invoke-virtual {v2, v3, v9}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/I0;->f:Lcom/inmobi/media/c2;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/inmobi/media/I0;->g:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v9, p0, Lcom/inmobi/media/I0;->h:Ljava/lang/String;

    .line 171
    .line 172
    const-string v10, ""

    .line 173
    .line 174
    check-cast v2, Lcom/inmobi/media/ec;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v6, v2, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 189
    .line 190
    if-eqz v6, :cond_3

    .line 191
    .line 192
    sget-object v7, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast v6, Lcom/inmobi/media/A5;

    .line 198
    .line 199
    invoke-virtual {v6, v7, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_1
    iget-object v2, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/S0;

    .line 222
    .line 223
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 224
    .line 225
    if-eqz v2, :cond_4

    .line 226
    .line 227
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    check-cast v2, Lcom/inmobi/media/A5;

    .line 235
    .line 236
    const-string v0, "Exception while getBlob"

    .line 237
    .line 238
    invoke-virtual {v2, v3, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 239
    .line 240
    .line 241
    :cond_4
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 242
    .line 243
    const-string v0, "event"

    .line 244
    .line 245
    invoke-static {v1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 252
    .line 253
    .line 254
    :cond_5
    :goto_2
    return-void
.end method
