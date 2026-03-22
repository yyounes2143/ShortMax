.class public final Lcom/google/android/gms/internal/ads/zzerg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerg;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerg;->zza:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzerg;)Lcom/google/android/gms/internal/ads/zzerh;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerh;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzerg;->zza:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzerh;-><init>(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x39

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzerf;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzerf;-><init>(Lcom/google/android/gms/internal/ads/zzerg;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerg;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
