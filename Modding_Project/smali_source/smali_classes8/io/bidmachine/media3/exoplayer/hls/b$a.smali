.class final Lio/bidmachine/media3/exoplayer/hls/b$a;
.super Ltn/k;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private l:[B


# direct methods
.method public constructor <init>(Len/d;Len/g;Lio/bidmachine/media3/common/a;ILjava/lang/Object;[B)V
    .locals 8
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x3

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    move-object v6, p5

    .line 8
    move-object v7, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Ltn/k;-><init>(Len/d;Len/g;ILio/bidmachine/media3/common/a;ILjava/lang/Object;[B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected e([BI)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/b$a;->l:[B

    .line 6
    .line 7
    return-void
.end method

.method public h()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/b$a;->l:[B

    .line 2
    .line 3
    return-object v0
.end method
