.class public final synthetic Lcom/google/android/gms/internal/ads/zzens;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfve;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Lcom/google/android/gms/internal/ads/zzent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Lcom/google/android/gms/internal/ads/zzent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Exception;

    .line 6
    .line 7
    const-string v1, "AppSetIdInfoSignal"

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenu;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzenu;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method
