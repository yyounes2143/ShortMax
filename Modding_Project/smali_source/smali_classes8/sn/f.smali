.class public final Lsn/f;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lsn/e;


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
.method public a()Lio/bidmachine/media3/exoplayer/source/g0;
    .locals 3

    .line 1
    new-instance v0, Lsn/d;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lsn/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/g0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lio/bidmachine/media3/exoplayer/source/g0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lsn/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lsn/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
