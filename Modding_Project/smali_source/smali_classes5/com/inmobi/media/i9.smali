.class public final Lcom/inmobi/media/i9;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/l9;)V
    .locals 1

    .line 1
    const-string v0, "videoView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/inmobi/media/i9;->a:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/i9;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/media/l9;

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget v1, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getDuration()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v1, v4, :cond_4

    .line 31
    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    instance-of v5, v4, Lcom/inmobi/media/c9;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    check-cast v4, Lcom/inmobi/media/c9;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-eqz v4, :cond_4

    .line 47
    .line 48
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 49
    .line 50
    const-string v6, "didCompleteQ1"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v7, "null cannot be cast to non-null type kotlin.Boolean"

    .line 57
    .line 58
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v5, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_1

    .line 68
    .line 69
    mul-int/lit8 v5, v3, 0x4

    .line 70
    .line 71
    sub-int/2addr v5, v1

    .line 72
    if-ltz v5, :cond_1

    .line 73
    .line 74
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 75
    .line 76
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getQuartileCompletedListener()Lcom/inmobi/media/h9;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    check-cast v5, Lcom/inmobi/media/z8;

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-virtual {v5, v6}, Lcom/inmobi/media/z8;->a(B)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 95
    .line 96
    const-string v6, "didCompleteQ2"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v5, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_2

    .line 112
    .line 113
    mul-int/lit8 v5, v3, 0x2

    .line 114
    .line 115
    sub-int/2addr v5, v1

    .line 116
    if-ltz v5, :cond_2

    .line 117
    .line 118
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 119
    .line 120
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getQuartileCompletedListener()Lcom/inmobi/media/h9;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_2

    .line 130
    .line 131
    check-cast v5, Lcom/inmobi/media/z8;

    .line 132
    .line 133
    invoke-virtual {v5, v2}, Lcom/inmobi/media/z8;->a(B)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 137
    .line 138
    const-string v6, "didCompleteQ3"

    .line 139
    .line 140
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    check-cast v5, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_3

    .line 154
    .line 155
    mul-int/lit8 v5, v3, 0x4

    .line 156
    .line 157
    mul-int/lit8 v8, v1, 0x3

    .line 158
    .line 159
    sub-int/2addr v5, v8

    .line 160
    if-ltz v5, :cond_3

    .line 161
    .line 162
    iget-object v5, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 163
    .line 164
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getQuartileCompletedListener()Lcom/inmobi/media/h9;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-eqz v5, :cond_3

    .line 174
    .line 175
    check-cast v5, Lcom/inmobi/media/z8;

    .line 176
    .line 177
    const/4 v6, 0x2

    .line 178
    invoke-virtual {v5, v6}, Lcom/inmobi/media/z8;->a(B)V

    .line 179
    .line 180
    .line 181
    :cond_3
    int-to-float v3, v3

    .line 182
    int-to-float v1, v1

    .line 183
    div-float/2addr v3, v1

    .line 184
    const/16 v1, 0x64

    .line 185
    .line 186
    int-to-float v1, v1

    .line 187
    mul-float/2addr v3, v1

    .line 188
    iget v1, v4, Lcom/inmobi/media/c9;->D:I

    .line 189
    .line 190
    int-to-float v1, v1

    .line 191
    cmpl-float v1, v3, v1

    .line 192
    .line 193
    if-lez v1, :cond_4

    .line 194
    .line 195
    iget-object v1, v4, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 196
    .line 197
    const-string v3, "didQ4Fire"

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    check-cast v1, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_4

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getPlaybackEventListener()Lcom/inmobi/media/g9;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    .line 220
    check-cast v0, Lcom/inmobi/media/A8;

    .line 221
    .line 222
    const/4 v1, 0x5

    .line 223
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->a(B)V

    .line 224
    .line 225
    .line 226
    :cond_4
    const-wide/16 v0, 0x3e8

    .line 227
    .line 228
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 229
    .line 230
    .line 231
    :cond_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method
