.class final Lcom/google/android/gms/internal/ads/zzbaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Landroid/webkit/ValueCallback;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazs;

.field final synthetic zzc:Landroid/webkit/WebView;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzbac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbac;Lcom/google/android/gms/internal/ads/zzazs;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzc:Landroid/webkit/WebView;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzd:Z

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazz;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzazz;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;Lcom/google/android/gms/internal/ads/zzazs;Landroid/webkit/WebView;Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zza:Landroid/webkit/ValueCallback;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzc:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zza:Landroid/webkit/ValueCallback;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zza:Landroid/webkit/ValueCallback;

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
