.class public final Lcom/google/android/gms/internal/ads/zzxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzbm;[IILcom/google/android/gms/internal/ads/zzzl;Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzxr;
    .locals 19

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v15, p5

    .line 8
    .line 9
    move-object/from16 v12, p0

    .line 10
    .line 11
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    .line 12
    .line 13
    move-object/from16 v16, v0

    .line 14
    .line 15
    new-instance v17, Lcom/google/android/gms/internal/ads/zzxr;

    .line 16
    .line 17
    move-object/from16 v0, v17

    .line 18
    .line 19
    const v13, 0x3f333333    # 0.7f

    .line 20
    .line 21
    .line 22
    const/high16 v14, 0x3f400000    # 0.75f

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-wide/16 v5, 0x2710

    .line 26
    .line 27
    const-wide/16 v7, 0x61a8

    .line 28
    .line 29
    move-wide v9, v7

    .line 30
    const/16 v11, 0x4ff

    .line 31
    .line 32
    const/16 v18, 0x2cf

    .line 33
    .line 34
    move/from16 v12, v18

    .line 35
    .line 36
    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(Lcom/google/android/gms/internal/ads/zzbm;[IILcom/google/android/gms/internal/ads/zzzl;JJJIIFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzdj;)V

    .line 37
    .line 38
    .line 39
    return-object v17
.end method
