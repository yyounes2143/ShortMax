.class public Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/volcengine/onekit/component/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/volcengine/onekit/component/ComponentFactory<",
        "Lcom/volcengine/onekit/service/Analytics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/onekit/AnalyticsComponentRegistrar;)V
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
    .locals 0

    .line 1
    new-instance p1, Lcom/bytedance/bdtracker/h3;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/bytedance/bdtracker/h3;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
