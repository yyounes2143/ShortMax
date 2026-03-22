.class final Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseRemoteConfigDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->l(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
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
    c = "com.startshorts.androidplayer.repo.config.firebaseDS.FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1"
    f = "FirebaseRemoteConfigDS.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebaseRemoteConfigDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,88:1\n216#2,2:89\n*S KotlinDebug\n*F\n+ 1 FirebaseRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1\n*L\n47#1:89,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->j:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

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

.method public static synthetic i(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->j(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/gms/tasks/Task;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->j()Lcom/google/firebase/remoteconfig/a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/a;->i()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "getAll(...)"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v10, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lf9/j;

    .line 61
    .line 62
    invoke-interface {v0}, Lf9/j;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v0, "asString(...)"

    .line 67
    .line 68
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v8, 0x4

    .line 72
    const/4 v9, 0x0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    .line 75
    move-object v3, v10

    .line 76
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;-><init>(Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->o(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lud/b;->a:Lud/b;

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    invoke-virtual {p1, p2}, Lud/b;->I3(Z)V

    .line 90
    .line 91
    .line 92
    const-string p1, "query_succeed"

    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->j(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v0, "configSize = "

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_1

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->e(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_3
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_1
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->j:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->j()Lcom/google/firebase/remoteconfig/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lf9/i$b;

    .line 16
    .line 17
    invoke-direct {v0}, Lf9/i$b;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v2, 0x2

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lf9/i$b;->d(J)Lf9/i$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lf9/i$b;->c()Lf9/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/a;->s(Lf9/i;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->j()Lcom/google/firebase/remoteconfig/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/a;->h()Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->j:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    new-instance v2, Lcom/startshorts/androidplayer/repo/config/firebaseDS/a;

    .line 52
    .line 53
    invoke-direct {v2, v0, v1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/a;-><init>(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
