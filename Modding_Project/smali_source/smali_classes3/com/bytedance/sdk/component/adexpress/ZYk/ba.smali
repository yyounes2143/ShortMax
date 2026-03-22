.class public Lcom/bytedance/sdk/component/adexpress/ZYk/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;

.field private oJ:Landroid/content/Context;

.field private tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->oJ:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ba;)Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;

    return-object p0
.end method


# virtual methods
.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/tB;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->ba()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ba;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/oJ;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ba$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ba$1;-><init>(Lcom/bytedance/sdk/component/adexpress/ZYk/ba;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    const/4 p1, 0x1

    return p1
.end method
