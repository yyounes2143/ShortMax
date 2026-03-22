.class public abstract Ln2/i;
.super Ljava/io/OutputStream;
.source "PooledByteBufferOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lk2/m;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public abstract d()Lcom/facebook/common/memory/PooledByteBuffer;
.end method

.method public abstract size()I
.end method
