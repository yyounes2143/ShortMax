.class public Lcom/bytedance/vcloud/abrmodule/ABRResult;
.super Ljava/lang/Object;
.source "ABRResult.java"


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/ABRResultElement;",
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
    iput-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResult;->elements:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public add(Lcom/bytedance/vcloud/abrmodule/ABRResultElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResult;->elements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(I)Lcom/bytedance/vcloud/abrmodule/ABRResultElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResult;->elements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;

    .line 8
    .line 9
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRResult;->elements:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
