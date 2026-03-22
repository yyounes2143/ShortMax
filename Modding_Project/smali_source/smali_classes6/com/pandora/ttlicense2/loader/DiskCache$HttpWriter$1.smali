.class Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter$1;
.super Ljava/io/BufferedInputStream;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->write(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter$1;->this$0:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter$1;->this$0:Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->canceled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string v0, "canceled when read."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
