.class public final Lcom/inmobi/media/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/t2;

.field public final b:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t2;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "mEventHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/s2;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/l2;)V
    .locals 5

    .line 1
    const-string v0, "access$getTAG$p(...)"

    .line 2
    .line 3
    const-string v1, "ping - "

    .line 4
    .line 5
    const-string v2, "click"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/s2;->b:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, p1, Lcom/inmobi/media/l2;->a:I

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v2, Lcom/inmobi/media/A5;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, p1, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/inmobi/media/s2;->b:Lcom/inmobi/media/z5;

    .line 43
    .line 44
    new-instance v3, Lcom/inmobi/media/N9;

    .line 45
    .line 46
    invoke-direct {v3, v1, v2}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 50
    .line 51
    invoke-static {v1, p1}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/x2;Lcom/inmobi/media/l2;)Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    iget-object v2, v3, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v3, Lcom/inmobi/media/N9;->x:Z

    .line 68
    .line 69
    iput-boolean v1, v3, Lcom/inmobi/media/N9;->t:Z

    .line 70
    .line 71
    iput-boolean v1, v3, Lcom/inmobi/media/N9;->u:Z

    .line 72
    .line 73
    iget-object v1, p1, Lcom/inmobi/media/l2;->c:Ljava/util/Map;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v2, v3, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-boolean v1, p1, Lcom/inmobi/media/l2;->d:Z

    .line 85
    .line 86
    iput-boolean v1, v3, Lcom/inmobi/media/N9;->r:Z

    .line 87
    .line 88
    invoke-static {}, Lcom/inmobi/media/x2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingTimeout()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    mul-int/lit16 v2, v2, 0x3e8

    .line 99
    .line 100
    iput v2, v3, Lcom/inmobi/media/N9;->p:I

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingTimeout()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    mul-int/lit16 v1, v1, 0x3e8

    .line 107
    .line 108
    iput v1, v3, Lcom/inmobi/media/N9;->q:I

    .line 109
    .line 110
    :cond_3
    const-string v1, "mRequest"

    .line 111
    .line 112
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/inmobi/media/P9;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    iget-object v1, v1, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 126
    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    iget-object v1, v1, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    sget-object v1, Lcom/inmobi/media/o4;->e:Lcom/inmobi/media/o4;

    .line 133
    .line 134
    :goto_0
    sget-object v2, Lcom/inmobi/media/o4;->k:Lcom/inmobi/media/o4;

    .line 135
    .line 136
    if-ne v2, v1, :cond_5

    .line 137
    .line 138
    iget-object v1, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 139
    .line 140
    invoke-interface {v1, p1}, Lcom/inmobi/media/t2;->a(Lcom/inmobi/media/l2;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iget-boolean v2, p1, Lcom/inmobi/media/l2;->d:Z

    .line 145
    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    sget-object v2, Lcom/inmobi/media/o4;->v:Lcom/inmobi/media/o4;

    .line 149
    .line 150
    if-eq v2, v1, :cond_6

    .line 151
    .line 152
    sget-object v2, Lcom/inmobi/media/o4;->x:Lcom/inmobi/media/o4;

    .line 153
    .line 154
    if-ne v2, v1, :cond_7

    .line 155
    .line 156
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 157
    .line 158
    invoke-interface {v1, p1}, Lcom/inmobi/media/t2;->a(Lcom/inmobi/media/l2;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    sget-boolean v2, Lcom/inmobi/media/T9;->a:Z

    .line 163
    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    sget-object v2, Lcom/inmobi/media/o4;->q:Lcom/inmobi/media/o4;

    .line 167
    .line 168
    if-eq v1, v2, :cond_a

    .line 169
    .line 170
    sget-object v2, Lcom/inmobi/media/o4;->p:Lcom/inmobi/media/o4;

    .line 171
    .line 172
    if-eq v1, v2, :cond_a

    .line 173
    .line 174
    sget-object v2, Lcom/inmobi/media/o4;->o:Lcom/inmobi/media/o4;

    .line 175
    .line 176
    if-eq v1, v2, :cond_a

    .line 177
    .line 178
    sget-object v2, Lcom/inmobi/media/o4;->n:Lcom/inmobi/media/o4;

    .line 179
    .line 180
    if-eq v1, v2, :cond_a

    .line 181
    .line 182
    sget-object v2, Lcom/inmobi/media/o4;->r:Lcom/inmobi/media/o4;

    .line 183
    .line 184
    if-ne v1, v2, :cond_8

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_8
    iget-object v2, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 188
    .line 189
    invoke-interface {v2, p1, v1}, Lcom/inmobi/media/t2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/o4;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_9
    iget-object v1, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 194
    .line 195
    invoke-interface {v1, p1}, Lcom/inmobi/media/t2;->a(Lcom/inmobi/media/l2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :catch_0
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/t2;

    .line 207
    .line 208
    sget-object v1, Lcom/inmobi/media/o4;->e:Lcom/inmobi/media/o4;

    .line 209
    .line 210
    const-string v2, "errorCode"

    .line 211
    .line 212
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, p1, v1}, Lcom/inmobi/media/t2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/o4;)V

    .line 216
    .line 217
    .line 218
    :cond_a
    :goto_1
    return-void
.end method
