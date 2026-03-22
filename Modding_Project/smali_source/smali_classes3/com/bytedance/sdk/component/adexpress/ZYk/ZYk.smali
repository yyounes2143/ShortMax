.class public Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/kkU;


# instance fields
.field private Pfn:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

.field private ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

.field private ba:I

.field private ex:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

.field private oJ:Landroid/content/Context;

.field private tB:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/so;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->oJ:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->Pfn:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->tB:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    .line 11
    .line 12
    if-eqz p8, :cond_0

    .line 13
    .line 14
    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p6, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    .line 18
    .line 19
    move-object v0, p6

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p3

    .line 22
    move v3, p4

    .line 23
    move-object v4, p5

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p7

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/Pfn/so;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;Lcom/bytedance/sdk/component/adexpress/dynamic/ba/oJ;)V

    .line 27
    .line 28
    .line 29
    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V

    .line 36
    .line 37
    .line 38
    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/Pfn/cFZ;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ba:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const/4 p1, 0x2

    .line 47
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ba:I

    .line 48
    .line 49
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;)Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->Pfn:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ba:I

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;)Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public ZYk()Lcom/bytedance/sdk/component/adexpress/dynamic/ex;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->ex()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->ZYk()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->Pfn:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ba:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;->oJ(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk$1;-><init>(Lcom/bytedance/sdk/component/adexpress/ZYk/ZYk;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    const/4 p1, 0x1

    return p1
.end method
