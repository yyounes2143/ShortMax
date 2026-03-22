.class public final Lcom/google/android/gms/internal/ads/zzajp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:J

.field public final zzg:Lcom/google/android/gms/internal/ads/zzz;

.field public final zzh:I

.field public final zzi:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzj:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzk:I

.field private final zzl:[Lcom/google/android/gms/internal/ads/zzajq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V
    .locals 3
    .param p13    # [Lcom/google/android/gms/internal/ads/zzajq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 10
    .line 11
    move-wide v1, p3

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    .line 13
    .line 14
    move-wide v1, p5

    .line 15
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 16
    .line 17
    move-wide v1, p7

    .line 18
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    .line 19
    .line 20
    move-wide v1, p9

    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    .line 22
    .line 23
    move-object v1, p11

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 25
    .line 26
    move v1, p12

    .line 27
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    .line 28
    .line 29
    move-object/from16 v1, p13

    .line 30
    .line 31
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 32
    .line 33
    move/from16 v1, p14

    .line 34
    .line 35
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    .line 36
    .line 37
    move-object/from16 v1, p15

    .line 38
    .line 39
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    .line 40
    .line 41
    move-object/from16 v1, p16

    .line 42
    .line 43
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    .line 6
    .line 7
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 8
    .line 9
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    .line 12
    .line 13
    move-object/from16 v16, v1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 16
    .line 17
    move-object/from16 v17, v1

    .line 18
    .line 19
    new-instance v18, Lcom/google/android/gms/internal/ads/zzajp;

    .line 20
    .line 21
    move-object/from16 v1, v18

    .line 22
    .line 23
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    .line 24
    .line 25
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 26
    .line 27
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    .line 28
    .line 29
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 30
    .line 31
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    .line 32
    .line 33
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    .line 34
    .line 35
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V

    .line 36
    .line 37
    .line 38
    return-object v18
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzajq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method
