.class public Lcom/bytedance/bdtracker/i3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IDataObserver;


# instance fields
.field public final synthetic a:Lcom/volcengine/onekit/component/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/onekit/DeviceComponentRegistrar$a;Lcom/volcengine/onekit/component/ComponentContainer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/bdtracker/i3;->a:Lcom/volcengine/onekit/component/ComponentContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/bdtracker/i3;->a:Lcom/volcengine/onekit/component/ComponentContainer;

    .line 12
    .line 13
    new-instance p2, Lcom/bytedance/bdtracker/j3;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/bytedance/bdtracker/j3;-><init>()V

    .line 16
    .line 17
    .line 18
    const-class p3, Lcom/volcengine/onekit/service/Device;

    .line 19
    .line 20
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-interface {p1, p2, p3}, Lcom/volcengine/onekit/component/ComponentContainer;->set(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/bytedance/applog/AppLog;->removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/bdtracker/i3;->a:Lcom/volcengine/onekit/component/ComponentContainer;

    .line 12
    .line 13
    new-instance p2, Lcom/bytedance/bdtracker/j3;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/bytedance/bdtracker/j3;-><init>()V

    .line 16
    .line 17
    .line 18
    const-class p3, Lcom/volcengine/onekit/service/Device;

    .line 19
    .line 20
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-interface {p1, p2, p3}, Lcom/volcengine/onekit/component/ComponentContainer;->set(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/bytedance/applog/AppLog;->removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
