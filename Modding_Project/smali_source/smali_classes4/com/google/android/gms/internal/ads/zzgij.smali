.class public final synthetic Lcom/google/android/gms/internal/ads/zzgij;
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
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgit;

    .line 2
    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgik;->zza:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzd()Lcom/google/android/gms/internal/ads/zzgiy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzd()Lcom/google/android/gms/internal/ads/zzgiy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzb()Lcom/google/android/gms/internal/ads/zzgga;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfj;->zzb()Lcom/google/android/gms/internal/ads/zzget;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v2, Lcom/google/android/gms/internal/ads/zzgih;->zza:I

    .line 30
    .line 31
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfo;->zzb(Lcom/google/android/gms/internal/ads/zzgfm;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzf([BLcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzguf;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgih;

    .line 44
    .line 45
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgih;-><init>(Lcom/google/android/gms/internal/ads/zzguf;Lcom/google/android/gms/internal/ads/zzget;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzb()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzglm;->zzc(Lcom/google/android/gms/internal/ads/zzget;Lcom/google/android/gms/internal/ads/zzgxe;)Lcom/google/android/gms/internal/ads/zzget;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
