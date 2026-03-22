.class public abstract Lcom/google/android/gms/internal/ads/zzgod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxe;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgoc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgod;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgod;->zzb:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgob;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgod;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoa;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgoa;-><init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgob;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgpb;)Lcom/google/android/gms/internal/ads/zzgfm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgxe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgod;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgod;->zzb:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
