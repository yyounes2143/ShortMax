.class public final Lcom/startshorts/androidplayer/manager/push/PushHelper;
.super Ljava/lang/Object;
.source "PushHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPushHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushHelper.kt\ncom/startshorts/androidplayer/manager/push/PushHelper\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,25:1\n426#2,11:26\n*S KotlinDebug\n*F\n+ 1 PushHelper.kt\ncom/startshorts/androidplayer/manager/push/PushHelper\n*L\n12#1:26,11\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/push/PushHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/PushHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/PushHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/PushHelper;->a:Lcom/startshorts/androidplayer/manager/push/PushHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lrs/c;)Ljava/lang/Object;
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
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;-><init>(Lcom/startshorts/androidplayer/manager/push/PushHelper;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/PushHelper$queryFCMToken$1;->j:I

    .line 54
    .line 55
    new-instance p1, Lkotlinx/coroutines/e;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->H()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->q()Lcom/google/android/gms/tasks/Task;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/PushHelper$a;

    .line 76
    .line 77
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/manager/push/PushHelper$a;-><init>(Lgt/i;)V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/PushHelper$c;

    .line 81
    .line 82
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/manager/push/PushHelper$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/PushHelper$b;

    .line 90
    .line 91
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/manager/push/PushHelper$b;-><init>(Lgt/i;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    .line 103
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/Throwable;

    .line 106
    .line 107
    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {p1, v2}, Ljk/e;->a(Lgt/i;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-ne p1, v2, :cond_3

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    if-ne p1, v1, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    :goto_2
    check-cast p1, Lkotlin/Result;

    .line 142
    .line 143
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method
