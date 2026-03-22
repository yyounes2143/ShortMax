.class public final Lcom/google/android/recaptcha/internal/zzbx;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"


# direct methods
.method public static final zza(Lcom/google/android/gms/tasks/Task;)Lgt/k0;
    .locals 3
    .param p0    # Lcom/google/android/gms/tasks/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbv;->zza:Lcom/google/android/recaptcha/internal/zzbv;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/recaptcha/internal/zzbu;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/google/android/recaptcha/internal/zzbu;-><init>(Lgt/p;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/android/recaptcha/internal/zzbw;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzbw;-><init>(Lgt/p;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method
