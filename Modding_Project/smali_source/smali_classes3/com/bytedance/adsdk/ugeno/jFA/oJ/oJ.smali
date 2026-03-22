.class public Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;
.super Lcom/bytedance/adsdk/ugeno/jFA/ba/ZYk;
.source "SourceFile"


# instance fields
.field private BWx:Ljava/lang/String;

.field private JJ:Ljava/lang/String;

.field private MVA:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

.field private Qzd:I

.field private Zzm:Z

.field private hwh:Ljava/lang/String;

.field private ib:Ljava/lang/String;

.field private oo:Z

.field private sQ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/jFA/ba/ZYk;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "row"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->JJ:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private ZYk(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->JJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "row_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "column_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a28e907 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        -0xc62c683 -> :sswitch_1
        0x1b9da -> :sswitch_0
    .end sparse-switch
.end method

.method private ex()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->BWx:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->BWx:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "local://"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->BWx:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/ex;->ZYk(Landroid/content/Context;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->ZYk(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ()Lcom/bytedance/adsdk/ugeno/Pfn;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Pfn;->ZYk()Lcom/bytedance/adsdk/ugeno/oJ;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->jFA:Lcom/bytedance/adsdk/ugeno/core/dLZ;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->BWx:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v3, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ$1;

    .line 63
    .line 64
    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ$1;-><init>(Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/core/dLZ;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/oJ$oJ;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->ZYk(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected Jm()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Jm()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->Zzm:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 9
    .line 10
    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/jFA/ba/ZYk;->YF:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->oo:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oG:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->PdF:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ofl:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method protected Rl()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Rl()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->Zzm:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 9
    .line 10
    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->sQ:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->oo:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oG:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->MVA:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->Qzd:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public ZYk()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/jFA/ba/ZYk;->ZYk()V

    .line 2
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->ex()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/jFA/ba/oJ;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/jFA/ba/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "highlightBackgroundImage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "highlightBackgroundColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "highlightImage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "highlightedTextColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "highlightTextColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_0

    :sswitch_6
    const-string v3, "direction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 5
    :pswitch_0
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->ib:Ljava/lang/String;

    return-void

    .line 6
    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->tB(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oG:Z

    .line 8
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->MVA:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    goto :goto_1

    .line 9
    :cond_7
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->Qzd:I

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oG:Z

    .line 11
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->oo:Z

    return-void

    .line 12
    :pswitch_2
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->hwh:Ljava/lang/String;

    return-void

    .line 13
    :pswitch_3
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->BWx:Ljava/lang/String;

    return-void

    .line 14
    :pswitch_4
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->sQ:I

    .line 15
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->Zzm:Z

    :goto_2
    return-void

    .line 16
    :pswitch_5
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/jFA/oJ/oJ;->JJ:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395ff881 -> :sswitch_6
        -0x3037341e -> :sswitch_5
        -0x634c0dd -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0x1d91fd07 -> :sswitch_2
        0x432ba381 -> :sswitch_1
        0x437f1d79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
