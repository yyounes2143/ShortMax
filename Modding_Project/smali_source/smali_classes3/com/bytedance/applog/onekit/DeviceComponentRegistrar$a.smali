.class public Lcom/bytedance/applog/onekit/DeviceComponentRegistrar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/volcengine/onekit/component/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/onekit/DeviceComponentRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/volcengine/onekit/component/ComponentFactory<",
        "Lcom/volcengine/onekit/service/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/onekit/DeviceComponentRegistrar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/volcengine/onekit/component/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/bytedance/bdtracker/j3;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/bytedance/bdtracker/j3;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/i3;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/i3;-><init>(Lcom/bytedance/applog/onekit/DeviceComponentRegistrar$a;Lcom/volcengine/onekit/component/ComponentContainer;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :goto_0
    return-object p1
.end method
