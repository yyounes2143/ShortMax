.class public abstract Lcom/bytedance/sdk/openadsdk/activity/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected final ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field protected final oJ:Landroid/app/Activity;

.field protected tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tb(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Pfn()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract PiB()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;
.end method

.method public Ry()V
    .locals 0

    .line 1
    return-void
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public ZYk()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V
.end method

.method public awB()Lcom/bytedance/sdk/openadsdk/activity/Pfn;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public ba()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public cFZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract dLZ()I
.end method

.method public abstract eZI()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation
.end method

.method public ex()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract jFA()I
.end method

.method public kkU()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(II)V
    .locals 0

    .line 3
    return-void
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 0

    .line 4
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 5
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 0

    .line 6
    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 0

    .line 7
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V
    .locals 0

    .line 8
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 0

    .line 9
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 0

    .line 10
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 0

    .line 11
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V
    .locals 0

    .line 12
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V
    .locals 0

    .line 13
    return-void
.end method

.method public oJ(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/activity/so;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            "FF)V"
        }
    .end annotation

    .line 14
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 15
    return-void
.end method

.method public abstract oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z
.end method

.method public si()V
    .locals 0

    .line 1
    return-void
.end method

.method public so()V
    .locals 0

    .line 1
    return-void
.end method

.method public tB()V
    .locals 0

    .line 1
    return-void
.end method
