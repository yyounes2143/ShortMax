.class final Lcom/google/android/gms/internal/ads/zzazb;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaze;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->zza:Lcom/google/android/gms/internal/ads/zzaze;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->zza:Lcom/google/android/gms/internal/ads/zzaze;

    .line 2
    .line 3
    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaze;->zzc(Lcom/google/android/gms/internal/ads/zzaze;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
