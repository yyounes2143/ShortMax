.class public Lcom/ss/texturerender/base/EGLRuntime;
.super Ljava/lang/Object;
.source "EGLRuntime.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "TR_EGLRuntime"


# instance fields
.field public eglConfig:Landroid/opengl/EGLConfig;

.field public eglContext:Landroid/opengl/EGLContext;

.field public eglDisplay:Landroid/opengl/EGLDisplay;

.field public eglDummySurface:Landroid/opengl/EGLSurface;

.field private mBitDepth:I

.field protected mDrawingObjectId:J

.field private mErrorCallback:Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;

.field private mIsSupport2020PQ:I

.field protected volatile mSharedEglConfig:Landroid/opengl/EGLConfig;

.field protected volatile mSharedEglContext:Landroid/opengl/EGLContext;

.field private mTexType:I

.field private mUseGL3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/ss/texturerender/base/EGLRuntime$ErrorCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mUseGL3:Z

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mBitDepth:I

    .line 5
    iput p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 6
    iput-object p2, p0, Lcom/ss/texturerender/base/EGLRuntime;->mErrorCallback:Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;

    return-void
.end method

.method public constructor <init>(ILcom/ss/texturerender/base/EGLRuntime$ErrorCallback;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mUseGL3:Z

    const/16 v0, 0x8

    .line 10
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mBitDepth:I

    .line 11
    iput p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 12
    iput-object p2, p0, Lcom/ss/texturerender/base/EGLRuntime;->mErrorCallback:Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;

    .line 13
    iput-object p3, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglContext:Landroid/opengl/EGLContext;

    .line 14
    iput-object p4, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method private chooseEglConfig()Landroid/opengl/EGLConfig;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v9, v0, [I

    .line 3
    .line 4
    new-array v10, v0, [Landroid/opengl/EGLConfig;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->getRGB10Attributes()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->getRGB888Attributes()[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->getRGB565Attributes()[I

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v1, v2, v3}, [[I

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mBitDepth:I

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    if-le v1, v2, :cond_0

    .line 28
    .line 29
    move v0, v12

    .line 30
    :cond_0
    :goto_0
    const/4 v1, 0x3

    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 34
    .line 35
    aget-object v2, v11, v0

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    move-object v4, v10

    .line 42
    move-object v7, v9

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
    aget v1, v9, v12

    .line 50
    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 54
    .line 55
    sget-object v2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, ",chooseConfig:"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    aget-object v0, v11, v0

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    aget-object v0, v10, v12

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "eglChooseConfig failed"

    .line 93
    .line 94
    invoke-direct {p0, v12, v0}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    return-object v0
.end method

.method private createContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 2
    .line 3
    const/16 v1, 0x3038

    .line 4
    .line 5
    const/16 v2, 0x3098

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-ne v0, v6, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mUseGL3:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->isSupportGL3()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-array v0, v4, [I

    .line 24
    .line 25
    aput v2, v0, v5

    .line 26
    .line 27
    aput v4, v0, v6

    .line 28
    .line 29
    aput v1, v0, v3

    .line 30
    .line 31
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 32
    .line 33
    sget-object v2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v3, "use GL3"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-array v0, v4, [I

    .line 43
    .line 44
    aput v2, v0, v5

    .line 45
    .line 46
    aput v3, v0, v6

    .line 47
    .line 48
    aput v1, v0, v3

    .line 49
    .line 50
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 51
    .line 52
    sget-object v2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v3, "use GL2"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 61
    .line 62
    invoke-static {p1, p2, v1, v0, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 67
    .line 68
    if-ne p1, p2, :cond_1

    .line 69
    .line 70
    const-string p2, "eglcreateContext failed"

    .line 71
    .line 72
    invoke-direct {p0, v5, p2}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-object p1
.end method

.method private getDefaultDisplay()Landroid/opengl/EGLDisplay;
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
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v2, "egl get display failed"

    .line 9
    .line 10
    invoke-direct {p0, v0, v2}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v1, "eglInitialize failed"

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :cond_1
    return-object v1
.end method

.method private getRGB10Attributes()[I
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0xa
        0x3023
        0xa
        0x3022
        0xa
        0x3021
        0x2
        0x3339
        0x333a
        0x3038
    .end array-data
.end method

.method private getRGB565Attributes()[I
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3038
    .end array-data
.end method

.method private getRGB888Attributes()[I
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
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
        0x3038
    .end array-data
.end method

.method private isSupportGL3()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v2, "activity"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/app/ActivityManager;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 29
    .line 30
    const/high16 v3, 0x30000

    .line 31
    .line 32
    if-lt v2, v3, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_0
    iget v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 36
    .line 37
    sget-object v3, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "gles version: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", isSupportGL3: "

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return v0
.end method

.method private notifyEGLError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mErrorCallback:Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;->onError(Lcom/ss/texturerender/base/EGLRuntime;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSurface(Landroid/view/Surface;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 3
    .line 4
    sget-object v2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v4, ",create window surface from "

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x3038

    .line 30
    .line 31
    filled-new-array {v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 38
    .line 39
    invoke-static {v2, v3, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 44
    .line 45
    if-ne p1, v1, :cond_0

    .line 46
    .line 47
    iget p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 48
    .line 49
    sget-object v1, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "create window surface failed"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 83
    .line 84
    invoke-static {v1, p1, p1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 91
    .line 92
    sget-object v2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "make current failed = "

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v1, v2, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v0

    .line 115
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x4000

    .line 122
    .line 123
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 127
    .line 128
    invoke-static {v1, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 136
    .line 137
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 141
    .line 142
    invoke-static {v1, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    iget p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 147
    .line 148
    sget-object v1, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 149
    .line 150
    const-string v2, "create current exception failed"

    .line 151
    .line 152
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    return v0
.end method

.method public deinitEGL()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 11
    .line 12
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 24
    .line 25
    .line 26
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 31
    .line 32
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 48
    .line 49
    .line 50
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    :catch_0
    iget v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 55
    .line 56
    sget-object v1, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, "OpenGL deinit OK."

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public getDrawingObjectId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mDrawingObjectId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public initEGL()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglConfig:Landroid/opengl/EGLConfig;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglConfig:Landroid/opengl/EGLConfig;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/ss/texturerender/base/EGLRuntime;->chooseEglConfig()Landroid/opengl/EGLConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglContext:Landroid/opengl/EGLContext;

    .line 32
    .line 33
    const/16 v2, 0x3038

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/16 v0, 0x3098

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    filled-new-array {v0, v4, v2}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v4, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglConfig:Landroid/opengl/EGLConfig;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/ss/texturerender/base/EGLRuntime;->mSharedEglContext:Landroid/opengl/EGLContext;

    .line 50
    .line 51
    invoke-static {v4, v5, v6, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 61
    .line 62
    invoke-direct {p0, v0, v4}, Lcom/ss/texturerender/base/EGLRuntime;->createContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 67
    .line 68
    :goto_1
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 69
    .line 70
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 71
    .line 72
    if-ne v0, v4, :cond_4

    .line 73
    .line 74
    return v1

    .line 75
    :cond_4
    const/16 v0, 0x3057

    .line 76
    .line 77
    const/16 v4, 0x3056

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    filled-new-array {v0, v5, v4, v5, v2}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 87
    .line 88
    invoke-static {v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    :try_start_0
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 97
    .line 98
    if-ne v0, v2, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    :goto_2
    const-string v0, "create eglCreatePbufferSurface failed"

    .line 104
    .line 105
    invoke-direct {p0, v3, v0}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 113
    .line 114
    invoke-static {v0, v2, v2, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_7

    .line 119
    .line 120
    const-string v0, "eglMakeCurrent failed"

    .line 121
    .line 122
    invoke-direct {p0, v3, v0}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    :cond_7
    return v3

    .line 126
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    const-string v0, "create dummy env failed"

    .line 130
    .line 131
    invoke-direct {p0, v3, v0}, Lcom/ss/texturerender/base/EGLRuntime;->notifyEGLError(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v1
.end method

.method public isCurrentObject(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mDrawingObjectId:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public isSupportBt2020PQ()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    .line 8
    .line 9
    if-ltz v1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const/16 v1, 0x3055

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, "EGL_EXT_gl_colorspace_bt2020_pq"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    .line 38
    .line 39
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/base/EGLRuntime;->mIsSupport2020PQ:I

    .line 40
    .line 41
    return v0
.end method

.method public setBitDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mBitDepth:I

    .line 2
    .line 3
    return-void
.end method

.method public setDrawingObjectId(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mDrawingObjectId:J

    .line 2
    .line 3
    iget p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mTexType:I

    .line 4
    .line 5
    sget-object p2, Lcom/ss/texturerender/base/EGLRuntime;->LOG_TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "setDrawingObjectId:"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mDrawingObjectId:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setUseGL3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/base/EGLRuntime;->mUseGL3:Z

    .line 2
    .line 3
    return-void
.end method
