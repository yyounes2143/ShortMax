.class Lio/bidmachine/c4$a;
.super Ljava/lang/Object;
.source "InitialRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/c4;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/c4;


# direct methods
.method constructor <init>(Lio/bidmachine/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ApiRequest$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 9
    .line 10
    invoke-static {v2}, Lio/bidmachine/c4;->i(Lio/bidmachine/c4;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lio/bidmachine/ApiRequest$ApiInitDataBinder;

    .line 19
    .line 20
    invoke-direct {v2}, Lio/bidmachine/ApiRequest$ApiInitDataBinder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 28
    .line 29
    invoke-static {v2}, Lio/bidmachine/c4;->h(Lio/bidmachine/c4;)Lio/bidmachine/protobuf/InitRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lio/bidmachine/c4$a$a;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lio/bidmachine/c4$a$a;-><init>(Lio/bidmachine/c4$a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$b;)Lio/bidmachine/ApiRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lio/bidmachine/c4;->a(Lio/bidmachine/c4;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 51
    .line 52
    .line 53
    return-void
.end method
