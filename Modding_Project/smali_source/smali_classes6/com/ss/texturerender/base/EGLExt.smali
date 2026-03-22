.class public Lcom/ss/texturerender/base/EGLExt;
.super Ljava/lang/Object;
.source "EGLExt.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field private static isLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "load texturerender_native success"

    .line 2
    .line 3
    const-string v1, "EGLExt"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, -0x1

    .line 7
    :try_start_0
    const-string/jumbo v4, "texturerender_native"

    .line 8
    .line 9
    .line 10
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v3, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-boolean v2, Lcom/ss/texturerender/base/EGLExt;->isLibLoaded:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v4

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v4

    .line 22
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v6, "load texturerender_native fail,error:"

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v1, v4}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return-void

    .line 48
    :goto_2
    invoke-static {v3, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-boolean v2, Lcom/ss/texturerender/base/EGLExt;->isLibLoaded:Z

    .line 52
    .line 53
    throw v4
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bindHardwareBufferToTexture(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;II)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/ss/texturerender/base/EGLExt;->isLibLoaded:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/texturerender/base/EGLExt;->nBindHardwareBufferToTexture(JLandroid/hardware/HardwareBuffer;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 22
    return p0
.end method

.method private static native nBindHardwareBufferToTexture(JLandroid/hardware/HardwareBuffer;II)I
.end method
