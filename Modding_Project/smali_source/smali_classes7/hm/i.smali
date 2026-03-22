.class public final synthetic Lhm/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

.field public final synthetic b:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhm/i;->a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 5
    .line 6
    iput-object p2, p0, Lhm/i;->b:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lhm/i;->a:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 2
    .line 3
    iget-object v1, p0, Lhm/i;->b:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->d(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
