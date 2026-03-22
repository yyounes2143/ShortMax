.class final Lcom/google/android/gms/internal/ads/zzfze;
.super Lcom/google/android/gms/internal/ads/zzgav;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfzf;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfze;->zza:Lcom/google/android/gms/internal/ads/zzfzf;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgav;-><init>(Ljava/util/ListIterator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfze;->zza:Lcom/google/android/gms/internal/ads/zzfzf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfzf;->zzb:Lcom/google/android/gms/internal/ads/zzfve;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfve;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
