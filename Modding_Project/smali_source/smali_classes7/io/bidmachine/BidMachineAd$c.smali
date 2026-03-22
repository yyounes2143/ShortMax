.class Lio/bidmachine/BidMachineAd$c;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Lio/bidmachine/AdRequest$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdRequest$f<",
        "TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/AdRequest;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$c;->a:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
