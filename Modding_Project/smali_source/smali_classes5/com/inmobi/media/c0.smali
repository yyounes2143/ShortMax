.class public final Lcom/inmobi/media/c0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/d0;

.field public final synthetic b:Lcom/inmobi/adquality/models/AdQualityResult;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d0;Lcom/inmobi/adquality/models/AdQualityResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/c0;->a:Lcom/inmobi/media/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/c0;->b:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "AdQualityDao"

    .line 2
    .line 3
    check-cast p1, Lcom/inmobi/media/I9;

    .line 4
    .line 5
    sget-object v1, Lcom/inmobi/media/o4;->d:Lcom/inmobi/media/o4;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "message"

    .line 12
    .line 13
    const-string v3, "tag"

    .line 14
    .line 15
    const-string v4, "AdQualityBeaconExecutor"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "no network... skipping cleanup"

    .line 23
    .line 24
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "beacon hit completed... cleaning up"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/inmobi/media/c0;->a:Lcom/inmobi/media/d0;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/inmobi/media/d0;->d:Ljava/util/HashMap;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/inmobi/media/c0;->b:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getBeaconUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/inmobi/media/Jb;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p1, Lcom/inmobi/media/Jb;->a:Lcom/inmobi/media/ec;

    .line 72
    .line 73
    const-string v1, "window.mraidview.broadcastEvent(\'AdReportSuccess\')"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/c0;->a:Lcom/inmobi/media/d0;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/inmobi/media/d0;->d:Ljava/util/HashMap;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/inmobi/media/c0;->b:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getBeaconUrl()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/inmobi/media/Jb;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p1, Lcom/inmobi/media/Jb;->a:Lcom/inmobi/media/ec;

    .line 106
    .line 107
    const-string v1, "window.mraidview.broadcastEvent(\'AdReportFailed\')"

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/c0;->a:Lcom/inmobi/media/d0;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/inmobi/media/c0;->b:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const-string p1, "delete file result - "

    .line 120
    .line 121
    const-string v5, "result"

    .line 122
    .line 123
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    sget-object v6, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 127
    .line 128
    sget-object v6, Lcom/inmobi/media/Nc;->a:Lms/i;

    .line 129
    .line 130
    invoke-interface {v6}, Lms/i;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Lcom/inmobi/media/g0;

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v5, "de-queueing"

    .line 143
    .line 144
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const-string v5, "image_location=?"

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getImageLocation()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    filled-new-array {v7}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v6, v5, v7}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object v5, v6, Lcom/inmobi/media/g0;->b:Lcom/inmobi/media/d0;

    .line 161
    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    const-string v5, "sending callback - dequeue"

    .line 165
    .line 166
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception p1

    .line 171
    goto :goto_2

    .line 172
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getImageLocation()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_4

    .line 181
    .line 182
    const-string p1, "no image to clear. clean up done."

    .line 183
    .line 184
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/inmobi/adquality/models/AdQualityResult;->getImageLocation()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "deleting file"

    .line 204
    .line 205
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :goto_2
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "exception while cleanup"

    .line 244
    .line 245
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object p1
.end method
