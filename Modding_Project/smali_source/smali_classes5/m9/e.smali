.class public final Lm9/e;
.super Ljava/lang/Object;
.source "RemoteSettings_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lcom/google/firebase/sessions/settings/RemoteSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/m0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lx8/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm9/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm9/g;",
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
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Lx8/e;",
            ">;",
            "Lls/a<",
            "Lj9/b;",
            ">;",
            "Lls/a<",
            "Lm9/a;",
            ">;",
            "Lls/a<",
            "Lm9/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm9/e;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lm9/e;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lm9/e;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Lm9/e;->d:Lls/a;

    .line 11
    .line 12
    iput-object p5, p0, Lm9/e;->e:Lls/a;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lm9/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Lx8/e;",
            ">;",
            "Lls/a<",
            "Lj9/b;",
            ">;",
            "Lls/a<",
            "Lm9/a;",
            ">;",
            "Lls/a<",
            "Lm9/g;",
            ">;)",
            "Lm9/e;"
        }
    .end annotation

    .line 1
    new-instance v6, Lm9/e;

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
    invoke-direct/range {v0 .. v5}, Lm9/e;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static c(Lj9/m0;Lx8/e;Lj9/b;Lm9/a;Lm9/g;)Lcom/google/firebase/sessions/settings/RemoteSettings;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/firebase/sessions/settings/RemoteSettings;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/settings/RemoteSettings;-><init>(Lj9/m0;Lx8/e;Lj9/b;Lm9/a;Lm9/g;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/firebase/sessions/settings/RemoteSettings;
    .locals 5

    .line 1
    iget-object v0, p0, Lm9/e;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj9/m0;

    .line 8
    .line 9
    iget-object v1, p0, Lm9/e;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lx8/e;

    .line 16
    .line 17
    iget-object v2, p0, Lm9/e;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lj9/b;

    .line 24
    .line 25
    iget-object v3, p0, Lm9/e;->d:Lls/a;

    .line 26
    .line 27
    invoke-interface {v3}, Lls/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lm9/a;

    .line 32
    .line 33
    iget-object v4, p0, Lm9/e;->e:Lls/a;

    .line 34
    .line 35
    invoke-interface {v4}, Lls/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lm9/g;

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3, v4}, Lm9/e;->c(Lj9/m0;Lx8/e;Lj9/b;Lm9/a;Lm9/g;)Lcom/google/firebase/sessions/settings/RemoteSettings;

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
    invoke-virtual {p0}, Lm9/e;->b()Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
