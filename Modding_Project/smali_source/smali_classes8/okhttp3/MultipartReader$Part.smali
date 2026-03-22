.class public final Lokhttp3/MultipartReader$Part;
.super Ljava/lang/Object;
.source "MultipartReader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$Part;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
