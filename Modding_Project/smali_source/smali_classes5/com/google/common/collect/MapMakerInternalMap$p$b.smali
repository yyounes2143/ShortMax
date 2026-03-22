.class final Lcom/google/common/collect/MapMakerInternalMap$p$b;
.super Lcom/google/common/collect/MapMakerInternalMap$p;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$p;
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
        "Lcom/google/common/collect/MapMakerInternalMap$p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$p<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$p<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$p;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$p$b;->c:Lcom/google/common/collect/MapMakerInternalMap$p;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$p;Lcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$p$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$p;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/MapMakerInternalMap$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$p<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$p$b;->c:Lcom/google/common/collect/MapMakerInternalMap$p;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getNext()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$p$b;->d()Lcom/google/common/collect/MapMakerInternalMap$p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
