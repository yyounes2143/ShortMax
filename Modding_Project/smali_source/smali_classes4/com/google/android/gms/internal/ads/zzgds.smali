.class final Lcom/google/android/gms/internal/ads/zzgds;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdv;Lcom/google/android/gms/internal/ads/zzgdu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgds;->zza:Lcom/google/android/gms/internal/ads/zzgdv;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgds;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgds;->zza:Lcom/google/android/gms/internal/ads/zzgdv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdv;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
