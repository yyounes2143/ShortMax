.class public final synthetic Lcom/google/android/gms/internal/ads/zzecg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzecl;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecg;->zza:Lcom/google/android/gms/internal/ads/zzecl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecg;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecg;->zza:Lcom/google/android/gms/internal/ads/zzecl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecg;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzecl;->zzd(Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/ads/internal/overlay/zzm;Landroid/content/DialogInterface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
