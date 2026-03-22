.class final Lcom/google/android/gms/internal/ads/zzbsk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsk;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsk;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    .line 2
    .line 3
    const-string p2, "Operation denied by user."

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbsu;->zzh(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
