.class Lio/bidmachine/BidMachineAd$a;
.super Lio/bidmachine/BidMachineTrackingObject;
.source "BidMachineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/u;->E()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Lwq/l;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method

.method public getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$a;->a:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lio/bidmachine/u;->I(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method
