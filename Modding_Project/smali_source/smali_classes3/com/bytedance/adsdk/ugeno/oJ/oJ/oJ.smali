.class public abstract Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ$oJ;
    }
.end annotation


# instance fields
.field protected ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field protected oJ:Lorg/json/JSONObject;

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->oJ:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->oJ()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract ZYk()V
.end method

.method public abstract ZYk(Landroid/graphics/Canvas;)V
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->oJ:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->tB:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk()V

    return-void
.end method

.method public abstract oJ(II)V
.end method

.method public abstract oJ(Landroid/graphics/Canvas;)V
.end method

.method public abstract tB()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end method
