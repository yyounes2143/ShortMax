.class public abstract Lcom/google/ads/mediation/bidmachine/waterfall/request/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/ads/mediation/bidmachine/common/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/ads/mediation/bidmachine/common/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a:Lcom/google/ads/mediation/bidmachine/common/e;

    .line 10
    .line 11
    return-void
.end method

.method private final a()Lio/bidmachine/CustomParams;
    .locals 3

    .line 2
    new-instance v0, Lio/bidmachine/CustomParams;

    invoke-direct {v0}, Lio/bidmachine/CustomParams;-><init>()V

    const-string v1, "mediation_mode"

    const-string v2, "waterfall_admob"

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/CustomParams;

    return-object v0
.end method

.method private final b(Landroid/os/Bundle;)Lio/bidmachine/PriceFloorParams;
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "bm_pf"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/google/ads/mediation/bidmachine/BidMachineUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/common/f;->a(Ljava/lang/Object;)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-object p1, p0, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a:Lcom/google/ads/mediation/bidmachine/common/e;

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/ads/mediation/bidmachine/common/e;->a(D)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 3
    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement_id"

    invoke-static {p1, v0}, Lcom/google/ads/mediation/bidmachine/BidMachineUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Llp/f;Landroid/os/Bundle;)Llp/f;
    .locals 1

    .line 1
    const-string v0, "adRequestBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a()Lio/bidmachine/CustomParams;

    move-result-object v0

    invoke-interface {p1, v0}, Llp/f;->setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->b(Landroid/os/Bundle;)Lio/bidmachine/PriceFloorParams;

    move-result-object v0

    invoke-interface {p1, v0}, Llp/f;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Llp/f;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Llp/f;->setPlacementId(Ljava/lang/String;)Llp/f;

    return-object p1
.end method

.method public abstract a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V
.end method
