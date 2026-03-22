.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static oJ()Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/tB;

    return-object v0
.end method


# virtual methods
.method public oJ(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    :cond_2
    const-string v1, "scale"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/dLZ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/dLZ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 13
    :cond_3
    const-string v1, "translate"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/awB;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/awB;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 15
    :cond_4
    const-string v1, "ripple"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/so;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/so;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 17
    :cond_5
    const-string v1, "marquee"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/cFZ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/cFZ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 19
    :cond_6
    const-string v1, "waggle"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/eZI;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/eZI;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 21
    :cond_7
    const-string v1, "shine"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/BTZ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/BTZ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 23
    :cond_8
    const-string v1, "swing"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/WcQ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/WcQ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 25
    :cond_9
    const-string v1, "fade"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/oJ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/oJ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 27
    :cond_a
    const-string v1, "rubIn"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/kkU;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/kkU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 29
    :cond_b
    const-string v1, "rotate"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/jFA;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/jFA;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 31
    :cond_c
    const-string v1, "cutIn"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ba;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ba;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 33
    :cond_d
    const-string v1, "stretch"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 34
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/PiB;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/PiB;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    return-object v0

    .line 35
    :cond_e
    const-string v1, "bounce"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/Pfn;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/Pfn;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;)V

    :cond_f
    return-object v0
.end method
