.class public abstract Lcom/google/android/gms/internal/ads/zzgoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoh;->zza:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoh;->zzb:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgof;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoe;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgoe;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgof;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgpb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoh;->zza:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoh;->zzb:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
