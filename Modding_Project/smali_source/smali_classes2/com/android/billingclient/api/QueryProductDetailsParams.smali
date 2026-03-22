.class public final Lcom/android/billingclient/api/QueryProductDetailsParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;,
        Lcom/android/billingclient/api/QueryProductDetailsParams$Product;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/zzbt;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;Lcom/android/billingclient/api/zzcy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->a(Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;)Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->a:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 9
    .line 10
    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;-><init>(Lcom/android/billingclient/api/zzcy;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/play_billing/zzbt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->a:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->a:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
