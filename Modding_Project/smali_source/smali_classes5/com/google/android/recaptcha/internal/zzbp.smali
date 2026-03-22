.class final Lcom/google/android/recaptcha/internal/zzbp;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:Ljava/lang/Object;

.field zzc:J

.field zzd:J

.field zze:D

.field synthetic zzf:Ljava/lang/Object;

.field final synthetic zzg:Lcom/google/android/recaptcha/internal/zzbq;

.field zzh:I


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzbq;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbp;->zzg:Lcom/google/android/recaptcha/internal/zzbq;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbp;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzbp;->zzh:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbp;->zzg:Lcom/google/android/recaptcha/internal/zzbq;

    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    move-object v9, p0

    .line 21
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/recaptcha/internal/zzbq;->zza(Lkotlin/jvm/functions/Function1;JJDLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
