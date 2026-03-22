.class public Lcom/bytedance/sdk/component/adexpress/ba/HL;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/ba/HL$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Landroid/widget/LinearLayout;

.field private ZYk:Lcom/bytedance/sdk/component/utils/jr;

.field private ba:Lcom/bytedance/adsdk/ZYk/ba;

.field private cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

.field private ex:Lcom/bytedance/sdk/component/adexpress/ba/HL$oJ;

.field private oJ:Landroid/widget/TextView;

.field private tB:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/ba/HL;->oJ(Landroid/content/Context;Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/ba/HL;)Lcom/bytedance/adsdk/ZYk/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    return-object p0
.end method

.method private oJ(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7d06ffe2

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->Pfn:Landroid/widget/LinearLayout;

    const p1, 0x7d06ffdf

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->oJ:Landroid/widget/TextView;

    const p1, 0x7d06ffde

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->tB:Landroid/widget/TextView;

    const p1, 0x7d06ffd2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ZYk/ba;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    .line 8
    const-string p2, "lottie_json/twist_multi_angle.json"

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/ba;->setAnimation(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    const-string p2, "images/"

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/ba;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/ba;->oJ(Z)V

    return-void
.end method


# virtual methods
.method public getTopTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->oJ:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWriggleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->Pfn:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWriggleProgressIv()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 3

    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ba/HL$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/ba/HL$1;-><init>(Lcom/bytedance/sdk/component/adexpress/ba/HL;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ZYk:Lcom/bytedance/sdk/component/utils/jr;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/utils/jr;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/jr;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ZYk:Lcom/bytedance/sdk/component/utils/jr;

    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ba/HL$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/ba/HL$2;-><init>(Lcom/bytedance/sdk/component/adexpress/ba/HL;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->tB()I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->Pfn()I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->ba()Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->cFZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->so()Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ba:Lcom/bytedance/adsdk/ZYk/ba;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba;->Pfn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/ba/HL$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->ex:Lcom/bytedance/sdk/component/adexpress/ba/HL$oJ;

    .line 2
    .line 3
    return-void
.end method

.method public setShakeText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/HL;->tB:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
