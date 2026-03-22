.class public Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar;
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
    const-class v3, Lcom/volcengine/onekit/service/Analytics;

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/volcengine/onekit/component/Component;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/content/Context;

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
    const-class v3, Lcom/volcengine/onekit/service/AppInfo;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/volcengine/onekit/component/Dependency;->required(Ljava/lang/Class;)Lcom/volcengine/onekit/component/Dependency;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/volcengine/onekit/component/Component$Builder;->addDependency(Lcom/volcengine/onekit/component/Dependency;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-class v3, Lcom/volcengine/onekit/model/InitOptions;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/volcengine/onekit/component/Dependency;->required(Ljava/lang/Class;)Lcom/volcengine/onekit/component/Dependency;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/volcengine/onekit/component/Component$Builder;->addDependency(Lcom/volcengine/onekit/component/Dependency;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/volcengine/onekit/component/Component$Builder;->enablePrivacy()Lcom/volcengine/onekit/component/Component$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar$a;

    .line 48
    .line 49
    invoke-direct {v3, p0}, Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar$a;-><init>(Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/volcengine/onekit/component/Component$Builder;->factory(Lcom/volcengine/onekit/component/ComponentFactory;)Lcom/volcengine/onekit/component/Component$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/volcengine/onekit/component/Component$Builder;->build()Lcom/volcengine/onekit/component/Component;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
