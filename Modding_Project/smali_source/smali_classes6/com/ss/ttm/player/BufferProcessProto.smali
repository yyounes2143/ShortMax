.class public Lcom/ss/ttm/player/BufferProcessProto;
.super Lcom/ss/ttm/player/TraitObject;
.source "BufferProcessProto.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# static fields
.field private static final Version0:I


# instance fields
.field private mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

.field private mBufferResult:Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;


# direct methods
.method public constructor <init>(Lcom/ss/ttm/player/BufferProcessCallback;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/16 v3, 0x8

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/ss/ttm/player/TraitObject;-><init>(IIJ)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferResult:Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 13
    .line 14
    return-void
.end method

.method private closed(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/BufferProcessCallback;->closed(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private getProtoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttm/player/BufferProcessCallback;->getProtoName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private isChunk(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/BufferProcessCallback;->isChunk(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private opened(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/BufferProcessCallback;->opened(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private readed(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/BufferProcessCallback;->readed(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private receiveProcessedBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferResult:Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->buffer:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    return-object p1
.end method

.method private seeked(Ljava/lang/String;JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/ttm/player/BufferProcessCallback;->seeked(Ljava/lang/String;JI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private sendProcessBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferProcessCallback:Lcom/ss/ttm/player/BufferProcessCallback;

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/BufferProcessCallback;->processBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/ss/ttm/player/BufferProcessProto;->mBufferResult:Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget p1, p1, Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;->ret:I

    .line 18
    .line 19
    return p1
.end method


# virtual methods
.method protected native_closed(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttm/player/BufferProcessProto;->closed(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected native_getProtoName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/BufferProcessProto;->getProtoName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected native_isChunk(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/BufferProcessProto;->isChunk(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected native_opened(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttm/player/BufferProcessProto;->opened(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected native_readed(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttm/player/BufferProcessProto;->readed(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected native_receive_process_buffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/BufferProcessProto;->receiveProcessedBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected native_seeked(Ljava/lang/String;JI)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttm/player/BufferProcessProto;->seeked(Ljava/lang/String;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected native_send_process_buffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttm/player/BufferProcessProto;->sendProcessBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
