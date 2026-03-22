.class final Lcom/google/android/gms/internal/ads/zzezk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfve;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzezn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzezn;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezk;->zza:Lcom/google/android/gms/internal/ads/zzezn;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvq;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezl;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfev;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbvq;->zzj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfev;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzezl;-><init>(Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzezm;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezk;->zza:Lcom/google/android/gms/internal/ads/zzezn;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzezn;->zzd(Lcom/google/android/gms/internal/ads/zzezn;Lcom/google/android/gms/internal/ads/zzezl;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzezn;->zza(Lcom/google/android/gms/internal/ads/zzezn;)Lcom/google/android/gms/internal/ads/zzezl;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
