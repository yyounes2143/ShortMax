.class public interface abstract Lcom/ss/ttm/player/IMediaDataSource;
.super Ljava/lang/Object;
.source "IMediaDataSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field public static final MDS_VERSION_0:I = 0x0

.field public static final MDS_VERSION_1:I = 0x1


# virtual methods
.method public close(I)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract close()V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "/mds_default_file"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMDSVersion()I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getSize()J
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getSize(I)J
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public open(Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method public readAt(IJLjava/nio/ByteBuffer;II)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract readAt(J[BII)I
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
