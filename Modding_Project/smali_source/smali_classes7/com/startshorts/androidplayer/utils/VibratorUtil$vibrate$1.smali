.class final Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VibratorUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/VibratorUtil;->d()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.utils.VibratorUtil$vibrate$1"
    f = "VibratorUtil.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVibratorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VibratorUtil.kt\ncom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,38:1\n116#2,11:39\n*S KotlinDebug\n*F\n+ 1 VibratorUtil.kt\ncom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1\n*L\n21#1:39,11\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lqt/a;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->b()Lqt/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->h:Ljava/lang/Object;

    .line 37
    .line 38
    iput v2, p0, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;->i:I

    .line 39
    .line 40
    invoke-interface {p1, v3, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-ne v1, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    move-object v0, p1

    .line 48
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a()Landroid/os/Vibrator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 55
    .line 56
    invoke-virtual {p1}, Lfk/u;->b()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "vibrator"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    instance-of v1, p1, Landroid/os/Vibrator;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    check-cast p1, Landroid/os/Vibrator;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move-object p1, v3

    .line 76
    :goto_1
    invoke-static {p1}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->c(Landroid/os/Vibrator;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v1, 0x1a

    .line 82
    .line 83
    const-wide/16 v4, 0x1e

    .line 84
    .line 85
    if-lt p1, v1, :cond_5

    .line 86
    .line 87
    invoke-static {}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a()Landroid/os/Vibrator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    const/4 v1, -0x1

    .line 94
    invoke-static {v4, v5, v1}, Lcom/applovin/impl/qb;->a(JI)Landroid/os/VibrationEffect;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {p1, v1}, Lcom/applovin/impl/rb;->a(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-static {}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a()Landroid/os/Vibrator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    invoke-interface {v0, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1

    .line 119
    :goto_3
    invoke-interface {v0, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method
