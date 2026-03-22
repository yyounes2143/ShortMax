.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setupTextureRender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUsingSharpe:I

.field private mUsingSr:I

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSr:I

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSharpe:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onDraw(J)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$308(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/texturerender/VideoSurface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/texturerender/VideoSurface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x6

    .line 30
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/VideoSurface;->getIntOption(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/texturerender/VideoSurface;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0xf

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurface;->getIntOption(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSr:I

    .line 47
    .line 48
    if-ne v1, p1, :cond_0

    .line 49
    .line 50
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSharpe:I

    .line 51
    .line 52
    if-eq v1, v0, :cond_4

    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v3, "[SRLog]using sr:"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " frameCount:"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v3, "usingSharpe:"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSr:I

    .line 104
    .line 105
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSharpe:I

    .line 106
    .line 107
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 108
    .line 109
    const/16 v1, 0xfa5

    .line 110
    .line 111
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v1, 0x0

    .line 120
    if-lez v0, :cond_3

    .line 121
    .line 122
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSr:I

    .line 123
    .line 124
    const/16 v2, 0xfa6

    .line 125
    .line 126
    if-gtz v0, :cond_2

    .line 127
    .line 128
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->mUsingSharpe:I

    .line 129
    .line 130
    if-lez v0, :cond_1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v3, "non sr latency mode"

    .line 140
    .line 141
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 145
    .line 146
    invoke-virtual {v0, v2, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string/jumbo v3, "sr latency mode"

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 163
    .line 164
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/superresolution/SRStrategy;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->onSRStatus(II)V

    .line 174
    .line 175
    .line 176
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 177
    .line 178
    iget-object v0, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 179
    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/ListenerCompact;->onFrameDraw(ILjava/util/Map;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 191
    .line 192
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_6

    .line 197
    .line 198
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_6

    .line 205
    .line 206
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v0, "recive first frame render from texture"

    .line 213
    .line 214
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 218
    .line 219
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$702(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)Z

    .line 220
    .line 221
    .line 222
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_7

    .line 229
    .line 230
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 231
    .line 232
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTexNotifyFirstFrame:Z

    .line 233
    .line 234
    if-nez v0, :cond_7

    .line 235
    .line 236
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldPlay:Z

    .line 237
    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    const/16 v0, 0x295

    .line 241
    .line 242
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eq p1, p2, :cond_7

    .line 251
    .line 252
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v0, "render start by texture, state ="

    .line 264
    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 269
    .line 270
    iget v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 271
    .line 272
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    return-void
.end method
