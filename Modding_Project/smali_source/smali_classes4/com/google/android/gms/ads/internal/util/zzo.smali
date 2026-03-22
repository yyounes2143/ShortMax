.class final Lcom/google/android/gms/ads/internal/util/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbee;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbef;

.field final synthetic zzb:Landroid/content/Context;

.field final synthetic zzc:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbef;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzb:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzc:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbef;->zza()Landroidx/browser/customtabs/CustomTabsSession;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzb:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhh;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzc:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    check-cast v3, Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbef;->zzf(Landroid/app/Activity;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
