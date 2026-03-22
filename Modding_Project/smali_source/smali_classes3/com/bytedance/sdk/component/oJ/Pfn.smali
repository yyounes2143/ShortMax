.class public abstract Lcom/bytedance/sdk/component/oJ/Pfn;
.super Lcom/bytedance/sdk/component/oJ/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/oJ/ZYk<",
        "TP;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/ZYk;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract oJ(Ljava/lang/Object;Lcom/bytedance/sdk/component/oJ/ba;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/oJ/ba;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic oJ()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
