.class Lcom/google/common/collect/MapMakerInternalMap$q;
.super Lcom/google/common/collect/MapMakerInternalMap$c;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$q$a;,
        Lcom/google/common/collect/MapMakerInternalMap$q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$c<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$q<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$r<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$q<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile b:Lcom/google/common/collect/MapMakerInternalMap$s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$s<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$q<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->q()Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$q;->b:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$q;->b:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$s;)Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$q;->b:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$s<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$q<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$q;->b:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$q;->b:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$s;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
