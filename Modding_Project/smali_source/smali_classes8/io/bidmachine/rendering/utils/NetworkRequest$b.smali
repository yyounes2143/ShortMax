.class public abstract Lio/bidmachine/rendering/utils/NetworkRequest$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/NetworkRequest$f;
.implements Lio/bidmachine/rendering/utils/NetworkRequest$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
        "TT;>;",
        "Lio/bidmachine/rendering/utils/NetworkRequest$g<",
        "[BTT;>;"
    }
.end annotation


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
.method public a(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_2
    invoke-static {p1, v1}, Lsq/m;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-static {v1}, Lyq/r;->g(Ljava/io/Flushable;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object v2, v0

    .line 34
    move-object v0, p1

    .line 35
    move-object p1, v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    move-object v2, v0

    .line 39
    move-object v0, p1

    .line 40
    move-object p1, v1

    .line 41
    move-object v1, v2

    .line 42
    goto :goto_0

    .line 43
    :catchall_2
    move-exception p1

    .line 44
    move-object v1, v0

    .line 45
    :goto_0
    invoke-static {v1}, Lyq/r;->g(Ljava/io/Flushable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
