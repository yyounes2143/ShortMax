.class Lio/bidmachine/s0;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/s0$b;,
        Lio/bidmachine/s0$a;
    }
.end annotation


# instance fields
.field private final a:Lfr/j;

.field private final b:Ljava/lang/String;

.field private c:Lio/bidmachine/s0$a;

.field private d:Lio/bidmachine/s0$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    const-string v1, "AdResponseLoader"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/s0;->a:Lfr/j;

    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/s0;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0;->a:Lfr/j;

    .line 2
    .line 3
    const-string v1, "cancel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/s0;->c:Lio/bidmachine/s0$a;

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/s0;->d:Lio/bidmachine/s0$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/bidmachine/s0$b;->g()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/bidmachine/s0;->d:Lio/bidmachine/s0$b;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public b(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/s0$a;)V
    .locals 7
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/NetworkAdUnitManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ApiRequest$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/s0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequestParameters;",
            "Lio/bidmachine/NetworkAdUnitManager;",
            "Lio/bidmachine/ApiRequest$Builder<",
            "*",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Lio/bidmachine/s0$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0;->a:Lfr/j;

    .line 2
    .line 3
    const-string v1, "load"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/s0;->d:Lio/bidmachine/s0$b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/s0$b;->g()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p4, p0, Lio/bidmachine/s0;->c:Lio/bidmachine/s0$a;

    .line 16
    .line 17
    new-instance v0, Lio/bidmachine/s0$b;

    .line 18
    .line 19
    iget-object v2, p0, Lio/bidmachine/s0;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v1, v0

    .line 26
    move-object v4, p1

    .line 27
    move-object v5, p2

    .line 28
    move-object v6, p4

    .line 29
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/s0$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/s0$a;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/bidmachine/s0;->d:Lio/bidmachine/s0$b;

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$b;)Lio/bidmachine/ApiRequest$Builder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lio/bidmachine/s0;->d:Lio/bidmachine/s0$b;

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Lio/bidmachine/ApiRequest$Builder;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$c;)Lio/bidmachine/ApiRequest$Builder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lio/bidmachine/x4;->b()Lio/bidmachine/x4;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lio/bidmachine/s0;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/x4;->a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
