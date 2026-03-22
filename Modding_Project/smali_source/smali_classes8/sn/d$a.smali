.class final Lsn/d$a;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/source/g0;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/g0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/g0;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lsn/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Lio/bidmachine/media3/exoplayer/k1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/g0;->b(Lio/bidmachine/media3/exoplayer/k1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsn/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn/d$a;->a:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/g0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
