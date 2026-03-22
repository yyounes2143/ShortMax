.class public Lcom/facebook/animated/gif/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"

# interfaces
.implements Ll3/b;
.implements Lm3/c;


# annotations
.annotation build Lk2/d;
.end annotation


# static fields
.field private static volatile b:Z


# instance fields
.field private a:Landroid/graphics/Bitmap$Config;

.field private mNativeContext:J
    .annotation build Lk2/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lk2/d;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/animated/gif/GifImage;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .annotation build Lk2/d;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/animated/gif/GifImage;->a:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifImage;->mNativeContext:J

    return-void
.end method

.method public static h(Ljava/nio/ByteBuffer;Ls3/d;)Lcom/facebook/animated/gif/GifImage;
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    iget v0, p1, Ls3/d;->b:I

    .line 8
    .line 9
    iget-boolean v1, p1, Ls3/d;->g:Z

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;IZ)Lcom/facebook/animated/gif/GifImage;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p1, p1, Ls3/d;->i:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/facebook/animated/gif/GifImage;->a:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    return-object p0
.end method

.method public static i(JILs3/d;)Lcom/facebook/animated/gif/GifImage;
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->j()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lk2/h;->b(Ljava/lang/Boolean;)V

    .line 18
    .line 19
    .line 20
    iget v0, p3, Ls3/d;->b:I

    .line 21
    .line 22
    iget-boolean v1, p3, Ls3/d;->g:Z

    .line 23
    .line 24
    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromNativeMemory(JIIZ)Lcom/facebook/animated/gif/GifImage;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p1, p3, Ls3/d;->i:Landroid/graphics/Bitmap$Config;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/facebook/animated/gif/GifImage;->a:Landroid/graphics/Bitmap$Config;

    .line 31
    .line 32
    return-object p0
.end method

.method private static declared-synchronized j()V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/animated/gif/GifImage;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/facebook/animated/gif/GifImage;->b:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/facebook/animated/gif/GifImage;->b:Z

    .line 10
    .line 11
    const-string v1, "gifimage"

    .line 12
    .line 13
    invoke-static {v1}, Lw4/a;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v1
.end method

.method private static k(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 25
    .line 26
    return-object p0
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;IZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lk2/d;
    .end annotation
.end method

.method private static native nativeCreateFromFileDescriptor(IIZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lk2/d;
    .end annotation
.end method

.method private static native nativeCreateFromNativeMemory(JIIZ)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeDispose()V
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeFinalize()V
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetDuration()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetFrameCount()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetFrameDurations()[I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetHeight()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetLoopCount()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetSizeInBytes()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeGetWidth()I
    .annotation build Lk2/d;
    .end annotation
.end method

.method private native nativeIsAnimated()Z
    .annotation build Lk2/d;
    .end annotation
.end method


# virtual methods
.method public a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->l(I)Lcom/facebook/animated/gif/GifFrame;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    new-instance v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->b()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->c()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    sget-object v7, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->BLEND_WITH_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->d()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Lcom/facebook/animated/gif/GifImage;->k(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    move-object v1, v9

    .line 34
    move v2, p1

    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIILcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->dispose()V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->dispose()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c(JILs3/d;)Ll3/b;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/animated/gif/GifImage;->i(JILs3/d;)Lcom/facebook/animated/gif/GifImage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;Ls3/d;)Ll3/b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/facebook/animated/gif/GifImage;->h(Ljava/nio/ByteBuffer;Ls3/d;)Lcom/facebook/animated/gif/GifImage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(I)Ll3/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->l(I)Lcom/facebook/animated/gif/GifFrame;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/animated/gif/GifImage;->a:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeFinalize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameDurations()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getLoopCount()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetLoopCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_1
    return v2
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetSizeInBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public l(I)Lcom/facebook/animated/gif/GifFrame;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
