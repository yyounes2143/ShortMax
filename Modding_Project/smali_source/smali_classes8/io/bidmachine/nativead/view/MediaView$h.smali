.class Lio/bidmachine/nativead/view/MediaView$h;
.super Ljava/util/TimerTask;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$h;->f(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$h;->g(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$h;->h(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/nativead/view/MediaView$h;->i(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic f(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Video started: %s%%"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic g(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Video at first quartile: %s%%"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic h(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Video at midpoint: %s%%"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic i(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Video at third quartile: %s%%"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->e(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->k(Lio/bidmachine/nativead/view/MediaView;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->l(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$h$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$h$a;-><init>(Lio/bidmachine/nativead/view/MediaView$h;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 34
    .line 35
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->t(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 42
    .line 43
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->e(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_7

    .line 48
    .line 49
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 50
    .line 51
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 62
    .line 63
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->m(Lio/bidmachine/nativead/view/MediaView;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 70
    .line 71
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->n(Lio/bidmachine/nativead/view/MediaView;I)I

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 83
    .line 84
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->m(Lio/bidmachine/nativead/view/MediaView;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 91
    .line 92
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->u(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    mul-int/lit8 v0, v0, 0x64

    .line 101
    .line 102
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 103
    .line 104
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->m(Lio/bidmachine/nativead/view/MediaView;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    div-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 110
    .line 111
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->o(Lio/bidmachine/nativead/view/MediaView;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    mul-int/lit8 v1, v1, 0x19

    .line 116
    .line 117
    if-lt v0, v1, :cond_7

    .line 118
    .line 119
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 120
    .line 121
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->o(Lio/bidmachine/nativead/view/MediaView;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_3

    .line 126
    .line 127
    new-instance v1, Lio/bidmachine/nativead/view/b;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/b;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 136
    .line 137
    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->start:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 138
    .line 139
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->q(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 144
    .line 145
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->o(Lio/bidmachine/nativead/view/MediaView;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/4 v2, 0x1

    .line 150
    if-ne v1, v2, :cond_4

    .line 151
    .line 152
    new-instance v1, Lio/bidmachine/nativead/view/c;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/c;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 161
    .line 162
    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->firstQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 163
    .line 164
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->q(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_4
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 169
    .line 170
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->o(Lio/bidmachine/nativead/view/MediaView;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v2, 0x2

    .line 175
    if-ne v1, v2, :cond_5

    .line 176
    .line 177
    new-instance v1, Lio/bidmachine/nativead/view/d;

    .line 178
    .line 179
    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/d;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 186
    .line 187
    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->midpoint:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 188
    .line 189
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->q(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_5
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 194
    .line 195
    invoke-static {v1}, Lio/bidmachine/nativead/view/MediaView;->o(Lio/bidmachine/nativead/view/MediaView;)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    const/4 v2, 0x3

    .line 200
    if-ne v1, v2, :cond_6

    .line 201
    .line 202
    new-instance v1, Lio/bidmachine/nativead/view/e;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/e;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 211
    .line 212
    sget-object v1, Lio/bidmachine/iab/vast/TrackingEvent;->thirdQuartile:Lio/bidmachine/iab/vast/TrackingEvent;

    .line 213
    .line 214
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->q(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/iab/vast/TrackingEvent;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 218
    .line 219
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->p(Lio/bidmachine/nativead/view/MediaView;)I

    .line 220
    .line 221
    .line 222
    :cond_7
    const-string v0, "MediaView is on screen"

    .line 223
    .line 224
    invoke-static {v0}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$h$b;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$h$b;-><init>(Lio/bidmachine/nativead/view/MediaView$h;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :catch_0
    :try_start_2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 237
    .line 238
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->k(Lio/bidmachine/nativead/view/MediaView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :catchall_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 243
    .line 244
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->k(Lio/bidmachine/nativead/view/MediaView;)V

    .line 245
    .line 246
    .line 247
    :goto_1
    return-void
.end method
