.class public final Lcom/google/android/gms/internal/ads/zzejo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejo;->zza:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzejk;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzejm;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejl;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzejl;-><init>(Lcom/google/android/gms/internal/ads/zzejo;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzejm;-><init>(Lcom/google/android/gms/internal/ads/zzejo;Lcom/google/android/gms/internal/ads/zzdgn;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejo;->zza:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdgf;->zzd(Lcom/google/android/gms/internal/ads/zzcrq;Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzdfc;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/google/android/gms/internal/ads/zzejn;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzejn;-><init>(Lcom/google/android/gms/internal/ads/zzejo;Lcom/google/android/gms/internal/ads/zzdfc;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzejk;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfc;->zzg()Lcom/google/android/gms/internal/ads/zzdfb;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
