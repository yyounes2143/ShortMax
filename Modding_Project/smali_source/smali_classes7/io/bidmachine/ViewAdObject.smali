.class public final Lio/bidmachine/ViewAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "ViewAdObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ViewAdObject$MeasureMode;,
        Lio/bidmachine/ViewAdObject$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;UnifiedAdType:",
        "Lxq/p<",
        "Lxq/f;",
        "TUnifiedAdRequestParamsType;>;UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Llp/b;",
        "TUnifiedAdType;",
        "Lxq/f;",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field private adView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private height:I

.field private heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final visibilityTrackerHolder:Lwm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private width:I

.field private widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/p;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxq/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Llp/b;",
            "TUnifiedAdType;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/b;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 7
    .line 8
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 9
    .line 10
    new-instance p1, Lwm/b;

    .line 11
    .line 12
    invoke-direct {p1}, Lwm/b;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->visibilityTrackerHolder:Lwm/b;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ViewAdObject;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ViewAdObject;->setAdView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/ViewAdObject;->height:I

    .line 2
    .line 3
    return v0
.end method

.method private getScaledHeight(Landroid/content/Context;)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private getScaledWidth(Landroid/content/Context;)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/ViewAdObject;->width:I

    .line 2
    .line 3
    return v0
.end method

.method private setAdView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->hide()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/c;
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ViewAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/f;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/f;
    .locals 1
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lio/bidmachine/ViewAdObject$c;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/ViewAdObject$c;-><init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public getHeightMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidthMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->hide()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->visibilityTrackerHolder:Lwm/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lwm/b;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lfr/l;->b(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->hide()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onImpression()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onImpression()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->visibilityTrackerHolder:Lwm/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lwm/b;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/ViewAdObject;->height:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeightMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V
    .locals 0
    .param p1    # Lio/bidmachine/ViewAdObject$MeasureMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/ViewAdObject;->width:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidthMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V
    .locals 0
    .param p1    # Lio/bidmachine/ViewAdObject$MeasureMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    .line 3
    return-void
.end method

.method show(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lxq/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lxq/f;

    .line 8
    .line 9
    const-string p2, "Target container"

    .line 10
    .line 11
    invoke-static {p2}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lxq/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lxq/f;

    .line 28
    .line 29
    const-string p2, "Ad view is null"

    .line 30
    .line 31
    invoke-static {p2}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getWidthMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 44
    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    .line 47
    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getHeightMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-ne v1, v2, :cond_4

    .line 58
    .line 59
    invoke-direct {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lxq/c;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lxq/f;

    .line 70
    .line 71
    const-string p2, "Width or height are not provided"

    .line 72
    .line 73
    invoke-static {p2}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    instance-of v2, p1, Landroid/widget/FrameLayout;

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .line 91
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/16 v4, 0x11

    .line 100
    .line 101
    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Lio/bidmachine/AdProcessCallback;->processStartVisibilityTracker()V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lio/bidmachine/ViewAdObject;->visibilityTrackerHolder:Lwm/b;

    .line 126
    .line 127
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getParams()Llp/b;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Llp/b;->e()Lio/bidmachine/core/i;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-instance v4, Lio/bidmachine/ViewAdObject$a;

    .line 136
    .line 137
    invoke-direct {v4, p0}, Lio/bidmachine/ViewAdObject$a;-><init>(Lio/bidmachine/ViewAdObject;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0, v3, v4}, Lwm/b;->b(Landroid/view/View;Lio/bidmachine/core/i;Lwm/p;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v0, v2}, Lfr/l;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    .line 151
    .line 152
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lxq/p;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lxq/p;->i(Lio/bidmachine/RendererConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catchall_0
    move-exception p1

    .line 164
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    :goto_1
    return-void
.end method
