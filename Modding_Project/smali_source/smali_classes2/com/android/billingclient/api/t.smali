.class interface abstract Lcom/android/billingclient/api/t;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    .line 3
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 6
    .line 7
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 8
    .line 9
    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 10
    .line 11
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzbw;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
.end method

.method public abstract b(Lcom/google/android/gms/internal/play_billing/zzhx;IJ)V
.end method

.method public abstract c(Lcom/google/android/gms/internal/play_billing/zzij;)V
.end method

.method public abstract d(Lcom/google/android/gms/internal/play_billing/zzib;I)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzib;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e(Lcom/google/android/gms/internal/play_billing/zzjo;)V
.end method

.method public abstract f(Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzjs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract g(Lcom/google/android/gms/internal/play_billing/zzhx;IJZ)V
.end method

.method public abstract h(Lcom/google/android/gms/internal/play_billing/zzhx;)V
.end method

.method public abstract i(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V
.end method

.method public abstract j(Lcom/google/android/gms/internal/play_billing/zzib;)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzib;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzhx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
