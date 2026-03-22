.class Lio/bidmachine/j2$b;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"

# interfaces
.implements Lio/bidmachine/e4$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/j2;


# direct methods
.method private constructor <init>(Lio/bidmachine/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/j2;Lio/bidmachine/j2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/j2$b;-><init>(Lio/bidmachine/j2;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/e4$b;)V
    .locals 3
    .param p1    # Lio/bidmachine/e4$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/e4$b;->a()Lio/bidmachine/protobuf/InitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 6
    .line 7
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/e4$b;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, v2, v0, p1}, Lio/bidmachine/j2;->v(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 23
    .line 24
    iget-object p1, p1, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 34
    .line 35
    iget-object v1, v1, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1, v1, v2}, Lio/bidmachine/ExtraParamsManager;->setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 45
    .line 46
    iget-object v1, p1, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/j2;->x(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public b(Lio/bidmachine/e4$b;)V
    .locals 2
    .param p1    # Lio/bidmachine/e4$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/e4$b;->a()Lio/bidmachine/protobuf/InitResponse;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/j2;->x(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public c(Lio/bidmachine/e4$b;)V
    .locals 3
    .param p1    # Lio/bidmachine/e4$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2$b;->a:Lio/bidmachine/j2;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/e4$b;->a()Lio/bidmachine/protobuf/InitResponse;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/e4$b;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/j2;->v(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
