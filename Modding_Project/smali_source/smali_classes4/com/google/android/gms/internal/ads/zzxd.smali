.class public final Lcom/google/android/gms/internal/ads/zzxd;
.super Lcom/google/android/gms/internal/ads/zzbl;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zzb:Ljava/lang/Object;


# instance fields
.field private final zzc:J

.field private final zzd:J

.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "SinglePeriodTimeline"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzad;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->zzc()Lcom/google/android/gms/internal/ads/zzap;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzaj;)V
    .locals 3
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/google/android/gms/internal/ads/zzaj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbl;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p7

    .line 6
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:J

    .line 7
    .line 8
    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:J

    .line 10
    .line 11
    move/from16 v1, p15

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzxd;->zze:Z

    .line 14
    .line 15
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p19

    .line 19
    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Lcom/google/android/gms/internal/ads/zzap;

    .line 21
    .line 22
    move-object/from16 v1, p20

    .line 23
    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    return p1
.end method

.method public final zzb()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdd;->zza(III)I

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Ljava/lang/Object;

    .line 9
    .line 10
    :goto_0
    move-object v2, p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:J

    .line 15
    .line 16
    sget-object v8, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzbj;->zzi(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzb;Z)Lcom/google/android/gms/internal/ads/zzbj;

    .line 25
    .line 26
    .line 27
    return-object p2
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    move/from16 v4, p1

    .line 8
    .line 9
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(III)I

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbk;->zza:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzf:Lcom/google/android/gms/internal/ads/zzap;

    .line 15
    .line 16
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzd:J

    .line 17
    .line 18
    move-wide/from16 v16, v4

    .line 19
    .line 20
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzg:Lcom/google/android/gms/internal/ads/zzaj;

    .line 21
    .line 22
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzxd;->zze:Z

    .line 23
    .line 24
    const/16 v19, 0x0

    .line 25
    .line 26
    const-wide/16 v20, 0x0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    move-wide v7, v9

    .line 35
    move-wide v5, v9

    .line 36
    const/4 v12, 0x0

    .line 37
    const-wide/16 v14, 0x0

    .line 38
    .line 39
    const/16 v18, 0x0

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzbk;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzap;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzaj;JJIIJ)Lcom/google/android/gms/internal/ads/zzbk;

    .line 42
    .line 43
    .line 44
    return-object p2
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdd;->zza(III)I

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    return-object p1
.end method
