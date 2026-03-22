.class final Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzca;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzby;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabk;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzby;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;
    .locals 13

    .line 1
    :try_start_0
    const-string v0, "androidx.media3.effect.SingleInputVideoGraph$Factory"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/google/android/gms/internal/ads/zzby;

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    move-object v1, p0

    .line 18
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzby;

    .line 19
    .line 20
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/zzca;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    const-wide/16 v10, 0x0

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p2

    .line 36
    move-object/from16 v5, p3

    .line 37
    .line 38
    move-object/from16 v6, p4

    .line 39
    .line 40
    move-object/from16 v7, p5

    .line 41
    .line 42
    move-object/from16 v8, p6

    .line 43
    .line 44
    move-object/from16 v9, p7

    .line 45
    .line 46
    invoke-interface/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    move-object v1, p0

    .line 55
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v2
.end method
