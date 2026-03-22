.class public final Lj9/r;
.super Ljava/lang/Object;
.source "FirebaseSessions_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lcom/google/firebase/sessions/FirebaseSessions;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;",
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;",
            "Lls/a<",
            "Lj9/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/r;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lj9/r;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lj9/r;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Lj9/r;->d:Lls/a;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;)Lj9/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;",
            "Lls/a<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;",
            "Lls/a<",
            "Lj9/i0;",
            ">;)",
            "Lj9/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj9/r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lj9/r;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lj9/i0;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessions;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/sessions/FirebaseSessions;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lj9/i0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 4

    .line 1
    iget-object v0, p0, Lj9/r;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/f;

    .line 8
    .line 9
    iget-object v1, p0, Lj9/r;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 16
    .line 17
    iget-object v2, p0, Lj9/r;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 24
    .line 25
    iget-object v3, p0, Lj9/r;->d:Lls/a;

    .line 26
    .line 27
    invoke-interface {v3}, Lls/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lj9/i0;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lj9/r;->c(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lj9/i0;)Lcom/google/firebase/sessions/FirebaseSessions;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj9/r;->b()Lcom/google/firebase/sessions/FirebaseSessions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
