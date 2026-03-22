.class public final Lcom/inmobi/media/J4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/I4;


# instance fields
.field public final a:Landroid/graphics/Movie;

.field public b:I

.field public c:J

.field public volatile d:Z

.field public e:Lcom/inmobi/media/K4;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "filePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-int p1, v1

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    new-instance v1, Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1}, Lcom/inmobi/media/T9;->a(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {p1, v1, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "Cannot decode gif byte array"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    invoke-static {v1}, Lcom/inmobi/media/T9;->a(Ljava/io/Closeable;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public static final a(Lcom/inmobi/media/J4;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/inmobi/media/J4;->b:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/inmobi/media/J4;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Landroid/graphics/Canvas;FF)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget p2, p0, Lcom/inmobi/media/J4;->b:I

    add-int/lit8 p2, p2, 0x14

    if-lt p2, p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/J4;->e()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/inmobi/media/K4;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/inmobi/media/J4;->e:Lcom/inmobi/media/K4;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/J4;->d:Z

    .line 2
    iget-boolean p1, p0, Lcom/inmobi/media/J4;->d:Z

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/inmobi/media/J4;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/media/J4;->c:J

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/J4;->e:Lcom/inmobi/media/K4;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/J4;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/inmobi/media/J4;->c:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/inmobi/media/J4;->c:J

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-nez v2, :cond_2

    .line 26
    .line 27
    const/16 v2, 0x3e8

    .line 28
    .line 29
    :cond_2
    iget-wide v3, p0, Lcom/inmobi/media/J4;->c:J

    .line 30
    .line 31
    sub-long/2addr v0, v3

    .line 32
    int-to-long v2, v2

    .line 33
    rem-long/2addr v0, v2

    .line 34
    long-to-int v0, v0

    .line 35
    iput v0, p0, Lcom/inmobi/media/J4;->b:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/inmobi/media/J4;->a:Landroid/graphics/Movie;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lub/n0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lub/n0;-><init>(Lcom/inmobi/media/J4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    return-void
.end method
