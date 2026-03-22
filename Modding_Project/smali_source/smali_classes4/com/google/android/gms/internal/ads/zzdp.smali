.class public final Lcom/google/android/gms/internal/ads/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final zza:[I


# instance fields
.field private final zzb:Landroid/os/Handler;

.field private final zzc:[I

.field private zzd:Landroid/opengl/EGLDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Landroid/opengl/EGLContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdp;->zza:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzdo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzc:[I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public final zza()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzb(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdq;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v9, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v2, v9

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    const-string v3, "eglGetDisplay failed"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v10, 0x2

    .line 18
    new-array v2, v10, [I

    .line 19
    .line 20
    invoke-static {v1, v2, v0, v2, v9}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "eglInitialize failed"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 30
    .line 31
    new-array v11, v9, [Landroid/opengl/EGLConfig;

    .line 32
    .line 33
    new-array v12, v9, [I

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdp;->zza:[I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v4, v11

    .line 42
    move-object v7, v12

    .line 43
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    aget v2, v12, v0

    .line 50
    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    aget-object v2, v11, v0

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    move v2, v9

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v2, v0

    .line 60
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    aget v3, v12, v0

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    aget-object v4, v11, v0

    .line 71
    .line 72
    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 79
    .line 80
    const-string v4, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 81
    .line 82
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aget-object v1, v11, v0

    .line 90
    .line 91
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 92
    .line 93
    const/16 v3, 0x32c0

    .line 94
    .line 95
    const/16 v4, 0x3098

    .line 96
    .line 97
    const/4 v5, 0x4

    .line 98
    const/4 v6, 0x5

    .line 99
    const/16 v7, 0x3038

    .line 100
    .line 101
    const/4 v8, 0x3

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    new-array v11, v8, [I

    .line 105
    .line 106
    aput v4, v11, v0

    .line 107
    .line 108
    aput v10, v11, v9

    .line 109
    .line 110
    aput v7, v11, v10

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-array v11, v6, [I

    .line 114
    .line 115
    aput v4, v11, v0

    .line 116
    .line 117
    aput v10, v11, v9

    .line 118
    .line 119
    aput v3, v11, v10

    .line 120
    .line 121
    aput v9, v11, v8

    .line 122
    .line 123
    aput v7, v11, v5

    .line 124
    .line 125
    :goto_2
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 126
    .line 127
    invoke-static {v2, v1, v4, v11, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    move v4, v9

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move v4, v0

    .line 136
    :goto_3
    const-string v11, "eglCreateContext failed"

    .line 137
    .line 138
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zze:Landroid/opengl/EGLContext;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 144
    .line 145
    if-ne p1, v9, :cond_4

    .line 146
    .line 147
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_4
    const/16 v11, 0x3056

    .line 151
    .line 152
    const/16 v12, 0x3057

    .line 153
    .line 154
    if-ne p1, v10, :cond_5

    .line 155
    .line 156
    const/4 p1, 0x7

    .line 157
    new-array p1, p1, [I

    .line 158
    .line 159
    aput v12, p1, v0

    .line 160
    .line 161
    aput v9, p1, v9

    .line 162
    .line 163
    aput v11, p1, v10

    .line 164
    .line 165
    aput v9, p1, v8

    .line 166
    .line 167
    aput v3, p1, v5

    .line 168
    .line 169
    aput v9, p1, v6

    .line 170
    .line 171
    const/4 v3, 0x6

    .line 172
    aput v7, p1, v3

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_5
    new-array p1, v6, [I

    .line 176
    .line 177
    aput v12, p1, v0

    .line 178
    .line 179
    aput v9, p1, v9

    .line 180
    .line 181
    aput v11, p1, v10

    .line 182
    .line 183
    aput v9, p1, v8

    .line 184
    .line 185
    aput v7, p1, v5

    .line 186
    .line 187
    :goto_4
    invoke-static {v4, v1, p1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    move v1, v9

    .line 194
    goto :goto_5

    .line 195
    :cond_6
    move v1, v0

    .line 196
    :goto_5
    const-string v3, "eglCreatePbufferSurface failed"

    .line 197
    .line 198
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_6
    invoke-static {v4, p1, p1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    const-string v2, "eglMakeCurrent failed"

    .line 206
    .line 207
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdr;->zza(ZLjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 211
    .line 212
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzc:[I

    .line 213
    .line 214
    invoke-static {v9, p1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    move v2, v0

    .line 223
    :goto_7
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_9

    .line 228
    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    const/16 v2, 0xa

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-static {v3}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-nez v2, :cond_8

    .line 241
    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v3, "error code: 0x"

    .line 251
    .line 252
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    :cond_8
    const-string v3, "glError: "

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move v2, v9

    .line 265
    goto :goto_7

    .line 266
    :cond_9
    if-nez v2, :cond_a

    .line 267
    .line 268
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 269
    .line 270
    aget p1, p1, v0

    .line 271
    .line 272
    invoke-direct {v1, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 273
    .line 274
    .line 275
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 276
    .line 277
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdq;

    .line 286
    .line 287
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzc:[I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 37
    .line 38
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 39
    .line 40
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 41
    .line 42
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zze:Landroid/opengl/EGLContext;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 69
    .line 70
    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 89
    .line 90
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zze:Landroid/opengl/EGLContext;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 100
    .line 101
    return-void

    .line 102
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 103
    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 115
    .line 116
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 117
    .line 118
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 119
    .line 120
    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 124
    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 138
    .line 139
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zze:Landroid/opengl/EGLContext;

    .line 143
    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 147
    .line 148
    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 168
    .line 169
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzd:Landroid/opengl/EGLDisplay;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zze:Landroid/opengl/EGLContext;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzf:Landroid/opengl/EGLSurface;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzg:Landroid/graphics/SurfaceTexture;

    .line 179
    .line 180
    throw v1
.end method
