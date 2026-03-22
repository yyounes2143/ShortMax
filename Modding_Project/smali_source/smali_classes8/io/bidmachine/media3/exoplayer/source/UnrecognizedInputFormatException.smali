.class public Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;
.super Lio/bidmachine/media3/common/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final c:Landroid/net/Uri;

.field public final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lao/n0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "+",
            "Lao/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, p1, v2, v0, v1}, Lio/bidmachine/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;->c:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/UnrecognizedInputFormatException;->d:Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    return-void
.end method
