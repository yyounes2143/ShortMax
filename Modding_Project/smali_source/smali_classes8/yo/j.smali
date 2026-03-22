.class public abstract Lyo/j;
.super Lfn/f;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lyo/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfn/f<",
        "Lyo/o;",
        "Lyo/p;",
        "Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;",
        ">;",
        "Lyo/l;"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lyo/o;

    .line 3
    .line 4
    new-array v0, v0, [Lyo/p;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Lfn/f;-><init>([Lio/bidmachine/media3/decoder/DecoderInputBuffer;[Lfn/e;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lyo/j;->o:Ljava/lang/String;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfn/f;->s(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic t(Lyo/j;Lfn/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfn/f;->p(Lfn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyo/j;->u()Lyo/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic f()Lfn/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyo/j;->v()Lyo/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyo/j;->w(Ljava/lang/Throwable;)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic h(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lfn/e;Z)Lio/bidmachine/media3/decoder/DecoderException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lyo/o;

    .line 2
    .line 3
    check-cast p2, Lyo/p;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lyo/j;->x(Lyo/o;Lyo/p;Z)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final u()Lyo/o;
    .locals 1

    .line 1
    new-instance v0, Lyo/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lyo/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final v()Lyo/p;
    .locals 1

    .line 1
    new-instance v0, Lyo/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lyo/j$a;-><init>(Lyo/j;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final w(Ljava/lang/Throwable;)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected final x(Lyo/o;Lyo/p;Z)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v1, v0, p3}, Lyo/j;->y([BIZ)Lyo/k;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-wide v3, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 22
    .line 23
    iget-wide v6, p1, Lyo/o;->j:J

    .line 24
    .line 25
    move-object v2, p2

    .line 26
    invoke-virtual/range {v2 .. v7}, Lyo/p;->m(JLyo/k;J)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p2, Lfn/e;->d:Z
    :try_end_0
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    return-object p1
.end method

.method protected abstract y([BIZ)Lyo/k;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation
.end method
