.class public final synthetic Lcom/google/android/gms/internal/ads/zzcaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbf;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcbf;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaw;->zza:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcaw;->zzb:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaw;->zza:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcaw;->zzb:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbf;->zzk(Lcom/google/android/gms/internal/ads/zzcbf;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
