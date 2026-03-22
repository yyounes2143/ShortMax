.class public Lr3/t;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lr3/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr3/w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lr3/y;


# direct methods
.method public constructor <init>(Lr3/w;Lr3/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/w<",
            "TK;TV;>;",
            "Lr3/y;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/t;->a:Lr3/w;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/t;->b:Lr3/y;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/t;->a:Lr3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lr3/w;->a(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lk2/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/i<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/t;->a:Lr3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lr3/w;->b(Lk2/i;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Ljava/lang/Object;Lo2/a;)Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo2/a<",
            "TV;>;)",
            "Lo2/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/t;->b:Lr3/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lr3/y;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/t;->a:Lr3/w;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lr3/w;->d(Ljava/lang/Object;Lo2/a;)Lo2/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lo2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo2/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/t;->a:Lr3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lr3/w;->get(Ljava/lang/Object;)Lo2/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lr3/t;->b:Lr3/y;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lr3/y;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lr3/t;->b:Lr3/y;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lr3/y;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
.end method
