.class public final synthetic Lcom/google/android/gms/internal/ads/zzgjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgoo;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgez;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgju;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgjy;->zza:I

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglu;->zzc()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zzb(Lcom/google/android/gms/internal/ads/zzgju;)Lcom/google/android/gms/internal/ads/zzget;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Lcom/google/android/gms/internal/ads/zzgju;)Lcom/google/android/gms/internal/ads/zzget;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method
