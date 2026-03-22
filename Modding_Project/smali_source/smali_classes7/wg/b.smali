.class public final Lwg/b;
.super Ljava/lang/Object;
.source "FirebaseTokenRemoteDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebaseTokenRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseTokenRemoteDS.kt\ncom/startshorts/androidplayer/repo/firebase/FirebaseTokenRemoteDS\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,66:1\n426#2,11:67\n*S KotlinDebug\n*F\n+ 1 FirebaseTokenRemoteDS.kt\ncom/startshorts/androidplayer/repo/firebase/FirebaseTokenRemoteDS\n*L\n27#1:67,11\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Lwg/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwg/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwg/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwg/b;->b:Lwg/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lwg/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "toString(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lwg/b;->a:Ljava/lang/String;

    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lp7/e;->c()Lp7/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lkotlinx/coroutines/e;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lkotlinx/coroutines/e;->H()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v4}, Lp7/e;->b(Z)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Lwg/b$b;

    .line 41
    .line 42
    invoke-direct {v3, p0, v0, v2}, Lwg/b$b;-><init>(Lwg/b;Ljava/lang/String;Lgt/i;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lwg/b$e;

    .line 46
    .line 47
    invoke-direct {v4, v3}, Lwg/b$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lwg/b$c;

    .line 55
    .line 56
    invoke-direct {v3, p0, v0, v2}, Lwg/b$c;-><init>(Lwg/b;Ljava/lang/String;Lgt/i;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v3, Lwg/b$d;

    .line 64
    .line 65
    invoke-direct {v3, p0, v0, v2}, Lwg/b$d;-><init>(Lwg/b;Ljava/lang/String;Lgt/i;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-ne v0, v1, :cond_0

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-object v0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "getFirebaseToken failed -> "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v1, "FirebaseRemoteDS"

    .line 110
    .line 111
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p1, ""

    .line 115
    .line 116
    return-object p1
.end method
