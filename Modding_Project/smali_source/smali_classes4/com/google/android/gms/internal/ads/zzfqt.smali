.class public final synthetic Lcom/google/android/gms/internal/ads/zzfqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfqu;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfqy;->zza:Lcom/google/android/gms/internal/ads/zzfqy;

    .line 2
    .line 3
    new-instance p0, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
