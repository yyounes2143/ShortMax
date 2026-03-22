.class public final Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
.super Lcom/google/android/gms/internal/ads/zzgzb;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcj$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgzb<",
        "Lcom/google/android/gms/internal/ads/zzbcj$zzb;",
        "Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcj$zzc;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzg()Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzb;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zza()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public zzb(I)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzb(I)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzx(Lcom/google/android/gms/internal/ads/zzbcj$zzb;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzd(Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzy(Lcom/google/android/gms/internal/ads/zzbcj$zzb;Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public zze(Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzy(Lcom/google/android/gms/internal/ads/zzbcj$zzb;Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzf(ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzz(Lcom/google/android/gms/internal/ads/zzbcj$zzb;ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public zzg(ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzz(Lcom/google/android/gms/internal/ads/zzbcj$zzb;ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzh()Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzA(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzi(I)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzB(Lcom/google/android/gms/internal/ads/zzbcj$zzb;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzj(ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzC(Lcom/google/android/gms/internal/ads/zzbcj$zzb;ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public zzk(ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)Lcom/google/android/gms/internal/ads/zzbcj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzC(Lcom/google/android/gms/internal/ads/zzbcj$zzb;ILcom/google/android/gms/internal/ads/zzbcj$zzb$zza;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbcj$zzb$zza;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzb;->zza:Lcom/google/android/gms/internal/ads/zzgzh;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzb;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzb;->zzl()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
