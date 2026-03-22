.class public final Lcom/google/android/gms/internal/ads/zzewa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzewa;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzewa;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzewa;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckv;->zza()Lcom/google/android/gms/internal/ads/zzbzg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    check-cast v2, Lcom/google/android/gms/internal/ads/zzewj;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/ads/zzevy;

    .line 18
    .line 19
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzevy;-><init>(Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v3
.end method
