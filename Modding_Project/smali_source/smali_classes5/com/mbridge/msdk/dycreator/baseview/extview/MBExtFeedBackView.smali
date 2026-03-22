.class public Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;
.super Lcom/mbridge/msdk/widget/FeedBackButton;
.source "MBExtFeedBackView.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/widget/FeedBackButton;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/widget/FeedBackButton;-><init>(Landroid/content/Context;)V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {p1, p2}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

    .line 6
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->setAttributeSet(Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/mbridge/msdk/dycreator/utils/c;->a(Ljava/util/Map;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBExtFeedBackView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/widget/FeedBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

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
    sget-object v6, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView$1;->a:[I

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
    const/16 v6, 0x1a

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
    const/16 v6, 0x1b

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->a:Ljava/util/Map;

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
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->b:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

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
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->b:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->b:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

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
    .locals 14

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
    move v4, v3

    .line 16
    move v5, v4

    .line 17
    move v6, v5

    .line 18
    move v7, v6

    .line 19
    :goto_0
    if-ge v3, v1, :cond_c

    .line 20
    .line 21
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    check-cast v8, Lcom/mbridge/msdk/dycreator/engine/c;

    .line 30
    .line 31
    if-nez v8, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-string v10, "setupview"

    .line 40
    .line 41
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-object v9, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView$1;->a:[I

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    aget v8, v9, v8

    .line 51
    .line 52
    const-string v9, "drawable"

    .line 53
    .line 54
    const/16 v10, 0xa

    .line 55
    .line 56
    const-string v11, "@drawable/"

    .line 57
    .line 58
    const/16 v12, 0x8

    .line 59
    .line 60
    const/4 v13, 0x1

    .line 61
    packed-switch v8, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_0
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {p0, v4, v7, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :pswitch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {p0, v8, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :pswitch_2
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v5, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual {p0, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :pswitch_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-virtual {p0, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :pswitch_4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v6, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-virtual {p0, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :pswitch_5
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    invoke-virtual {p0, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_6
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :pswitch_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->b(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :pswitch_8
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_1

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_1
    sget-object v9, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_2

    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :pswitch_9
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-nez v9, :cond_b

    .line 248
    .line 249
    sget-object v9, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-nez v9, :cond_b

    .line 266
    .line 267
    invoke-virtual {p0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :pswitch_a
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    const-string v9, "/"

    .line 277
    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    add-int/2addr v9, v13

    .line 283
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    new-instance v10, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v11, "R.style."

    .line 297
    .line 298
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-virtual {v9, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->c(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    invoke-virtual {p0, v9, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :pswitch_b
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    const-string v9, "bold"

    .line 326
    .line 327
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_b

    .line 332
    .line 333
    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_2

    .line 341
    .line 342
    :pswitch_c
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    const-string v12, "#"

    .line 347
    .line 348
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-eqz v12, :cond_3

    .line 353
    .line 354
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    invoke-virtual {p0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-eqz v11, :cond_4

    .line 376
    .line 377
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-virtual {v10, v8, v9, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    invoke-virtual {p0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :pswitch_d
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    if-nez v9, :cond_b

    .line 411
    .line 412
    const-string v9, "invisible"

    .line 413
    .line 414
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    if-eqz v9, :cond_5

    .line 419
    .line 420
    const/4 v8, 0x4

    .line 421
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_2

    .line 425
    .line 426
    :cond_5
    const-string v9, "gone"

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v8

    .line 432
    if-eqz v8, :cond_b

    .line 433
    .line 434
    invoke-virtual {p0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :pswitch_e
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-nez v9, :cond_b

    .line 448
    .line 449
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v9, v8}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v8

    .line 457
    int-to-float v8, v8

    .line 458
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_2

    .line 462
    .line 463
    :pswitch_f
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_2

    .line 479
    .line 480
    :pswitch_10
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_2

    .line 488
    .line 489
    :pswitch_11
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    invoke-virtual {p0, v8}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_2

    .line 497
    .line 498
    :pswitch_12
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_2

    .line 514
    .line 515
    :pswitch_13
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_6

    .line 524
    .line 525
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    goto :goto_1

    .line 530
    :cond_6
    const-string v8, ""

    .line 531
    .line 532
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v10

    .line 536
    if-nez v10, :cond_b

    .line 537
    .line 538
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    invoke-static {v10, v8, v9}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    const/high16 v10, 0x41600000    # 14.0f

    .line 563
    .line 564
    invoke-static {v9, v10}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 565
    .line 566
    .line 567
    move-result v9

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 569
    .line 570
    .line 571
    move-result-object v11

    .line 572
    invoke-static {v11, v10}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 573
    .line 574
    .line 575
    move-result v10

    .line 576
    invoke-virtual {v8, v2, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 577
    .line 578
    .line 579
    const/4 v9, 0x0

    .line 580
    invoke-virtual {p0, v8, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_2

    .line 584
    .line 585
    :pswitch_14
    invoke-interface {p1, v3, v13}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_2

    .line 593
    .line 594
    :pswitch_15
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 595
    .line 596
    .line 597
    move-result v8

    .line 598
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_2

    .line 602
    .line 603
    :pswitch_16
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 608
    .line 609
    .line 610
    move-result v9

    .line 611
    if-nez v9, :cond_b

    .line 612
    .line 613
    const-string v9, "end"

    .line 614
    .line 615
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    if-eqz v9, :cond_7

    .line 620
    .line 621
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 622
    .line 623
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 624
    .line 625
    .line 626
    :cond_7
    const-string v9, "start"

    .line 627
    .line 628
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v9

    .line 632
    if-eqz v9, :cond_8

    .line 633
    .line 634
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 635
    .line 636
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 637
    .line 638
    .line 639
    :cond_8
    const-string v9, "middle"

    .line 640
    .line 641
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    if-eqz v9, :cond_9

    .line 646
    .line 647
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 648
    .line 649
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 650
    .line 651
    .line 652
    :cond_9
    const-string v9, "marquee"

    .line 653
    .line 654
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v8

    .line 658
    if-eqz v8, :cond_b

    .line 659
    .line 660
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 661
    .line 662
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 663
    .line 664
    .line 665
    goto :goto_2

    .line 666
    :pswitch_17
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v8

    .line 670
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 671
    .line 672
    .line 673
    move-result v9

    .line 674
    if-nez v9, :cond_b

    .line 675
    .line 676
    const-string v9, "@string/"

    .line 677
    .line 678
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 679
    .line 680
    .line 681
    move-result v9

    .line 682
    if-eqz v9, :cond_a

    .line 683
    .line 684
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/dycreator/engine/b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    goto :goto_2

    .line 700
    :cond_a
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    .line 702
    .line 703
    goto :goto_2

    .line 704
    :pswitch_18
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    const-string v9, "@+id/"

    .line 709
    .line 710
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 711
    .line 712
    .line 713
    move-result v9

    .line 714
    if-eqz v9, :cond_b

    .line 715
    .line 716
    const/4 v9, 0x5

    .line 717
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v8

    .line 721
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    invoke-virtual {p0, v8}, Landroid/view/View;->setId(I)V

    .line 726
    .line 727
    .line 728
    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :cond_c
    return-void

    .line 733
    :pswitch_data_0
    .packed-switch 0x1
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
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->b:Ljava/util/Map;

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
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/extview/MBExtFeedBackView;->c:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
