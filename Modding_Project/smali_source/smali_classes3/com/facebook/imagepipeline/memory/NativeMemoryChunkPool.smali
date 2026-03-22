.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;
.super Lcom/facebook/imagepipeline/memory/e;
.source "NativeMemoryChunkPool.java"


# annotations
.annotation build Lk2/d;
.end annotation


# direct methods
.method public constructor <init>(Ln2/c;Lb4/e0;Lb4/f0;)V
    .locals 0
    .annotation build Lk2/d;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/e;-><init>(Ln2/c;Lb4/e0;Lb4/f0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected E(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected bridge synthetic f(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->E(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic z(I)Lb4/v;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;->E(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
