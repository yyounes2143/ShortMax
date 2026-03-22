.class public final Lj9/l0;
.super Ljava/lang/Object;
.source "SharedSessionRepositoryImpl_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/f0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/m0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/s;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;",
            "Lls/a<",
            "Lj9/f0;",
            ">;",
            "Lls/a<",
            "Lj9/d0;",
            ">;",
            "Lls/a<",
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;>;",
            "Lls/a<",
            "Lj9/s;",
            ">;",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/l0;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lj9/l0;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lj9/l0;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Lj9/l0;->d:Lls/a;

    .line 11
    .line 12
    iput-object p5, p0, Lj9/l0;->e:Lls/a;

    .line 13
    .line 14
    iput-object p6, p0, Lj9/l0;->f:Lls/a;

    .line 15
    .line 16
    iput-object p7, p0, Lj9/l0;->g:Lls/a;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lj9/l0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;",
            "Lls/a<",
            "Lj9/f0;",
            ">;",
            "Lls/a<",
            "Lj9/d0;",
            ">;",
            "Lls/a<",
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;>;",
            "Lls/a<",
            "Lj9/s;",
            ">;",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)",
            "Lj9/l0;"
        }
    .end annotation

    .line 1
    new-instance v8, Lj9/l0;

    .line 2
    .line 3
    move-object v0, v8

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
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lj9/l0;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public static c(Lcom/google/firebase/sessions/settings/SessionsSettings;Lj9/f0;Lj9/d0;Lj9/m0;Landroidx/datastore/core/DataStore;Lj9/s;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            "Lj9/f0;",
            "Lj9/d0;",
            "Lj9/m0;",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;",
            "Lj9/s;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 2
    .line 3
    move-object v0, v8

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
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;-><init>(Lcom/google/firebase/sessions/settings/SessionsSettings;Lj9/f0;Lj9/d0;Lj9/m0;Landroidx/datastore/core/DataStore;Lj9/s;Lkotlin/coroutines/CoroutineContext;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method


# virtual methods
.method public b()Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;
    .locals 8

    .line 1
    iget-object v0, p0, Lj9/l0;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 9
    .line 10
    iget-object v0, p0, Lj9/l0;->b:Lls/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lj9/f0;

    .line 18
    .line 19
    iget-object v0, p0, Lj9/l0;->c:Lls/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lj9/d0;

    .line 27
    .line 28
    iget-object v0, p0, Lj9/l0;->d:Lls/a;

    .line 29
    .line 30
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lj9/m0;

    .line 36
    .line 37
    iget-object v0, p0, Lj9/l0;->e:Lls/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Landroidx/datastore/core/DataStore;

    .line 45
    .line 46
    iget-object v0, p0, Lj9/l0;->f:Lls/a;

    .line 47
    .line 48
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lj9/s;

    .line 54
    .line 55
    iget-object v0, p0, Lj9/l0;->g:Lls/a;

    .line 56
    .line 57
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    .line 63
    .line 64
    invoke-static/range {v1 .. v7}, Lj9/l0;->c(Lcom/google/firebase/sessions/settings/SessionsSettings;Lj9/f0;Lj9/d0;Lj9/m0;Landroidx/datastore/core/DataStore;Lj9/s;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj9/l0;->b()Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
