.class public final Lcom/google/android/gms/internal/ads/zzgoy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzguf;Lcom/google/android/gms/internal/ads/zzgxe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgoy;-><init>(Lcom/google/android/gms/internal/ads/zzguf;Lcom/google/android/gms/internal/ads/zzgxe;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgoy;-><init>(Lcom/google/android/gms/internal/ads/zzguf;Lcom/google/android/gms/internal/ads/zzgxe;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgxe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 2
    .line 3
    return-object v0
.end method
