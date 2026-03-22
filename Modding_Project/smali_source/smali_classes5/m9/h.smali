.class public final Lm9/h;
.super Ljava/lang/Object;
.source "SettingsCacheImpl_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lcom/google/firebase/sessions/settings/SettingsCacheImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/m0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;",
            "Lls/a<",
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm9/h;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lm9/h;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lm9/h;->c:Lls/a;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;)Lm9/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;",
            "Lls/a<",
            "Lj9/m0;",
            ">;",
            "Lls/a<",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;>;)",
            "Lm9/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm9/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lm9/h;-><init>(Lls/a;Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lkotlin/coroutines/CoroutineContext;Lj9/m0;Landroidx/datastore/core/DataStore;)Lcom/google/firebase/sessions/settings/SettingsCacheImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lj9/m0;",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;)",
            "Lcom/google/firebase/sessions/settings/SettingsCacheImpl;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lj9/m0;Landroidx/datastore/core/DataStore;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/sessions/settings/SettingsCacheImpl;
    .locals 3

    .line 1
    iget-object v0, p0, Lm9/h;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    iget-object v1, p0, Lm9/h;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lj9/m0;

    .line 16
    .line 17
    iget-object v2, p0, Lm9/h;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/datastore/core/DataStore;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lm9/h;->c(Lkotlin/coroutines/CoroutineContext;Lj9/m0;Landroidx/datastore/core/DataStore;)Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9/h;->b()Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
