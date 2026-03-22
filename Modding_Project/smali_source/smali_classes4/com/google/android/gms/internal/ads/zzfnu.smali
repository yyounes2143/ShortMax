.class public abstract Lcom/google/android/gms/internal/ads/zzfnu;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfnv;

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzfnm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzd:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfnu;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfnv;->zza(Lcom/google/android/gms/internal/ads/zzfnu;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfnv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 2
    .line 3
    return-void
.end method
