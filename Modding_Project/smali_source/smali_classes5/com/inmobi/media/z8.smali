.class public final Lcom/inmobi/media/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/h9;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/D8;

.field public final synthetic b:Lcom/inmobi/media/c9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/D8;Lcom/inmobi/media/c9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/D8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/z8;->b:Lcom/inmobi/media/c9;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/D8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/inmobi/media/T7;->t:Z

    .line 6
    .line 7
    if-nez v1, :cond_a

    .line 8
    .line 9
    instance-of v1, v0, Lcom/inmobi/media/a9;

    .line 10
    .line 11
    if-eqz v1, :cond_a

    .line 12
    .line 13
    check-cast v0, Lcom/inmobi/media/a9;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/inmobi/media/z8;->b:Lcom/inmobi/media/c9;

    .line 16
    .line 17
    const-string v2, "videoAsset"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/inmobi/media/T7;->t:Z

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    const-string v2, "TAG"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v6, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 39
    .line 40
    const-string v7, "firstQuartile"

    .line 41
    .line 42
    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v4, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v1, Lcom/inmobi/media/A5;

    .line 55
    .line 56
    const-string v2, "onVideoQuartileEvent(Q1)"

    .line 57
    .line 58
    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xe;->a(B)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_2
    const/4 v5, 0x1

    .line 73
    if-ne p1, v5, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 80
    .line 81
    const-string v7, "midpoint"

    .line 82
    .line 83
    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v4, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    check-cast v1, Lcom/inmobi/media/A5;

    .line 96
    .line 97
    const-string v2, "onVideoQuartileEvent(Q2)"

    .line 98
    .line 99
    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object v0, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 103
    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xe;->a(B)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const/4 v5, 0x2

    .line 113
    if-ne p1, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iget-object v6, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 120
    .line 121
    const-string v7, "thirdQuartile"

    .line 122
    .line 123
    invoke-virtual {v1, v7, v5, v4, v6}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 127
    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    iget-object v4, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast v1, Lcom/inmobi/media/A5;

    .line 136
    .line 137
    const-string v2, "onVideoQuartileEvent(Q3)"

    .line 138
    .line 139
    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object v0, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    const/16 v1, 0xb

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xe;->a(B)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    if-ne p1, v3, :cond_8

    .line 153
    .line 154
    iget-object v2, v1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 155
    .line 156
    const-string v5, "didQ4Fire"

    .line 157
    .line 158
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    instance-of v5, v2, Ljava/lang/Boolean;

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    move-object v4, v2

    .line 167
    check-cast v4, Ljava/lang/Boolean;

    .line 168
    .line 169
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_9

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/inmobi/media/a9;->d(Lcom/inmobi/media/c9;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_8
    iget-object v1, v0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 182
    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    iget-object v0, v0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v4, "Unhandled quartileEvent ( "

    .line 193
    .line 194
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v4, " ) for Native Video"

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v1, Lcom/inmobi/media/A5;

    .line 210
    .line 211
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    :goto_0
    if-ne v3, p1, :cond_a

    .line 215
    .line 216
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/D8;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 219
    .line 220
    check-cast p1, Lcom/inmobi/media/a9;

    .line 221
    .line 222
    iget-object v0, p0, Lcom/inmobi/media/z8;->b:Lcom/inmobi/media/c9;

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lcom/inmobi/media/a9;->c(Lcom/inmobi/media/c9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catch_0
    move-exception p1

    .line 229
    iget-object v0, p0, Lcom/inmobi/media/z8;->a:Lcom/inmobi/media/D8;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/inmobi/media/D8;->f:Lcom/inmobi/media/z5;

    .line 232
    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    iget-object v0, v0, Lcom/inmobi/media/D8;->g:Ljava/lang/String;

    .line 236
    .line 237
    const-string v2, "access$getTAG$p(...)"

    .line 238
    .line 239
    const-string v3, "SDK encountered unexpected error in handling the onVideoCompleted event; "

    .line 240
    .line 241
    invoke-static {v0, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast v1, Lcom/inmobi/media/A5;

    .line 250
    .line 251
    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_1
    return-void
.end method
