.class final Lcom/google/common/collect/MapMakerInternalMap$q$b;
.super Lcom/google/common/collect/MapMakerInternalMap$q;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$q<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$q;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->c:Lcom/google/common/collect/MapMakerInternalMap$q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/MapMakerInternalMap$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->c:Lcom/google/common/collect/MapMakerInternalMap$q;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getNext()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$q$b;->d()Lcom/google/common/collect/MapMakerInternalMap$q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
