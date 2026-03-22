.class public final synthetic Lcom/google/android/gms/internal/ads/zzazz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbaa;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazs;

.field public final synthetic zzc:Landroid/webkit/WebView;

.field public final synthetic zzd:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbaa;Lcom/google/android/gms/internal/ads/zzazs;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zza:Lcom/google/android/gms/internal/ads/zzbaa;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzc:Landroid/webkit/WebView;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzd:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zza:Lcom/google/android/gms/internal/ads/zzbaa;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbaa;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzc:Landroid/webkit/WebView;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzd:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbac;->zzc(Lcom/google/android/gms/internal/ads/zzazs;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
