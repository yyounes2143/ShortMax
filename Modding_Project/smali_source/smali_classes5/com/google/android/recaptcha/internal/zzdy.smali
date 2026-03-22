.class final Lcom/google/android/recaptcha/internal/zzdy;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field zza:I

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzec;


# direct methods
.method constructor <init>(JLcom/google/android/recaptcha/internal/zzec;Lrs/c;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzb:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzc:Lcom/google/android/recaptcha/internal/zzec;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzdy;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzb:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzc:Lcom/google/android/recaptcha/internal/zzec;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/recaptcha/internal/zzdy;-><init>(JLcom/google/android/recaptcha/internal/zzec;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lrs/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzdy;->create(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/recaptcha/internal/zzdy;

    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/recaptcha/internal/zzdy;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zza:I

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
    iget-wide v1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzb:J

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zzc:Lcom/google/android/recaptcha/internal/zzec;

    .line 16
    .line 17
    new-instance v3, Lcom/google/android/recaptcha/internal/zzdx;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p1, v4}, Lcom/google/android/recaptcha/internal/zzdx;-><init>(Lcom/google/android/recaptcha/internal/zzec;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzdy;->zza:I

    .line 25
    .line 26
    invoke-static {v1, v2, v3, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1
.end method
