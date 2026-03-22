.class final Lcom/google/android/gms/internal/ads/zzbec;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbed;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbed;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Lcom/google/android/gms/internal/ads/zzbed;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Lcom/google/android/gms/internal/ads/zzbed;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbed;->zze(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
