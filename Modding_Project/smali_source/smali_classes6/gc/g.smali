.class public final Lgc/g;
.super Ljava/lang/Object;
.source "LimitedSink.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Lokio/Buffer;J)V
    .locals 2
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "limited"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v0, p2, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lgc/g;->a:Lokio/Buffer;

    .line 16
    .line 17
    iput-wide p2, p0, Lgc/g;->b:J

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "limit has to be grater than 0"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgc/g;->a:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgc/g;->a:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "source"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lgc/g;->b:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p2

    .line 19
    iget-object v0, p0, Lgc/g;->a:Lokio/Buffer;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lgc/g;->b:J

    .line 25
    .line 26
    sub-long/2addr v0, p2

    .line 27
    iput-wide v0, p0, Lgc/g;->b:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method
