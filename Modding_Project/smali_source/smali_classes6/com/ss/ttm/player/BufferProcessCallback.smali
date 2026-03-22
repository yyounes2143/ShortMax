.class public abstract Lcom/ss/ttm/player/BufferProcessCallback;
.super Ljava/lang/Object;
.source "BufferProcessCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;
    }
.end annotation


# instance fields
.field private mProtoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttm/player/BufferProcessCallback;->mProtoName:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract closed(Ljava/lang/String;I)V
.end method

.method public getProtoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/BufferProcessCallback;->mProtoName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract isChunk(Ljava/lang/String;)Z
.end method

.method public abstract opened(Ljava/lang/String;I)V
.end method

.method public abstract processBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;
.end method

.method public abstract readed(Ljava/lang/String;I)V
.end method

.method public abstract seeked(Ljava/lang/String;JI)V
.end method

.method public setProtoName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/BufferProcessCallback;->mProtoName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
