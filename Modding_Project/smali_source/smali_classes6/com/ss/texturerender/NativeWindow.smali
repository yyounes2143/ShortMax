.class public Lcom/ss/texturerender/NativeWindow;
.super Ljava/lang/Object;
.source "NativeWindow.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TR_NativeWindow"

.field private static isLibLoaded:Z


# instance fields
.field private mHandle:J

.field private mSurface:Landroid/view/Surface;

.field private mTexType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "load texturerender_native success"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    const-string/jumbo v3, "texturerender_native"

    .line 6
    .line 7
    .line 8
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :goto_0
    sget-object v3, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v3, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-boolean v1, Lcom/ss/texturerender/NativeWindow;->isLibLoaded:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v3

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v3

    .line 22
    :try_start_1
    sget-object v4, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v6, "load texturerender_native fail,error:"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    return-void

    .line 50
    :goto_2
    sget-object v4, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-boolean v1, Lcom/ss/texturerender/NativeWindow;->isLibLoaded:Z

    .line 56
    .line 57
    throw v3
.end method

.method public constructor <init>(ILandroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/NativeWindow;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 10
    .line 11
    sget-boolean v0, Lcom/ss/texturerender/NativeWindow;->isLibLoaded:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/ss/texturerender/NativeWindow;->mTexType:I

    .line 16
    .line 17
    sget-object p2, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "lib not loaded"

    .line 20
    .line 21
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/ss/texturerender/NativeWindow;->mSurface:Landroid/view/Surface;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/ss/texturerender/NativeWindow;->nativeSetSurface(Landroid/view/Surface;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 32
    .line 33
    iput p1, p0, Lcom/ss/texturerender/NativeWindow;->mTexType:I

    .line 34
    .line 35
    return-void
.end method

.method public static getFormat(Landroid/view/Surface;)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ss/texturerender/NativeWindow;->isLibLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "lib not loaded"

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-static {v1, p0, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/ss/texturerender/NativeWindow;->nativeGetFormat(Landroid/view/Surface;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private static native nativeGetFormat(Landroid/view/Surface;)I
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetSurfaceFormat(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeReleaseSurface(J)I
.end method

.method private static native nativeSetBuffersGeometry(JIII)I
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)J
.end method


# virtual methods
.method public getHeight()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/texturerender/NativeWindow;->nativeGetHeight(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getSurfaceFormat()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/texturerender/NativeWindow;->nativeGetSurfaceFormat(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getWidth()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/texturerender/NativeWindow;->nativeGetWidth(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public releaseWindow()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/texturerender/NativeWindow;->nativeReleaseSurface(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-wide v2, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 16
    .line 17
    return v0
.end method

.method public setBuffersGeometry(III)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/NativeWindow;->mTexType:I

    .line 12
    .line 13
    sget-object v1, Lcom/ss/texturerender/NativeWindow;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "setBuffersGeometry,w:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ",h:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ",fmt:"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lcom/ss/texturerender/NativeWindow;->mHandle:J

    .line 52
    .line 53
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/texturerender/NativeWindow;->nativeSetBuffersGeometry(JIII)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method
