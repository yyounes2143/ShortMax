.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$m<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->g:Ljava/lang/ref/ReferenceQueue;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic O(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method bridge synthetic L()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->P()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method P()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Ljava/lang/ref/ReferenceQueue;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h(Ljava/lang/ref/ReferenceQueue;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
