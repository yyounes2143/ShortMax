.class public final Lcom/google/android/gms/internal/ads/zzdwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/AdRequest;

.field private zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/ads/VideoOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/ads/AdSize;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzd:Lcom/google/android/gms/ads/AdSize;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zze:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzf:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzg:Z

    .line 16
    .line 17
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "request_origin"

    .line 23
    .line 24
    const-string v2, "inspector_ooct"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zza:Lcom/google/android/gms/ads/AdRequest;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zza:Lcom/google/android/gms/ads/AdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzd:Lcom/google/android/gms/ads/AdSize;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzc:Lcom/google/android/gms/ads/VideoOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zza:Lcom/google/android/gms/ads/AdRequest;

    .line 2
    .line 3
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzd:Lcom/google/android/gms/ads/AdSize;

    .line 2
    .line 3
    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final zzj(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final zzk(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzg:Z

    .line 2
    .line 3
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 2
    .line 3
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzc:Lcom/google/android/gms/ads/VideoOptions;

    .line 2
    .line 3
    return-void
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwg;->zzg:Z

    .line 2
    .line 3
    return v0
.end method
