.class public Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;
.super Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;
.source "MBExtMBridgeTextView.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;-><init>(Landroid/content/Context;)V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {p1, p2}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

    .line 6
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->setAttributeSet(Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Ljava/util/Map;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBExtMBridgeTextView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 11

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/mbridge/msdk/dycreator/engine/b;->b()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_9

    .line 21
    .line 22
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/mbridge/msdk/dycreator/engine/c;

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    sget-object v6, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView$1;->a:[I

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    aget v5, v6, v5

    .line 43
    .line 44
    const/16 v6, 0x1b

    .line 45
    .line 46
    const/4 v7, -0x2

    .line 47
    const-string v8, "wrap"

    .line 48
    .line 49
    const-string v9, "m"

    .line 50
    .line 51
    const-string v10, "f"

    .line 52
    .line 53
    if-eq v5, v6, :cond_5

    .line 54
    .line 55
    const/16 v6, 0x1c

    .line 56
    .line 57
    if-eq v5, v6, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_4

    .line 69
    .line 70
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    :goto_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_8

    .line 109
    .line 110
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    :goto_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 138
    .line 139
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    return-object v0
.end method

.method public getActionDes()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->b:Ljava/util/Map;

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

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->c:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "mbridgeAttached"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->c:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/l$b;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/l$b;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/l$b;->a()Lcom/mbridge/msdk/foundation/same/report/l;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/l;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->c:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "mbridgeDetached"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->c:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/l$b;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/l$b;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/l$b;->a()Lcom/mbridge/msdk/foundation/same/report/l;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/l;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public setAttributeSet(Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/mbridge/msdk/dycreator/engine/b;->c()Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    move v6, v5

    .line 20
    move v7, v6

    .line 21
    move v8, v7

    .line 22
    move v9, v8

    .line 23
    move v10, v9

    .line 24
    :goto_0
    if-ge v6, v4, :cond_e

    .line 25
    .line 26
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    check-cast v11, Lcom/mbridge/msdk/dycreator/engine/c;

    .line 35
    .line 36
    if-nez v11, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    const-string v13, "setupview"

    .line 45
    .line 46
    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    sget-object v12, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView$1;->a:[I

    .line 50
    .line 51
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    aget v11, v12, v11

    .line 56
    .line 57
    const-string v12, "drawable"

    .line 58
    .line 59
    const-string v14, "@drawable/"

    .line 60
    .line 61
    const/16 v15, 0x8

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    packed-switch v11, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :pswitch_0
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    .line 82
    .line 83
    invoke-direct {v12, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-array v11, v2, [Landroid/text/InputFilter;

    .line 87
    .line 88
    aput-object v12, v11, v5

    .line 89
    .line 90
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :pswitch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    invoke-virtual {v0, v7, v10, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :pswitch_2
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    invoke-virtual {v0, v11, v10, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :pswitch_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-virtual {v8, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :pswitch_4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-virtual {v7, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :pswitch_5
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v9, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_2

    .line 179
    .line 180
    :pswitch_6
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {v10, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    invoke-virtual {v0, v7, v10, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :pswitch_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :pswitch_8
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->b(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :pswitch_9
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_1

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_1
    sget-object v12, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    .line 244
    .line 245
    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    check-cast v11, Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    if-eqz v12, :cond_2

    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_2
    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :pswitch_a
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    if-nez v12, :cond_d

    .line 277
    .line 278
    sget-object v12, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    check-cast v11, Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-nez v12, :cond_d

    .line 295
    .line 296
    invoke-virtual {v0, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :pswitch_b
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    const-string v12, "/"

    .line 306
    .line 307
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    add-int/2addr v12, v2

    .line 312
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    new-instance v13, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v14, "R.style."

    .line 326
    .line 327
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-virtual {v12, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->c(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_2

    .line 349
    .line 350
    :pswitch_c
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    const-string v12, "bold"

    .line 355
    .line 356
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    if-eqz v11, :cond_d

    .line 361
    .line 362
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :pswitch_d
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    const-string v15, "#"

    .line 376
    .line 377
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v15

    .line 381
    if-eqz v15, :cond_5

    .line 382
    .line 383
    :try_start_0
    const-string v12, "-"

    .line 384
    .line 385
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :catch_0
    const/4 v11, 0x2

    .line 390
    if-eqz v13, :cond_3

    .line 391
    .line 392
    array-length v12, v13

    .line 393
    if-gt v12, v11, :cond_3

    .line 394
    .line 395
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_2

    .line 411
    .line 412
    :cond_3
    if-eqz v13, :cond_4

    .line 413
    .line 414
    array-length v12, v13

    .line 415
    const/4 v14, 0x3

    .line 416
    if-ne v12, v14, :cond_4

    .line 417
    .line 418
    :try_start_1
    aget-object v11, v13, v11

    .line 419
    .line 420
    invoke-static {v11}, Lcom/mbridge/msdk/dycreator/baseview/GradientOrientationUtils;->getOrientation(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    aget-object v12, v13, v5

    .line 425
    .line 426
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    aget-object v13, v13, v2

    .line 431
    .line 432
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v13

    .line 436
    filled-new-array {v12, v13}, [I

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 441
    .line 442
    invoke-direct {v13, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v13, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    .line 450
    .line 451
    goto/16 :goto_2

    .line 452
    .line 453
    :catch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_2

    .line 469
    .line 470
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v12

    .line 478
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    move-result v11

    .line 482
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_2

    .line 486
    .line 487
    :cond_5
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v13

    .line 491
    if-eqz v13, :cond_6

    .line 492
    .line 493
    const/16 v13, 0xa

    .line 494
    .line 495
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 504
    .line 505
    .line 506
    move-result-object v14

    .line 507
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v14

    .line 511
    invoke-virtual {v13, v11, v12, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-result v11

    .line 515
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_2

    .line 519
    .line 520
    :pswitch_e
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v11

    .line 524
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    if-nez v12, :cond_d

    .line 529
    .line 530
    const-string v12, "invisible"

    .line 531
    .line 532
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v12

    .line 536
    if-eqz v12, :cond_7

    .line 537
    .line 538
    const/4 v11, 0x4

    .line 539
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_2

    .line 543
    .line 544
    :cond_7
    const-string v12, "gone"

    .line 545
    .line 546
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v11

    .line 550
    if-eqz v11, :cond_d

    .line 551
    .line 552
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_2

    .line 556
    .line 557
    :pswitch_f
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v11

    .line 561
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    if-nez v12, :cond_d

    .line 566
    .line 567
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 568
    .line 569
    .line 570
    move-result-object v12

    .line 571
    invoke-virtual {v12, v11}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result v11

    .line 575
    int-to-float v11, v11

    .line 576
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_2

    .line 580
    .line 581
    :pswitch_10
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 582
    .line 583
    .line 584
    move-result-object v11

    .line 585
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v12

    .line 589
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    move-result v11

    .line 593
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_2

    .line 597
    .line 598
    :pswitch_11
    invoke-interface {v1, v6, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_2

    .line 606
    .line 607
    :pswitch_12
    invoke-interface {v1, v6, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    invoke-virtual {v0, v11}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_2

    .line 615
    .line 616
    :pswitch_13
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 617
    .line 618
    .line 619
    move-result-object v11

    .line 620
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v12

    .line 624
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move-result v11

    .line 628
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 629
    .line 630
    .line 631
    goto/16 :goto_2

    .line 632
    .line 633
    :pswitch_14
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v11

    .line 637
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v14

    .line 641
    if-eqz v14, :cond_8

    .line 642
    .line 643
    const/16 v14, 0xa

    .line 644
    .line 645
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v11

    .line 649
    goto :goto_1

    .line 650
    :cond_8
    const-string v11, ""

    .line 651
    .line 652
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 653
    .line 654
    .line 655
    move-result v14

    .line 656
    if-nez v14, :cond_d

    .line 657
    .line 658
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 659
    .line 660
    .line 661
    move-result-object v14

    .line 662
    invoke-virtual {v14}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 663
    .line 664
    .line 665
    move-result-object v14

    .line 666
    invoke-static {v14, v11, v12}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    move-result v11

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 671
    .line 672
    .line 673
    move-result-object v12

    .line 674
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 675
    .line 676
    .line 677
    move-result-object v11

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 679
    .line 680
    .line 681
    move-result-object v12

    .line 682
    const/high16 v14, 0x41600000    # 14.0f

    .line 683
    .line 684
    invoke-static {v12, v14}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 685
    .line 686
    .line 687
    move-result v12

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 689
    .line 690
    .line 691
    move-result-object v15

    .line 692
    invoke-static {v15, v14}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 693
    .line 694
    .line 695
    move-result v14

    .line 696
    invoke-virtual {v11, v5, v5, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v11, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_2

    .line 703
    .line 704
    :pswitch_15
    invoke-interface {v1, v6, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 705
    .line 706
    .line 707
    move-result v11

    .line 708
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_2

    .line 712
    .line 713
    :pswitch_16
    invoke-interface {v1, v6, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_2

    .line 721
    .line 722
    :pswitch_17
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v11

    .line 726
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 727
    .line 728
    .line 729
    move-result v12

    .line 730
    if-nez v12, :cond_d

    .line 731
    .line 732
    const-string v12, "end"

    .line 733
    .line 734
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v12

    .line 738
    if-eqz v12, :cond_9

    .line 739
    .line 740
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 741
    .line 742
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 743
    .line 744
    .line 745
    :cond_9
    const-string v12, "start"

    .line 746
    .line 747
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v12

    .line 751
    if-eqz v12, :cond_a

    .line 752
    .line 753
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 754
    .line 755
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 756
    .line 757
    .line 758
    :cond_a
    const-string v12, "middle"

    .line 759
    .line 760
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v12

    .line 764
    if-eqz v12, :cond_b

    .line 765
    .line 766
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 767
    .line 768
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 769
    .line 770
    .line 771
    :cond_b
    const-string v12, "marquee"

    .line 772
    .line 773
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    if-eqz v11, :cond_d

    .line 778
    .line 779
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 780
    .line 781
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 782
    .line 783
    .line 784
    goto :goto_2

    .line 785
    :pswitch_18
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v11

    .line 789
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v12

    .line 793
    if-nez v12, :cond_d

    .line 794
    .line 795
    const-string v12, "@string/"

    .line 796
    .line 797
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 798
    .line 799
    .line 800
    move-result v12

    .line 801
    if-eqz v12, :cond_c

    .line 802
    .line 803
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 804
    .line 805
    .line 806
    move-result-object v11

    .line 807
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v12

    .line 811
    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/dycreator/engine/b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v11

    .line 815
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    .line 817
    .line 818
    goto :goto_2

    .line 819
    :cond_c
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    .line 821
    .line 822
    goto :goto_2

    .line 823
    :pswitch_19
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v11

    .line 827
    const-string v12, "@+id/"

    .line 828
    .line 829
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 830
    .line 831
    .line 832
    move-result v12

    .line 833
    if-eqz v12, :cond_d

    .line 834
    .line 835
    const/4 v12, 0x5

    .line 836
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v11

    .line 840
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 841
    .line 842
    .line 843
    move-result v11

    .line 844
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 845
    .line 846
    .line 847
    :cond_d
    :goto_2
    add-int/2addr v6, v2

    .line 848
    goto/16 :goto_0

    .line 849
    .line 850
    :cond_e
    return-void

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
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

.method public setDynamicReport(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->c:Ljava/util/Map;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtMBridgeTextView;->d:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
