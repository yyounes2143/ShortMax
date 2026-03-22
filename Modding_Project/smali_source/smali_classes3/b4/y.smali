.class public final Lb4/y;
.super Ljava/lang/Object;
.source "MemoryPooledByteBufferFactory.kt"

# interfaces
.implements Ln2/g;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ln2/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/e;Ln2/j;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/memory/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln2/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pooledByteStreams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 15
    .line 16
    iput-object p2, p0, Lb4/y;->b:Ln2/j;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb4/y;->g(Ljava/io/InputStream;)Lb4/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b()Ln2/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb4/y;->j()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic c([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb4/y;->i([B)Lb4/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(I)Ln2/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb4/y;->k(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb4/y;->h(Ljava/io/InputStream;I)Lb4/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lb4/x;
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputStream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "outputStream"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lb4/y;->b:Ln2/j;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ln2/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->m()Lb4/x;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public g(Ljava/io/InputStream;)Lb4/x;
    .locals 5
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputStream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 7
    .line 8
    iget-object v1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/e;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lb4/y;->f(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lb4/x;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public h(Ljava/io/InputStream;I)Lb4/x;
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputStream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 7
    .line 8
    iget-object v1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/e;I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lb4/y;->f(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lb4/x;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public i([B)Lb4/x;
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 7
    .line 8
    iget-object v1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/e;I)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p1, v2, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->write([BII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->m()Lb4/x;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    invoke-static {p1}, Lk2/m;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public j()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/e;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public k(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lb4/y;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/e;I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
