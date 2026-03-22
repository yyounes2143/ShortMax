.class public final synthetic Lcom/google/android/gms/internal/ads/zzyc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyo;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyi;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbm;[I)Ljava/util/List;
    .locals 11

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzyu;->zzb:I

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzc:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzb:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzyi;

    .line 20
    .line 21
    new-instance v10, Lcom/google/android/gms/internal/ads/zzyn;

    .line 22
    .line 23
    aget v7, p3, v1

    .line 24
    .line 25
    move-object v2, v10

    .line 26
    move v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move v5, v1

    .line 29
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzyn;-><init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyi;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method
