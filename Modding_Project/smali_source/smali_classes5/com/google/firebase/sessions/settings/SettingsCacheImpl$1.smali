.class final Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/settings/SettingsCacheImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lj9/m0;Landroidx/datastore/core/DataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.google.firebase.sessions.settings.SettingsCacheImpl$1"
    f = "SettingsCache.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/google/firebase/sessions/settings/SettingsCacheImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/SettingsCacheImpl;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->i:Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final synthetic i(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/sessions/settings/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->j(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/sessions/settings/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final synthetic j(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/sessions/settings/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->i:Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;-><init>(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->i:Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->g(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;)Landroidx/datastore/core/DataStore;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkt/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->i:Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;->f(Lcom/google/firebase/sessions/settings/SettingsCacheImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v3, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1$a;

    .line 44
    .line 45
    invoke-direct {v3, v1}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 46
    .line 47
    .line 48
    iput v2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl$1;->h:I

    .line 49
    .line 50
    invoke-interface {p1, v3, p0}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p1
.end method
