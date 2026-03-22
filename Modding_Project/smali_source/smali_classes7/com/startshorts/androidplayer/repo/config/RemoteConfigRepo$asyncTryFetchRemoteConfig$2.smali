.class final Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RemoteConfigRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->h(Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo$asyncTryFetchRemoteConfig$2"
    f = "RemoteConfigRepo.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n774#2:234\n865#2,2:235\n1863#2,2:237\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2\n*L\n141#1:234\n141#1:235,2\n143#1:237,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmg/f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lmg/f;",
            ">;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->i:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->j:Ljava/lang/String;

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

.method public static synthetic i(Lmg/f;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->j(Lmg/f;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lmg/f;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-interface {p0}, Lmg/f;->tag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;-><init>(Ljava/util/List;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->i:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v9, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Lmg/f;

    .line 36
    .line 37
    invoke-interface {v1}, Lmg/f;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 52
    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v0, "asyncTryFetchRemoteConfig -> start, from="

    .line 59
    .line 60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;->j:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", ds="

    .line 69
    .line 70
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance v6, Lcom/startshorts/androidplayer/repo/config/a;

    .line 74
    .line 75
    invoke-direct {v6}, Lcom/startshorts/androidplayer/repo/config/a;-><init>()V

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x1e

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const-string v1, ","

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    move-object v0, v9

    .line 88
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "RemoteConfigRepo"

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lmg/f;

    .line 119
    .line 120
    invoke-interface {v0}, Lmg/f;->c()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method
