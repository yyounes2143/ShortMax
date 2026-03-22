.class public abstract Lio/bidmachine/rendering/utils/NetworkRequest$d;
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
    name = "d"
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
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->b:Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 7
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
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lar/a;->e(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {v0}, Lar/a;->b(Ljava/io/File;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-long v1, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_2
    invoke-static {p1, v4}, Lsq/m;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-static {v4}, Lyq/r;->g(Ljava/io/Flushable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    cmp-long p1, v1, v5

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->b:Ljava/io/File;

    .line 46
    .line 47
    invoke-static {v0, p1}, Lar/a;->g(Ljava/io/File;Ljava/io/File;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {v0}, Lar/a;->d(Ljava/io/File;)Z

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->b:Ljava/io/File;

    .line 57
    .line 58
    invoke-static {p1}, Lar/a;->f(Ljava/io/File;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "Can\'t rename temp file"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$d;->b:Ljava/io/File;

    .line 74
    .line 75
    invoke-interface {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_2
    invoke-static {v0}, Lar/a;->d(Ljava/io/File;)Z

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "The downloaded file size does not match the stated size"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    :goto_1
    move-object v3, p1

    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object v4, v3

    .line 96
    goto :goto_1

    .line 97
    :catchall_2
    move-exception v0

    .line 98
    move-object v4, v3

    .line 99
    :goto_2
    invoke-static {v4}, Lyq/r;->g(Ljava/io/Flushable;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Lyq/r;->b(Ljava/io/Closeable;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "Can\'t get external dir"

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method
