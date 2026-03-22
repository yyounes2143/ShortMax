.class final Lcom/google/android/recaptcha/internal/zzam;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzan;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

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
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzam;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/recaptcha/internal/zzam;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzam;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/recaptcha/internal/zzam;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzam;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
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
    iget v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzb:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    .line 24
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_1
    new-instance v1, Lcom/google/android/recaptcha/internal/zzal;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/recaptcha/internal/zzal;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzam;->zza:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput v2, p0, Lcom/google/android/recaptcha/internal/zzam;->zzb:I

    .line 41
    .line 42
    const-wide/32 v2, 0xea60

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v1, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    move-object v5, v0

    .line 54
    move-object v0, p1

    .line 55
    move-object p1, v5

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzan;->zzf()Lgt/p;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/lang/Throwable;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-object v0, p1

    .line 69
    :cond_1
    invoke-interface {v1, v0}, Lgt/p;->d(Ljava/lang/Throwable;)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 73
    .line 74
    sget-object v1, Lcom/google/android/recaptcha/internal/zzao;->zza:Lcom/google/android/recaptcha/internal/zzao;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzan;->zzh(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzao;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 80
    .line 81
    new-instance v1, Lcom/google/android/recaptcha/internal/zzbd;

    .line 82
    .line 83
    sget-object v2, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 84
    .line 85
    sget-object v3, Lcom/google/android/recaptcha/internal/zzba;->zza:Lcom/google/android/recaptcha/internal/zzba;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
