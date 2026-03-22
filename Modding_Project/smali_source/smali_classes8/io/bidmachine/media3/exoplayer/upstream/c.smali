.class public final Lio/bidmachine/media3/exoplayer/upstream/c;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$e;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Len/g;

.field public final c:I

.field private final d:Len/n;

.field private final e:Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Len/d;Landroid/net/Uri;ILio/bidmachine/media3/exoplayer/upstream/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Len/d;",
            "Landroid/net/Uri;",
            "I",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Len/g$b;

    invoke-direct {v0}, Len/g$b;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Len/g$b;->i(Landroid/net/Uri;)Len/g$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Len/g$b;->b(I)Len/g$b;

    move-result-object p2

    invoke-virtual {p2}, Len/g$b;->a()Len/g;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/upstream/c;-><init>(Len/d;Len/g;ILio/bidmachine/media3/exoplayer/upstream/c$a;)V

    return-void
.end method

.method public constructor <init>(Len/d;Len/g;ILio/bidmachine/media3/exoplayer/upstream/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Len/d;",
            "Len/g;",
            "I",
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Len/n;

    invoke-direct {v0, p1}, Len/n;-><init>(Len/d;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 7
    iput p3, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->c:I

    .line 8
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->e:Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 9
    invoke-static {}, Lsn/i;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Len/n;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Len/n;->f()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Len/n;->e()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Len/n;->g()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Len/e;

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 9
    .line 10
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->b:Len/g;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Len/e;-><init>(Len/d;Len/g;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Len/e;->k()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->d:Len/n;

    .line 19
    .line 20
    invoke-virtual {v1}, Len/n;->getUri()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->e:Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 31
    .line 32
    invoke-interface {v2, v1, v0}, Lio/bidmachine/media3/exoplayer/upstream/c$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/c;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method
