.class interface abstract Lcom/pandora/ttlicense2/loader/DiskCache$Writer;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Writer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;
    }
.end annotation


# virtual methods
.method public abstract write(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
