.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;
.super Ljava/io/IOException;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalMergeException"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;->a:I

    .line 5
    .line 6
    return-void
.end method
