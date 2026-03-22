.class public final Lcom/google/android/gms/internal/ads/zzaqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Lcom/google/android/gms/internal/ads/zzapm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaqm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzb:Lcom/google/android/gms/internal/ads/zzapm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzc:Lcom/google/android/gms/internal/ads/zzaqm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapm;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzapm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzb:Lcom/google/android/gms/internal/ads/zzapm;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzc:Lcom/google/android/gms/internal/ads/zzaqm;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaqm;)Lcom/google/android/gms/internal/ads/zzaqj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Lcom/google/android/gms/internal/ads/zzaqm;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapm;)Lcom/google/android/gms/internal/ads/zzaqj;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ads/zzapm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapm;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzc:Lcom/google/android/gms/internal/ads/zzaqm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
