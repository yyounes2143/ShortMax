.class Lio/bidmachine/iab/vast/activity/VastView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 4
    .line 5
    iget-boolean v2, v1, Lio/bidmachine/iab/vast/activity/VastView$B;->h:Z

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget v1, v1, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->I()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 25
    .line 26
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->I()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-le p2, v0, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 35
    .line 36
    iget-object p2, p2, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 37
    .line 38
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/a;->O()Lio/bidmachine/iab/vast/VideoType;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget-object v0, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    .line 43
    .line 44
    if-ne p2, v0, :cond_1

    .line 45
    .line 46
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 47
    .line 48
    iget-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 49
    .line 50
    iput-boolean v1, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 51
    .line 52
    invoke-static {p2, v1}, Lio/bidmachine/iab/vast/activity/VastView;->u(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 56
    .line 57
    iget-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 58
    .line 59
    iget v0, v0, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 60
    .line 61
    int-to-float v2, v0

    .line 62
    const/high16 v4, 0x41c80000    # 25.0f

    .line 63
    .line 64
    mul-float/2addr v2, v4

    .line 65
    cmpl-float v2, p3, v2

    .line 66
    .line 67
    if-lez v2, :cond_7

    .line 68
    .line 69
    if-ne v0, v3, :cond_2

    .line 70
    .line 71
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string p3, "Video at third quartile: (%s)"

    .line 84
    .line 85
    invoke-static {p1, p3, p2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 89
    .line 90
    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 91
    .line 92
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 96
    .line 97
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 104
    .line 105
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->E0()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_2
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-string v0, "Video at start: (%s)"

    .line 129
    .line 130
    invoke-static {p2, v0, p3}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 134
    .line 135
    sget-object p3, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 136
    .line 137
    invoke-static {p2, p3}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 141
    .line 142
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_6

    .line 147
    .line 148
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 149
    .line 150
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    int-to-float p1, p1

    .line 155
    iget-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 156
    .line 157
    iget-object p3, p3, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 158
    .line 159
    iget-boolean p3, p3, Lio/bidmachine/iab/vast/activity/VastView$B;->f:Z

    .line 160
    .line 161
    if-eqz p3, :cond_3

    .line 162
    .line 163
    const/4 p3, 0x0

    .line 164
    goto :goto_0

    .line 165
    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    .line 166
    .line 167
    :goto_0
    invoke-interface {p2, p1, p3}, Lio/bidmachine/iab/vast/VastPlaybackListener;->x(FF)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    if-ne v0, v1, :cond_5

    .line 172
    .line 173
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const-string p3, "Video at first quartile: (%s)"

    .line 186
    .line 187
    invoke-static {p1, p3, p2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 191
    .line 192
    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 193
    .line 194
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 198
    .line 199
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 206
    .line 207
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->g0()V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    const/4 p1, 0x2

    .line 216
    if-ne v0, p1, :cond_6

    .line 217
    .line 218
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    const-string p3, "Video at midpoint: (%s)"

    .line 231
    .line 232
    invoke-static {p1, p3, p2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 236
    .line 237
    sget-object p2, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 238
    .line 239
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->q(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 243
    .line 244
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_6

    .line 249
    .line 250
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 251
    .line 252
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->r0(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p1}, Lio/bidmachine/iab/vast/VastPlaybackListener;->C0()V

    .line 257
    .line 258
    .line 259
    :cond_6
    :goto_1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$f;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 260
    .line 261
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 262
    .line 263
    iget p2, p1, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 264
    .line 265
    add-int/2addr p2, v1

    .line 266
    iput p2, p1, Lio/bidmachine/iab/vast/activity/VastView$B;->c:I

    .line 267
    .line 268
    :cond_7
    return-void
.end method
