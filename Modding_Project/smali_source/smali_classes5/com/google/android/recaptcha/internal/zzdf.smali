.class final Lcom/google/android/recaptcha/internal/zzdf;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzdt;

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzsp;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzdt;Lcom/google/android/recaptcha/internal/zzsp;Lcom/google/android/recaptcha/internal/zzen;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzc:Lcom/google/android/recaptcha/internal/zzsp;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzdf;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzc:Lcom/google/android/recaptcha/internal/zzsp;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/google/android/recaptcha/internal/zzdf;-><init>(Lcom/google/android/recaptcha/internal/zzdt;Lcom/google/android/recaptcha/internal/zzsp;Lcom/google/android/recaptcha/internal/zzen;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzdf;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/recaptcha/internal/zzdf;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzdf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
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
    iget v1, p0, Lcom/google/android/recaptcha/internal/zzdf;->zza:I

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
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzc:Lcom/google/android/recaptcha/internal/zzsp;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzdt;->zzh(Lcom/google/android/recaptcha/internal/zzdt;)Lcom/google/android/recaptcha/internal/zzfj;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzdt;->zzd(Lcom/google/android/recaptcha/internal/zzdt;)Lcom/google/android/recaptcha/internal/zzbr;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v3, 0x1

    .line 26
    iput v3, p0, Lcom/google/android/recaptcha/internal/zzdf;->zza:I

    .line 27
    .line 28
    invoke-virtual {v2, p1, v1, p0}, Lcom/google/android/recaptcha/internal/zzfj;->zzb(Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Lrs/c;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzdf;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 36
    .line 37
    check-cast p1, Lcom/google/android/recaptcha/internal/zzsr;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzen;->zza()V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method
