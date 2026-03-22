.class final Lcom/google/android/gms/internal/ads/zzbod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcao;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzboc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbod;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnd;

    .line 2
    .line 3
    const-string v0, "Getting a new session for JS Engine."

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnd;->zzj()Lcom/google/android/gms/internal/ads/zzbok;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbod;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcar;->zzi(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
