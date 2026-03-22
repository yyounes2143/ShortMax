.class final Lcom/google/android/recaptcha/internal/zzaj;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzan;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:Lcom/google/android/recaptcha/internal/zzan;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzaj;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:Lcom/google/android/recaptcha/internal/zzan;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/google/android/recaptcha/internal/zzaj;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzaj;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/recaptcha/internal/zzaj;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzaj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zza:I

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:Lcom/google/android/recaptcha/internal/zzan;

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/recaptcha/internal/zzao;->zza:Lcom/google/android/recaptcha/internal/zzao;

    .line 16
    .line 17
    invoke-static {p1, v1}, Lcom/google/android/recaptcha/internal/zzan;->zzh(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzao;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:Lcom/google/android/recaptcha/internal/zzan;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput v1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zza:I

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/google/android/recaptcha/internal/zzan;->zze(Lrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p1
.end method
