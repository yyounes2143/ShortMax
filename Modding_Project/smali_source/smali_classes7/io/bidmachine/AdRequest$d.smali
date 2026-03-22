.class Lio/bidmachine/AdRequest$d;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Lio/bidmachine/a5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/a5$a<",
        "Lio/bidmachine/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$d;->a:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->a:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/bidmachine/u;)V
    .locals 1
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$d;->a:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/u;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$d;->b(Lio/bidmachine/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
