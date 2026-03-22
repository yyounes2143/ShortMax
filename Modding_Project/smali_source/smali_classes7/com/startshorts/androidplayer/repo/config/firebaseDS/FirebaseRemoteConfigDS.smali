.class public final Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigDS.kt"

# interfaces
.implements Lmg/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->c:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic h(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->m(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->n(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->k(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->o(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v8, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    move-object v1, v8

    .line 32
    move-object v3, p1

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;-><init>(Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "firebase_fake_key"

    .line 37
    .line 38
    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private static final l(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "fetchRemoteConfig executeFetch start,isRetry="

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p3, ",currentRetryCount="

    .line 21
    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p3, ".fetchRemoteConfig"

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v5, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-direct {v5, p2, p0, p1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lrs/c;)V

    .line 64
    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private static final m(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final n(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 11
    .line 12
    if-ge v1, p1, :cond_0

    .line 13
    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v1, 0x2

    .line 18
    const-string v3, "Firebase Installations failed to get installation auth token for fetch"

    .line 19
    .line 20
    invoke-static {p4, v3, p1, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne p1, v1, :cond_0

    .line 26
    .line 27
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->tag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "fetchRemoteConfig exception -> onForeground="

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ",retryCount="

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ",errorMessage="

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p1, v2, p4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 76
    .line 77
    add-int/2addr p1, v1

    .line 78
    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 79
    .line 80
    invoke-static {p2, p0, p3, v1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->l(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p0, "fetchRemoteConfig exception"

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->k(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string p3, "configSize = "

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-eqz p2, :cond_1

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->e(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lmg/f$a;->c(Lmg/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->d()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 20
    .line 21
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lsg/a;

    .line 30
    .line 31
    invoke-direct {v2}, Lsg/a;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v2, Lsg/b;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, v0, v3, p0, v1}, Lsg/b;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->l(Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmg/f$a;->a(Lmg/f;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lmg/f$a;->b(Lmg/f;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Lkotlin/jvm/functions/Function0;)Lmg/f;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lmg/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmg/f$a;->d(Lmg/f;Lkotlin/jvm/functions/Function0;)Lmg/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FirebaseRemoteConfigDS"

    .line 2
    .line 3
    return-object v0
.end method
