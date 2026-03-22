.class Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;
.super Ljava/lang/Object;
.source "BMFVQScoreWrapper.java"

# interfaces
.implements Lcom/bytedance/bmf_mods_api/VqscoreProcessCallbackAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->processVqscore(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

.field final synthetic val$callback:Lcom/ss/texturerender/VideoSurface$VQScoreCallback;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->val$callback:Lcom/ss/texturerender/VideoSurface$VQScoreCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProcessResult(JIF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$000(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$000(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$000(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$000(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_1
    move-wide v8, v1

    .line 64
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 65
    .line 66
    iget v0, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "onProcessResult, sequenceId: "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", status: "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", score: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ", cost: "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    sub-long/2addr v2, v8

    .line 107
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "TR_BMFVQScoreWrapper"

    .line 115
    .line 116
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-nez p3, :cond_3

    .line 120
    .line 121
    iget-object p3, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 122
    .line 123
    invoke-static {p3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$108(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 124
    .line 125
    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .line 128
    cmp-long p3, v8, v0

    .line 129
    .line 130
    if-lez p3, :cond_2

    .line 131
    .line 132
    iget-object p3, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 133
    .line 134
    invoke-static {p3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$200(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    sub-long/2addr v1, v8

    .line 143
    long-to-float v1, v1

    .line 144
    add-float/2addr v0, v1

    .line 145
    invoke-static {p3, v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$202(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;F)F

    .line 146
    .line 147
    .line 148
    iget-object p3, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 149
    .line 150
    invoke-static {p3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$200(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$400(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    div-float/2addr v0, v1

    .line 161
    invoke-static {p3, v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$302(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;F)F

    .line 162
    .line 163
    .line 164
    iget-object p3, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 165
    .line 166
    iget-object v0, p3, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 167
    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    const/16 v1, 0x9b

    .line 171
    .line 172
    invoke-static {p3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$300(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    invoke-virtual {v0, v1, p3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 180
    .line 181
    iget-object v0, p3, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 182
    .line 183
    invoke-static {p3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$100(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->access$400(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    div-float/2addr p3, v1

    .line 194
    const/16 v1, 0x9a

    .line 195
    .line 196
    invoke-virtual {v0, v1, p3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 197
    .line 198
    .line 199
    :cond_2
    iget-object v4, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;->val$callback:Lcom/ss/texturerender/VideoSurface$VQScoreCallback;

    .line 200
    .line 201
    move v5, p4

    .line 202
    move-wide v6, p1

    .line 203
    invoke-interface/range {v4 .. v9}, Lcom/ss/texturerender/VideoSurface$VQScoreCallback;->onProcessScore(FJJ)I

    .line 204
    .line 205
    .line 206
    :cond_3
    return-void
.end method
