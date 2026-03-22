.class public Lcom/google/android/gms/internal/ads/zzebf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzeas;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzeas;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
