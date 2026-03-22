.class public Lcom/ss/ttm/player/AJCodecBuffer;
.super Ljava/lang/Object;
.source "AJCodecBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public index:I

.field public pts:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clone()Lcom/ss/ttm/player/AJCodecBuffer;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttm/player/AJCodecBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/ss/ttm/player/AJCodecBuffer;->size:I

    iput v1, v0, Lcom/ss/ttm/player/AJCodecBuffer;->size:I

    .line 5
    iget-wide v1, p0, Lcom/ss/ttm/player/AJCodecBuffer;->pts:J

    iput-wide v1, v0, Lcom/ss/ttm/player/AJCodecBuffer;->pts:J

    .line 6
    iget v1, p0, Lcom/ss/ttm/player/AJCodecBuffer;->index:I

    iput v1, v0, Lcom/ss/ttm/player/AJCodecBuffer;->index:I

    .line 7
    iget v1, p0, Lcom/ss/ttm/player/AJCodecBuffer;->size:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/ss/ttm/player/AJCodecBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    iput-object v1, v0, Lcom/ss/ttm/player/AJCodecBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJCodecBuffer;->clone()Lcom/ss/ttm/player/AJCodecBuffer;

    move-result-object v0

    return-object v0
.end method
