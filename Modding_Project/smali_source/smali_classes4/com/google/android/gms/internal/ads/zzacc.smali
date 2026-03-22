.class public final synthetic Lcom/google/android/gms/internal/ads/zzacc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzaci;

.field public final synthetic zzb:J

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaci;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzaci;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:J

    .line 7
    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzaci;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:J

    .line 4
    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzc(Lcom/google/android/gms/internal/ads/zzaci;JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
