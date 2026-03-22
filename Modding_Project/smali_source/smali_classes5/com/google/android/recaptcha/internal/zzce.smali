.class public final Lcom/google/android/recaptcha/internal/zzce;
.super Ljava/lang/Exception;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"


# instance fields
.field private final zza:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/recaptcha/internal/zztd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zzc:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zzd:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Throwable;)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzce;->zzc:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/recaptcha/internal/zzce;->zzd:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzce;->zza:Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzte;->zzf()Lcom/google/android/recaptcha/internal/zztd;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p3, p2}, Lcom/google/android/recaptcha/internal/zztd;->zzq(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/recaptcha/internal/zztd;->zzr(I)Lcom/google/android/recaptcha/internal/zztd;

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzce;->zzb:Lcom/google/android/recaptcha/internal/zztd;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzce;->zza:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/google/android/recaptcha/internal/zztd;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzce;->zzb:Lcom/google/android/recaptcha/internal/zztd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzce;->zzd:I

    .line 2
    .line 3
    return v0
.end method
