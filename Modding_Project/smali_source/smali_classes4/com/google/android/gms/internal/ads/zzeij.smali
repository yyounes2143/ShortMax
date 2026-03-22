.class final Lcom/google/android/gms/internal/ads/zzeij;
.super Lcom/google/android/gms/internal/ads/zzbwm;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcye;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcvw;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcxf;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzcvw;Lcom/google/android/gms/internal/ads/zzcxf;Lcom/google/android/gms/internal/ads/zzdem;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeij;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzb:Lcom/google/android/gms/internal/ads/zzcvw;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzc:Lcom/google/android/gms/internal/ads/zzcxf;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzd:Lcom/google/android/gms/internal/ads/zzdem;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwm;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzb:Lcom/google/android/gms/internal/ads/zzcvw;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvw;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzdw(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzc:Lcom/google/android/gms/internal/ads/zzcxf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxf;->zzb()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcye;->zzdt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbwo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzd:Lcom/google/android/gms/internal/ads/zzdem;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdem;->zza(Lcom/google/android/gms/internal/ads/zzbwo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzd:Lcom/google/android/gms/internal/ads/zzdem;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdem;->zza(Lcom/google/android/gms/internal/ads/zzbwo;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzc:Lcom/google/android/gms/internal/ads/zzcxf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxf;->zze()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->zzd:Lcom/google/android/gms/internal/ads/zzdem;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdem;->zzc()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
