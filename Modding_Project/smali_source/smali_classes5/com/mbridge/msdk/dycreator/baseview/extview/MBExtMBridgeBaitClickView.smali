.class public Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;
.super Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;
.source "MBExtMBridgeBaitClickView.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;


# instance fields
.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;-><init>(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 4
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->setAttributeSet(Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Ljava/util/Map;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBExtMBridgeBaitClickView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 12

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/dycreator/engine/b;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_8

    .line 5
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/dycreator/engine/c;

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    sget-object v6, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView$1;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, -0x2

    const-string v7, "match"

    const-string v8, "fill"

    const-string v9, "@+id"

    const/4 v10, 0x5

    const/4 v11, -0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 8
    :pswitch_0
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x15

    .line 9
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 10
    :pswitch_1
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xd

    .line 11
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 12
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 14
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 15
    :pswitch_3
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 17
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 18
    :pswitch_4
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 20
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 21
    :pswitch_5
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 24
    :pswitch_6
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x9

    .line 25
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 26
    :pswitch_7
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xb

    .line 27
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 28
    :pswitch_8
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    .line 29
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 31
    :pswitch_9
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    .line 32
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 34
    :pswitch_a
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    .line 35
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 36
    :pswitch_b
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    .line 37
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 39
    :pswitch_c
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 40
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 41
    :pswitch_d
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 43
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 44
    :pswitch_e
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 46
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    .line 48
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 49
    :pswitch_f
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 51
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 53
    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 54
    :pswitch_10
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 56
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    .line 58
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 59
    :pswitch_11
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 61
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 62
    :pswitch_12
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xf

    .line 63
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 64
    :pswitch_13
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xa

    .line 65
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 66
    :pswitch_14
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xc

    .line 67
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 68
    :pswitch_15
    invoke-interface {p1, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xe

    .line 69
    invoke-virtual {v0, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 70
    :pswitch_16
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    const-string v7, "wrap"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 74
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 75
    :cond_3
    :goto_1
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 76
    :pswitch_17
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 78
    :cond_4
    const-string v7, "w"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 79
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    .line 80
    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v6

    .line 81
    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    .line 82
    :cond_6
    :goto_2
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActionDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mbridgeAction"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getBindDataDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mbridgeData"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getEffectDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mbridgeEffect"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getReportDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mbridgeReport"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getStrategyDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "mbridgeStrategy"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView;->m:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public setAttributeSet(Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/engine/b;->c()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_c

    .line 16
    .line 17
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/mbridge/msdk/dycreator/engine/c;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    sget-object v5, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeBaitClickView$1;->a:[I

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    aget v4, v5, v4

    .line 38
    .line 39
    const/4 v5, 0x5

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eq v4, v6, :cond_a

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x2

    .line 45
    if-eq v4, v8, :cond_5

    .line 46
    .line 47
    if-eq v4, v7, :cond_4

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    if-eq v4, v6, :cond_3

    .line 51
    .line 52
    if-eq v4, v5, :cond_1

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_b

    .line 65
    .line 66
    const-string v5, "invisible"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_2
    const-string v5, "gone"

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_b

    .line 86
    .line 87
    const/16 v4, 0x8

    .line 88
    .line 89
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->b(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_5
    const-string v4, "litongtest"

    .line 129
    .line 130
    const-string v5, "\u8bbe\u7f6e\u80cc\u666f\u989c\u8272"

    .line 131
    .line 132
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const-string v5, "#"

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_8

    .line 146
    .line 147
    :try_start_0
    const-string v5, "-"

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 154
    :catch_0
    const/4 v4, 0x0

    .line 155
    :goto_1
    if-eqz v4, :cond_6

    .line 156
    .line 157
    array-length v5, v4

    .line 158
    if-gt v5, v8, :cond_6

    .line 159
    .line 160
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :cond_6
    if-eqz v4, :cond_7

    .line 178
    .line 179
    array-length v5, v4

    .line 180
    if-ne v5, v7, :cond_7

    .line 181
    .line 182
    :try_start_1
    aget-object v5, v4, v8

    .line 183
    .line 184
    invoke-static {v5}, Lcom/mbridge/msdk/dycreator/baseview/GradientOrientationUtils;->getOrientation(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    aget-object v7, v4, v2

    .line 189
    .line 190
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    aget-object v4, v4, v6

    .line 195
    .line 196
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    filled-new-array {v7, v4}, [I

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 205
    .line 206
    invoke-direct {v6, v5, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    const-string v5, "@drawable/"

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_9

    .line 255
    .line 256
    const/16 v5, 0xa

    .line 257
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    :cond_9
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    const-string v6, "drawable"

    .line 271
    .line 272
    invoke-static {v5, v4, v6}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_a
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    const-string v6, "@+id/"

    .line 285
    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_b

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-virtual {p0, v4}, Landroid/view/View;->setId(I)V

    .line 301
    .line 302
    .line 303
    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_c
    return-void
.end method

.method public setDynamicReport(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    return-void
.end method
