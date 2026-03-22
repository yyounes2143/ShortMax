.class public final Lcom/google/android/gms/internal/ads/zzclf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzclf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclf;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzclf;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgv;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzd()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 12
    .line 13
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhgv;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhgv;->zzd()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcle;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcle;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclf;->zza()Lcom/google/android/gms/internal/ads/zzcle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
