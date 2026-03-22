.class public final Lcom/ss/ttm/player/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field public static final CACHE_MODE_ALL:I = 0x0

.field public static final CACHE_MODE_DYNAMIC_EXCEPTION:I = 0x1

.field public static final CACHE_MODE_DYNAMIC_EXCEPTION_OTHER:I = 0x2

.field public static final CACHE_MODE_FORBIDDEN_EXCEPTION:I = 0x3

.field public static final CACHE_MODE_FORBIDDEN_EXCEPTION_OTHER:I = 0x4

.field public static final EVENT_SETOUTPUTSSURFACE_EXCEPTION:I = 0x1

.field public static final EVENT_SETOUTPUTSSURFACE_EXCEPTION_OTHER:I = 0x2

.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final MAX_CAPACITY_CACHES:I = 0x2

.field private static SetOutputSurfaceExceptionCounter:I = 0x0

.field private static volatile SetOutputSurfaceExceptionLimit:I = 0x1

.field private static SetOutputSurfaceExceptionOtherCounter:I = 0x0

.field private static volatile SetOutputSurfaceExceptionOtherLimit:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static volatile cacheMode:I

.field private static final caches:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/ss/ttm/player/DummySurface;",
            ">;"
        }
    .end annotation
.end field

.field private static secureMode:I

.field private static secureModeInitialized:Z

.field private static volatile useDummySurfaceCaches:Z


# instance fields
.field private volatile cached:Z

.field private hasSetOutputSurfaceException:Z

.field private hasSetOutputSurfaceExceptionOther:Z

.field public final secure:Z

.field private final thread:Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/player/DummySurface;->caches:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/ss/ttm/player/DummySurface;->useDummySurfaceCaches:Z

    .line 10
    .line 11
    sput v0, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/ss/ttm/player/DummySurface;->cached:Z

    .line 4
    iput-boolean p2, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceException:Z

    .line 5
    iput-boolean p2, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceExceptionOther:Z

    .line 6
    iput-object p1, p0, Lcom/ss/ttm/player/DummySurface;->thread:Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;

    .line 7
    iput-boolean p3, p0, Lcom/ss/ttm/player/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/ss/ttm/player/DummySurface$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttm/player/DummySurface;-><init>(Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .locals 0

    .line 1
    return-void
.end method

.method private static getSecureModeV24(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge p0, v0, :cond_1

    .line 7
    .line 8
    const-string p0, "samsung"

    .line 9
    .line 10
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const-string p0, "XT1650"

    .line 19
    .line 20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v0, 0x3055

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    const-string v0, "EGL_EXT_protected_content"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const/4 p0, 0x2

    .line 62
    :goto_0
    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttm/player/DummySurface;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/ttm/player/DummySurface;->secureModeInitialized:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/ss/ttm/player/DummySurface;->getSecureModeV24(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sput p0, Lcom/ss/ttm/player/DummySurface;->secureMode:I

    .line 14
    .line 15
    sput-boolean v2, Lcom/ss/ttm/player/DummySurface;->secureModeInitialized:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :goto_0
    sget p0, Lcom/ss/ttm/player/DummySurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return v2

    .line 28
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static newInstanceV17(Z)Lcom/ss/ttm/player/DummySurface;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ss/ttm/player/DummySurface;->useDummySurfaceCaches:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttm/player/DummySurface;->caches:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/ss/ttm/player/DummySurface;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    iput-boolean p0, v0, Lcom/ss/ttm/player/DummySurface;->cached:Z

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "get cached DummySurface@"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "DummySurface"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/ss/ttm/player/DummySurface;->newInstanceV17Internal(Z)Lcom/ss/ttm/player/DummySurface;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method private static newInstanceV17Internal(Z)Lcom/ss/ttm/player/DummySurface;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "create DummySurface internal:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DummySurface"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/ss/ttm/player/DummySurface;->assertApiLevel17OrHigher()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;-><init>()V

    .line 29
    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    sget p0, Lcom/ss/ttm/player/DummySurface;->secureMode:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;->init(I)Lcom/ss/ttm/player/DummySurface;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private releaseInternal()V
    .locals 3

    .line 1
    const-string v0, "DummySurface"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "release DummySurface internal@"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/ttm/player/DummySurface;->thread:Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/ttm/player/DummySurface;->threadReleased:Z

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/ss/ttm/player/DummySurface;->thread:Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/ss/ttm/player/DummySurface$DummySurfaceThread;->release()V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/ss/ttm/player/DummySurface;->threadReleased:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1
.end method

.method public static useCaches(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ss/ttm/player/DummySurface;->useCaches(ZI)V

    return-void
.end method

.method public static useCaches(ZI)V
    .locals 1

    .line 2
    sget v0, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionLimit:I

    invoke-static {p0, p1, v0}, Lcom/ss/ttm/player/DummySurface;->useCaches(ZII)V

    return-void
.end method

.method public static useCaches(ZII)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useCaches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DummySurface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sput-boolean p0, Lcom/ss/ttm/player/DummySurface;->useDummySurfaceCaches:Z

    .line 5
    sput p1, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 6
    sput p2, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionLimit:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    .line 7
    sput p2, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionOtherLimit:I

    .line 8
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/ss/ttm/player/DummySurface;->useDummySurfaceCaches:Z

    if-nez p0, :cond_3

    .line 9
    :cond_2
    :goto_1
    sget-object p0, Lcom/ss/ttm/player/DummySurface;->caches:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ttm/player/DummySurface;

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/ss/ttm/player/DummySurface;->release()V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addEvent(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceExceptionOther:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v0, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceException:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceExceptionOther:Z

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ss/ttm/player/DummySurface;->useDummySurfaceCaches:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/ss/ttm/player/DummySurface;->caches:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/ss/ttm/player/DummySurface;->secure:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_5

    .line 31
    .line 32
    sget v4, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    .line 33
    .line 34
    if-ne v4, v3, :cond_2

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceException:Z

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    sget v4, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    .line 42
    .line 43
    if-ne v4, v1, :cond_3

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceExceptionOther:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    sget v1, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    if-ne v1, v4, :cond_4

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceException:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    sget v1, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionCounter:I

    .line 60
    .line 61
    add-int/2addr v1, v3

    .line 62
    sput v1, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionCounter:I

    .line 63
    .line 64
    sget v4, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionLimit:I

    .line 65
    .line 66
    if-lt v1, v4, :cond_5

    .line 67
    .line 68
    invoke-static {v2}, Lcom/ss/ttm/player/DummySurface;->useCaches(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    sget v1, Lcom/ss/ttm/player/DummySurface;->cacheMode:I

    .line 73
    .line 74
    const/4 v4, 0x4

    .line 75
    if-ne v1, v4, :cond_5

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/ss/ttm/player/DummySurface;->hasSetOutputSurfaceExceptionOther:Z

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    sget v1, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionOtherCounter:I

    .line 82
    .line 83
    add-int/2addr v1, v3

    .line 84
    sput v1, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionOtherCounter:I

    .line 85
    .line 86
    sget v4, Lcom/ss/ttm/player/DummySurface;->SetOutputSurfaceExceptionOtherLimit:I

    .line 87
    .line 88
    if-lt v1, v4, :cond_5

    .line 89
    .line 90
    invoke-static {v2}, Lcom/ss/ttm/player/DummySurface;->useCaches(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    move v2, v0

    .line 95
    :goto_2
    if-nez v2, :cond_6

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/ss/ttm/player/DummySurface;->releaseInternal()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    iget-boolean v0, p0, Lcom/ss/ttm/player/DummySurface;->cached:Z

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    sget-object v0, Lcom/ss/ttm/player/DummySurface;->caches:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iput-boolean v3, p0, Lcom/ss/ttm/player/DummySurface;->cached:Z

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "cache DummySurface@"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "DummySurface"

    .line 134
    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_7
    return-void
.end method
