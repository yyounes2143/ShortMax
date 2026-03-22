.class public final Lcom/google/android/gms/internal/ads/zzcvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfco;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzcuy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzedr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcvg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzb(Lcom/google/android/gms/internal/ads/zzcvf;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zza:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzo(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzfcw;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzc(Lcom/google/android/gms/internal/ads/zzcvf;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzc:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzn(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzfco;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzd(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzcuy;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zze:Lcom/google/android/gms/internal/ads/zzcuy;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzm(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzedr;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzf:Lcom/google/android/gms/internal/ads/zzedr;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zza(Lcom/google/android/gms/internal/ads/zzcvf;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzg:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzg:I

    .line 2
    .line 3
    return v0
.end method

.method final zzb(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zza:Landroid/content/Context;

    .line 2
    .line 3
    return-object p1
.end method

.method final zzc()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzc:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zze:Lcom/google/android/gms/internal/ads/zzcuy;

    .line 2
    .line 3
    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzcvf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zza:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzc:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zze:Lcom/google/android/gms/internal/ads/zzcuy;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzh(Lcom/google/android/gms/internal/ads/zzcuy;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzf:Lcom/google/android/gms/internal/ads/zzedr;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvf;->zze(Lcom/google/android/gms/internal/ads/zzedr;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzedr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzf:Lcom/google/android/gms/internal/ads/zzedr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedr;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzedr;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method final zzg()Lcom/google/android/gms/internal/ads/zzfco;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzh()Lcom/google/android/gms/internal/ads/zzfcw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvh;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 2
    .line 3
    return-object v0
.end method
