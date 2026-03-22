.class final Lcom/google/android/gms/ads/internal/util/zzch;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzci;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzch;->zza:Lcom/google/android/gms/ads/internal/util/zzci;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzch;->zza:Lcom/google/android/gms/ads/internal/util/zzci;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzci;->zza(Lcom/google/android/gms/ads/internal/util/zzci;Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
