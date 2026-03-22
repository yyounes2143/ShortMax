.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/ActMainTabView;
.super Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
.source "ActMainTabView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "currentTabType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_main_tab_act:I

    .line 2
    .line 3
    return v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->tab_iv:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/ActMainTabView;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 18
    .line 19
    return-void
.end method

.method public v(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/ActMainTabView;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getExtra()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v2, p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object p1, v3

    .line 27
    :goto_0
    if-nez p1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    const/high16 v4, 0x40a00000    # 5.0f

    .line 38
    .line 39
    div-float/2addr v2, v4

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/high16 v4, 0x42440000    # 49.0f

    .line 45
    .line 46
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sget-object v5, Lkk/f;->a:Lkk/f;

    .line 51
    .line 52
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 53
    .line 54
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-static {v7}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_3

    .line 75
    .line 76
    invoke-virtual {v6, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 80
    .line 81
    .line 82
    :cond_3
    sget-object v2, Lc3/q;->b:Lc3/q;

    .line 83
    .line 84
    invoke-virtual {v6, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setScaleType(Lc3/q;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-static {v2}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v4, 0x1

    .line 98
    if-ne v2, v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {v6, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 101
    .line 102
    .line 103
    :cond_4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    invoke-virtual {v5, v1, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 106
    .line 107
    .line 108
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 109
    .line 110
    invoke-virtual {v7, v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-static {v7, p1, v0, v1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const/4 v12, 0x4

    .line 120
    const/4 v13, 0x0

    .line 121
    const-string v8, "activity_tab_show"

    .line 122
    .line 123
    const-wide/16 v10, 0x0

    .line 124
    .line 125
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
