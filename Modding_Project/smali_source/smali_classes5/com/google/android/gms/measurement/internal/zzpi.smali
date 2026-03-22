.class final Lcom/google/android/gms/measurement/internal/zzpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# instance fields
.field private zza:J

.field private zzb:Lcom/google/android/gms/internal/measurement/zzib;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Map;

.field private zze:Lcom/google/android/gms/measurement/internal/zzls;

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzpj;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lcom/google/android/gms/measurement/internal/zzpj;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zza:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzd:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 14
    .line 15
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzf:J

    .line 16
    .line 17
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzg:J

    .line 18
    .line 19
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzh:J

    .line 20
    .line 21
    iget v14, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzi:I

    .line 22
    .line 23
    const/4 v15, 0x0

    .line 24
    move-object/from16 v1, v16

    .line 25
    .line 26
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzpj;-><init>(JLcom/google/android/gms/internal/measurement/zzib;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;JJJI[B)V

    .line 27
    .line 28
    .line 29
    return-object v16
.end method

.method public final zzb(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zza:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzf:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzh(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzg:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzi(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzh:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzi:I

    .line 2
    .line 3
    return-object p0
.end method
