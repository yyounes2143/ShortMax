.class final Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JavaDataStorage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
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
    c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1"
    f = "JavaDataStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "TT;>;TT;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->k:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->k:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final i(Landroidx/datastore/preferences/core/MutablePreferences;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->i(Landroidx/datastore/preferences/core/MutablePreferences;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1$1;->k:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
