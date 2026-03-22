.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgf;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzc:Landroid/webkit/ValueCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzc:Landroid/webkit/ValueCallback;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgf;->zzaQ(Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
