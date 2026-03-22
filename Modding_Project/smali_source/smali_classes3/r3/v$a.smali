.class Lr3/v$a;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lr3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr3/v;->z(Lr3/c0;)Lr3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr3/c0<",
        "Lr3/m$a<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lr3/c0;

.field final synthetic b:Lr3/v;


# direct methods
.method constructor <init>(Lr3/v;Lr3/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v$a;->b:Lr3/v;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/v$a;->a:Lr3/c0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lr3/m$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr3/v$a;->b(Lr3/m$a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Lr3/m$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/m$a<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/v$a;->b:Lr3/v;

    .line 2
    .line 3
    invoke-static {v0}, Lr3/v;->f(Lr3/v;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lr3/m$a;->g:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lr3/v$a;->a:Lr3/c0;

    .line 13
    .line 14
    iget-object p1, p1, Lr3/m$a;->b:Lo2/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, p1}, Lr3/c0;->a(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method
