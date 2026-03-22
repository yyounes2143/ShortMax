.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;
.super Lcom/bytedance/sdk/openadsdk/core/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ([FLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/so/so;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "duration"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 44
    .line 45
    invoke-virtual {v1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/util/Map;FF)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
