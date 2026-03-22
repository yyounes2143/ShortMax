.class public abstract Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    }
.end annotation


# instance fields
.field public ZYk:Lcom/bytedance/sdk/component/tB/oJ/oJ;

.field public oJ:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/tB/oJ/oJ;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/component/tB/oJ/oJ;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/component/tB/oJ/oJ;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract Pfn()Lcom/bytedance/sdk/component/ZYk/oJ/oJ;
.end method

.method public abstract ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;
.end method

.method public abstract ba()Ljava/lang/String;
.end method

.method public abstract cFZ()I
.end method

.method public abstract ex()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public jFA()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract oJ()Ljava/lang/Object;
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    return-void
.end method

.method public so()Lcom/bytedance/sdk/component/ZYk/oJ/PiB;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract tB()Ljava/lang/String;
.end method
