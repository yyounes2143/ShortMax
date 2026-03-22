.class public abstract Llp/b;
.super Ljava/lang/Object;
.source "AdObjectParams.java"


# instance fields
.field private final a:Lio/bidmachine/core/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lxq/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/core/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/bidmachine/core/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 10
    .line 11
    new-instance v0, Ljava/util/EnumMap;

    .line 12
    .line 13
    const-class v1, Lio/bidmachine/TrackEventType;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Llp/b;->b:Ljava/util/Map;

    .line 19
    .line 20
    new-instance v0, Lxq/a;

    .line 21
    .line 22
    invoke-direct {v0}, Lxq/a;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Llp/b;->c:Lxq/a;

    .line 26
    .line 27
    invoke-static {p1}, Lfr/e;->f(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Llp/b;->h(Lio/bidmachine/protobuf/AdExtension;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Llp/b;->i(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method protected a(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Llp/b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lfr/e;->a(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->c:Lxq/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgr/d;->s()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lxq/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->c:Lxq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    return-object p1
.end method

.method public e()Lio/bidmachine/core/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract f()Z
.end method

.method protected g(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lfr/e;->p(Ljava/util/Map;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected h(Lio/bidmachine/protobuf/AdExtension;)V
    .locals 8
    .param p1    # Lio/bidmachine/protobuf/AdExtension;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v2, v1

    .line 8
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v4, v1

    .line 17
    const-wide/16 v6, 0x1

    .line 18
    .line 19
    invoke-static/range {v2 .. v7}, Lio/bidmachine/core/g;->B(JJJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/core/i;->i(J)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-static {v1, v2, v3}, Lio/bidmachine/core/g;->A(FFF)F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lio/bidmachine/core/i;->g(F)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lio/bidmachine/core/i;->f(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Llp/b;->a:Lio/bidmachine/core/i;

    .line 59
    .line 60
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Lio/bidmachine/core/i;->e(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Llp/b;->g(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "viewability_time_threshold_sec"

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "viewability_pixel_threshold"

    .line 104
    .line 105
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "viewability_ignore_window_focus"

    .line 121
    .line 122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "viewability_ignore_overlap"

    .line 138
    .line 139
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "useNativeClose"

    .line 155
    .line 156
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "cacheControl"

    .line 164
    .line 165
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "placeholderTimeoutSec"

    .line 185
    .line 186
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "skipOffset"

    .line 202
    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v2, "companionSkipOffset"

    .line 219
    .line 220
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "r1"

    .line 236
    .line 237
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v2, "r2"

    .line 253
    .line 254
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const-string v1, "store_url"

    .line 262
    .line 263
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const-string v2, "progress_duration"

    .line 283
    .line 284
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    .line 293
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eq v0, v1, :cond_0

    .line 298
    .line 299
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string v2, "close_button_control_asset"

    .line 304
    .line 305
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-eqz v0, :cond_1

    .line 313
    .line 314
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-eq v0, v1, :cond_1

    .line 319
    .line 320
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-string v2, "countdown_control_asset"

    .line 325
    .line 326
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    .line 334
    .line 335
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-eq v0, v1, :cond_2

    .line 340
    .line 341
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v2, "progress_control_asset"

    .line 346
    .line 347
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    if-eqz p1, :cond_3

    .line 355
    .line 356
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eq p1, v0, :cond_3

    .line 361
    .line 362
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v1, "rendering_configuration"

    .line 367
    .line 368
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    :cond_3
    return-void
.end method

.method protected i(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Value;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "omsdk_enabled"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/Value;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
