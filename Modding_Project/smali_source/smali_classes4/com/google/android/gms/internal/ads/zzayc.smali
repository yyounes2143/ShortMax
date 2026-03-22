.class public final Lcom/google/android/gms/internal/ads/zzayc;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzh:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 1
    const-string v3, "3s4OpKjyDjUzqtut1o8wCVCKFRdtRePXWRu+sqk/xG8="

    .line 2
    .line 3
    const/16 v6, 0x2d

    .line 4
    .line 5
    const-string v2, "UtW7g7feJqOHsjIRMP7TbkL8M4VYsmVrsaULCIKJGwvBOELKcxTQZfT6AHg6wl4V"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 12
    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzh:[Ljava/lang/StackTraceElement;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzh:[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawo;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzawo;->zza:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzD(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzawo;->zzb:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawo;->zzc:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x1

    .line 50
    if-eq v2, v1, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzZ(I)Lcom/google/android/gms/internal/ads/zzast;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v1, 0x3

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzZ(I)Lcom/google/android/gms/internal/ads/zzast;

    .line 61
    .line 62
    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1

    .line 67
    :cond_2
    return-void
.end method
