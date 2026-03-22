.class final Lcom/google/android/gms/internal/ads/zzcjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcio;

.field private zzb:Landroid/content/Context;

.field private zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbt;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfbt;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfbu;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zzb:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjk;->zzc:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjl;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
