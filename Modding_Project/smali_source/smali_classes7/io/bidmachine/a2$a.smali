.class Lio/bidmachine/a2$a;
.super Ljava/lang/Object;
.source "BidMachineEventTracker.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/a2;->t(Ljava/util/List;Ljava/util/List;Lwq/j;Lio/bidmachine/TrackEventType;Lwq/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$b<",
        "Ljava/lang/String;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lwq/j;

.field final synthetic c:Lio/bidmachine/TrackEventType;


# direct methods
.method constructor <init>(Ljava/util/List;Lwq/j;Lio/bidmachine/TrackEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/a2$a;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/a2$a;->b:Lwq/j;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/a2$a;->c:Lio/bidmachine/TrackEventType;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/a2$a;->b(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lfr/a;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Failed to track URL"

    .line 4
    .line 5
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/a2$a;->a:Ljava/util/List;

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/a2$a;->b:Lwq/j;

    .line 12
    .line 13
    iget-object v2, p0, Lio/bidmachine/a2$a;->c:Lio/bidmachine/TrackEventType;

    .line 14
    .line 15
    invoke-virtual {v2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/a2;->j(Ljava/util/List;Lwq/j;ILfr/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/a2$a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
