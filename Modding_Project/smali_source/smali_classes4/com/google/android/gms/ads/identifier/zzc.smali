.class public final synthetic Lcom/google/android/gms/ads/identifier/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-identifier@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/identifier/zzd;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/identifier/zzd;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/zzc;->zza:Lcom/google/android/gms/ads/identifier/zzd;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/ads/identifier/zzc;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/zzc;->zza:Lcom/google/android/gms/ads/identifier/zzd;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/ads/identifier/zzc;->zzb:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/ads/identifier/zzd;->zzb(Lcom/google/android/gms/ads/identifier/zzd;JLjava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
