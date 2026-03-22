.class Lio/bidmachine/AdRequest$e;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Lio/bidmachine/s0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/bidmachine/ApiRequest$Builder;

.field final synthetic c:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;Ljava/lang/String;Lio/bidmachine/ApiRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$e;->c:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/AdRequest$e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/AdRequest$e;->b:Lio/bidmachine/ApiRequest$Builder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lfr/a;)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$e;->c:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest$e;->b:Lio/bidmachine/ApiRequest$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/AdRequest;->processApiRequestLoadedFail(Lio/bidmachine/ApiRequest$Builder;Lfr/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lio/bidmachine/u;)V
    .locals 2
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$e;->c:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/AdRequest$e;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/AdRequest;->setAuctionUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/AdRequest$e;->c:Lio/bidmachine/AdRequest;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/u;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$e;->c:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$800(Lio/bidmachine/AdRequest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
