.class final Lio/bidmachine/DeviceInfo$c;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/w3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/w3;)V
    .locals 0
    .param p1    # Lio/bidmachine/w3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/w3;

    .line 5
    .line 6
    return-void
.end method

.method private a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    new-array v2, v1, [I

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v1, p1

    .line 18
    move-object v4, v9

    .line 19
    move-object v7, v0

    .line 20
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    aget v0, v0, p1

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-object p1, v9, p1

    .line 31
    .line 32
    :goto_0
    return-object p1

    .line 33
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V
    .locals 2
    .param p1    # Landroid/opengl/EGLDisplay;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/opengl/EGLSurface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/DeviceInfo$c;->i(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-static {p1, p3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method private c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x3038

    .line 5
    .line 6
    const/16 v3, 0x3098

    .line 7
    .line 8
    filled-new-array {v3, v1, v2}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, p2, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private d(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 1
    const/16 v0, 0x3056

    .line 2
    .line 3
    const/16 v1, 0x3038

    .line 4
    .line 5
    const/16 v2, 0x3057

    .line 6
    .line 7
    const/16 v3, 0x40

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v3, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$c;->h()Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-direct {p0, v1}, Lio/bidmachine/DeviceInfo$c;->a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Lio/bidmachine/DeviceInfo$c;->d(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLSurface;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-direct {p0, v1, v2}, Lio/bidmachine/DeviceInfo$c;->c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v1, v3, v0}, Lio/bidmachine/DeviceInfo$c;->i(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x1f01

    .line 24
    .line 25
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 30
    .line 31
    const/16 v2, 0x1f00

    .line 32
    .line 33
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    move-object v2, v0

    .line 40
    move-object v0, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    move-object v4, v1

    .line 44
    move-object v1, v0

    .line 45
    move-object v0, v4

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-object v4, v1

    .line 48
    move-object v1, v0

    .line 49
    move-object v0, v4

    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception v2

    .line 52
    move-object v3, v0

    .line 53
    move-object v0, v1

    .line 54
    move-object v1, v3

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-object v3, v0

    .line 57
    move-object v0, v1

    .line 58
    move-object v1, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move-object v2, v0

    .line 61
    :goto_0
    invoke-direct {p0, v1, v0, v2}, Lio/bidmachine/DeviceInfo$c;->b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_2
    move-exception v2

    .line 66
    move-object v1, v0

    .line 67
    move-object v3, v1

    .line 68
    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lio/bidmachine/DeviceInfo$c;->b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    .line 69
    .line 70
    .line 71
    throw v2

    .line 72
    :catch_2
    move-object v1, v0

    .line 73
    move-object v3, v1

    .line 74
    :goto_2
    invoke-direct {p0, v0, v3, v1}, Lio/bidmachine/DeviceInfo$c;->b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    .line 75
    .line 76
    .line 77
    :goto_3
    return-void
.end method

.method private h()Landroid/opengl/EGLDisplay;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method private i(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1    # Landroid/opengl/EGLDisplay;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/opengl/EGLSurface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2, p2, p3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method j(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "gpu_name"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/w3;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/w3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "gpu_vendor"

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/w3;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v2}, Lio/bidmachine/w3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$c;->e()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/w3;

    .line 57
    .line 58
    iget-object v3, p0, Lio/bidmachine/DeviceInfo$c;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1, v3}, Lio/bidmachine/w3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/w3;

    .line 64
    .line 65
    iget-object v1, p0, Lio/bidmachine/DeviceInfo$c;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p1, v2, v1}, Lio/bidmachine/w3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method
