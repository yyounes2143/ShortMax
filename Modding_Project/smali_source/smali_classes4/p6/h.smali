.class public abstract Lp6/h;
.super Lr5/h;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lp6/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr5/h<",
        "Lp6/m;",
        "Lp6/n;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lp6/j;"
    }
.end annotation


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lp6/m;

    .line 3
    .line 4
    new-array v0, v0, [Lp6/n;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Lr5/h;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lr5/f;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp6/h;->n:Ljava/lang/String;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lr5/h;->q(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic r(Lp6/h;Lr5/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr5/h;->n(Lr5/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp6/h;->s()Lp6/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic d()Lr5/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp6/h;->t()Lp6/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp6/h;->u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lr5/f;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lp6/m;

    .line 2
    .line 3
    check-cast p2, Lp6/n;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lp6/h;->v(Lp6/m;Lp6/n;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected final s()Lp6/m;
    .locals 1

    .line 1
    new-instance v0, Lp6/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lp6/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final t()Lp6/n;
    .locals 1

    .line 1
    new-instance v0, Lp6/h$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lp6/h$a;-><init>(Lp6/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected final v(Lp6/m;Lp6/n;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v1, v0, p3}, Lp6/h;->w([BIZ)Lp6/i;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 22
    .line 23
    iget-wide v6, p1, Lp6/m;->i:J

    .line 24
    .line 25
    move-object v2, p2

    .line 26
    invoke-virtual/range {v2 .. v7}, Lp6/n;->m(JLp6/i;J)V

    .line 27
    .line 28
    .line 29
    const/high16 p1, -0x80000000

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lr5/a;->c(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    return-object p1
.end method

.method protected abstract w([BIZ)Lp6/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method
