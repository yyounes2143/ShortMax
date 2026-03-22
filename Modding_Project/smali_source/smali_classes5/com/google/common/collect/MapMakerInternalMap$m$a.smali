.class final Lcom/google/common/collect/MapMakerInternalMap$m$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$i<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$m<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$m$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$m$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;->a:Lcom/google/common/collect/MapMakerInternalMap$m$a;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$m$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$m$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;->a:Lcom/google/common/collect/MapMakerInternalMap$m$a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 4
    .line 5
    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->t(Lcom/google/common/collect/MapMakerInternalMap$h;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iget v1, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$m;->b(Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->O(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$s;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p3, p1}, Lcom/google/common/collect/MapMakerInternalMap$m;->c(Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$s;)Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 30
    .line 31
    .line 32
    return-object p3
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$m;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$m$b;

    .line 11
    .line 12
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-object p1
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;I)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$m<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$m;->b(Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$t;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->O(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/MapMakerInternalMap$t;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$h;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v1}, Lcom/google/common/collect/MapMakerInternalMap$m;->c(Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$s;)Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$s;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
