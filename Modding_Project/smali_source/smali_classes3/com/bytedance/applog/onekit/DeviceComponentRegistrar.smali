.class public Lcom/bytedance/applog/onekit/DeviceComponentRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/volcengine/onekit/component/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/onekit/component/Component;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/volcengine/onekit/component/Component;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    new-array v2, v1, [Ljava/lang/Class;

    .line 6
    .line 7
    const-class v3, Lcom/volcengine/onekit/service/Device;

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/volcengine/onekit/component/Component;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/volcengine/onekit/service/Analytics;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/volcengine/onekit/component/Dependency;->required(Ljava/lang/Class;)Lcom/volcengine/onekit/component/Dependency;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/volcengine/onekit/component/Component$Builder;->addDependency(Lcom/volcengine/onekit/component/Dependency;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/volcengine/onekit/component/Component$Builder;->enablePrivacy()Lcom/volcengine/onekit/component/Component$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/bytedance/applog/onekit/DeviceComponentRegistrar$a;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/bytedance/applog/onekit/DeviceComponentRegistrar$a;-><init>(Lcom/bytedance/applog/onekit/DeviceComponentRegistrar;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/volcengine/onekit/component/Component$Builder;->factory(Lcom/volcengine/onekit/component/ComponentFactory;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/volcengine/onekit/component/Component$Builder;->build()Lcom/volcengine/onekit/component/Component;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v0, v1

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
