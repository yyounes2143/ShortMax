.class final Lcom/google/android/gms/internal/ads/zzcix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcio;

.field private zzb:Landroid/content/Context;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzeyo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzd:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 5
    .line 6
    return-object p0
.end method

.method public final bridge synthetic zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeyo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzc:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public final bridge synthetic zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeyo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzeyp;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    const-class v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzd:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciy;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzb:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzc:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzd:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzciy;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
