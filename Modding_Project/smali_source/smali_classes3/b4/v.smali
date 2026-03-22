.class public interface abstract Lb4/v;
.super Ljava/lang/Object;
.source "MemoryChunk.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract A()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract B(I[BII)I
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract C()Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract D(I)B
.end method

.method public abstract F(I[BII)I
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract P(ILb4/v;II)V
    .param p2    # Lb4/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract close()V
.end method

.method public abstract getSize()I
.end method

.method public abstract getUniqueId()J
.end method

.method public abstract isClosed()Z
.end method
