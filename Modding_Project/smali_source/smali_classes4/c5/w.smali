.class public final Lc5/w;
.super Ljava/lang/Object;
.source "TransportRuntime_Factory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Lc5/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj5/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj5/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Li5/e;",
            ">;",
            "Lls/a<",
            "Lj5/o;",
            ">;",
            "Lls/a<",
            "Lj5/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/w;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lc5/w;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lc5/w;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Lc5/w;->d:Lls/a;

    .line 11
    .line 12
    iput-object p5, p0, Lc5/w;->e:Lls/a;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lc5/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Li5/e;",
            ">;",
            "Lls/a<",
            "Lj5/o;",
            ">;",
            "Lls/a<",
            "Lj5/s;",
            ">;)",
            "Lc5/w;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc5/w;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lc5/w;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static c(Lm5/a;Lm5/a;Li5/e;Lj5/o;Lj5/s;)Lc5/u;
    .locals 7

    .line 1
    new-instance v6, Lc5/u;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lc5/u;-><init>(Lm5/a;Lm5/a;Li5/e;Lj5/o;Lj5/s;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public b()Lc5/u;
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/w;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm5/a;

    .line 8
    .line 9
    iget-object v1, p0, Lc5/w;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lm5/a;

    .line 16
    .line 17
    iget-object v2, p0, Lc5/w;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Li5/e;

    .line 24
    .line 25
    iget-object v3, p0, Lc5/w;->d:Lls/a;

    .line 26
    .line 27
    invoke-interface {v3}, Lls/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lj5/o;

    .line 32
    .line 33
    iget-object v4, p0, Lc5/w;->e:Lls/a;

    .line 34
    .line 35
    invoke-interface {v4}, Lls/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lj5/s;

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3, v4}, Lc5/w;->c(Lm5/a;Lm5/a;Li5/e;Lj5/o;Lj5/s;)Lc5/u;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc5/w;->b()Lc5/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
