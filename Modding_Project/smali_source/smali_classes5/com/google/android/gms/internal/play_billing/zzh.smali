.class final Lcom/google/android/gms/internal/play_billing/zzh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzh;


# instance fields
.field final zzb:Ljava/lang/Runnable;

.field final zzc:Ljava/util/concurrent/Executor;

.field zzd:Lcom/google/android/gms/internal/play_billing/zzh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzh;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzh;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzh;->zza:Lcom/google/android/gms/internal/play_billing/zzh;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzb:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
