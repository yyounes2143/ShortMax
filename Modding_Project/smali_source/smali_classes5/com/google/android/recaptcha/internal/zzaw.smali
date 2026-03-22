.class public final Lcom/google/android/recaptcha/internal/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.6.1"


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzaw;->zza:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzaw;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzaw;->zza:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzaw;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
