.class public final synthetic Lcom/google/android/gms/internal/ads/zzxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyo;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzyi;

.field public final synthetic zzc:Z

.field public final synthetic zzd:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzyi;Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzb:Lcom/google/android/gms/internal/ads/zzyi;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzc:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzd:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbm;[I)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzyb;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    .line 6
    .line 7
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzb:Lcom/google/android/gms/internal/ads/zzyi;

    .line 8
    .line 9
    invoke-direct {v10, v1, v11}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Lcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzyi;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzd:[I

    .line 13
    .line 14
    aget v12, v1, p1

    .line 15
    .line 16
    sget v1, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 17
    .line 18
    new-instance v13, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 19
    .line 20
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    move-object/from16 v15, p2

    .line 25
    .line 26
    move v14, v1

    .line 27
    :goto_0
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    .line 28
    .line 29
    if-ge v14, v1, :cond_0

    .line 30
    .line 31
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzc:Z

    .line 32
    .line 33
    new-instance v9, Lcom/google/android/gms/internal/ads/zzye;

    .line 34
    .line 35
    aget v6, p3, v14

    .line 36
    .line 37
    move-object v1, v9

    .line 38
    move/from16 v2, p1

    .line 39
    .line 40
    move-object/from16 v3, p2

    .line 41
    .line 42
    move v4, v14

    .line 43
    move-object v5, v11

    .line 44
    move-object v8, v10

    .line 45
    move-object v0, v9

    .line 46
    move v9, v12

    .line 47
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzye;-><init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyi;IZLcom/google/android/gms/internal/ads/zzfvq;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v14, v14, 0x1

    .line 54
    .line 55
    move-object/from16 v0, p0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
