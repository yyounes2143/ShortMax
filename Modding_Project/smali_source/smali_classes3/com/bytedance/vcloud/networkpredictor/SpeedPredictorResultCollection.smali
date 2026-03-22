.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
.super Ljava/lang/Object;
.source "SpeedPredictorResultCollection.java"


# instance fields
.field private resultCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->resultCollection:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public add(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->resultCollection:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(I)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->resultCollection:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;

    .line 8
    .line 9
    return-object p1
.end method

.method public getResultCollection()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->resultCollection:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->resultCollection:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
