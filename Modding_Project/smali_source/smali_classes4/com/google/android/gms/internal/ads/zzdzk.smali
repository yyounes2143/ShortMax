.class public final Lcom/google/android/gms/internal/ads/zzdzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdzk;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzk;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzk;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdzj;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdyp;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdyp;->zza()Lcom/google/android/gms/internal/ads/zzdyo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzk;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhgq;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhgl;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdzj;

    .line 20
    .line 21
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzj;-><init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzhgl;)V

    .line 22
    .line 23
    .line 24
    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdzk;->zza()Lcom/google/android/gms/internal/ads/zzdzj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
