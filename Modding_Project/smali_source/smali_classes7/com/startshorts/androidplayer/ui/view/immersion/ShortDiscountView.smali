.class public final Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ShortDiscountView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/CountDownTimer;
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidStartTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getValidEndTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v0, v4, v0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    if-ltz v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sub-long/2addr v2, v0

    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 44
    .line 45
    const-wide/16 v0, 0x3e8

    .line 46
    .line 47
    cmp-long p1, v2, v0

    .line 48
    .line 49
    if-lez p1, :cond_2

    .line 50
    .line 51
    invoke-static {v2, v3, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->B(JLandroid/view/View;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;

    .line 55
    .line 56
    invoke-direct {p1, v2, v3, p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;-><init>(JLandroid/view/View;Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v4, v5, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->B(JLandroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;->c()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void

    .line 76
    :cond_4
    :goto_1
    invoke-static {v4, v5, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->B(JLandroid/view/View;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;->c()V

    .line 84
    .line 85
    .line 86
    :cond_5
    return-void
.end method

.method private static final B(JLandroid/view/View;)V
    .locals 8

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p0, v0

    .line 5
    const/16 v0, 0xe10

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long v2, p0, v0

    .line 9
    .line 10
    rem-long/2addr p0, v0

    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    div-long v4, p0, v0

    .line 15
    .line 16
    rem-long/2addr p0, v0

    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$id;->hour_tv:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 26
    .line 27
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v6, "%02d"

    .line 43
    .line 44
    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v7, "format(...)"

    .line 49
    .line 50
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/startshorts/androidplayer/R$id;->minute_tv:I

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    sget v0, Lcom/startshorts/androidplayer/R$id;->second_tv:I

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v1, v6, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public static synthetic v(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->z(Landroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic x(JLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->B(JLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final z(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->d:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_short_discount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMCallback()Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->C()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final receiveShortDiscountUnLockEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;->getShortsId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne v0, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;->d()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final receiverRefreshShortDiscountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;->getShortDiscountSku()Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;->getShortDiscountSku()Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "$ "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortDiscountEvent;->getShortDiscountSku()Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$id;->discount_buy_tv:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public final setMCallback(Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->c:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final y(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 5
    .line 6
    sget v0, Lcom/startshorts/androidplayer/R$id;->discount_close_iv:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/high16 v1, 0x41400000    # 12.0f

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljk/b0;->j(Landroid/view/View;F)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$b;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$id;->discount_content_tv:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v1, ""

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lmj/b;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lmj/b;-><init>(Landroid/widget/TextView;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x3e8

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "$ "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_5
    sget v1, Lcom/startshorts/androidplayer/R$id;->discount_buy_tv:I

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 108
    .line 109
    sget v1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 116
    .line 117
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 118
    .line 119
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getCoverUrl()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/high16 v3, 0x42880000    # 68.0f

    .line 130
    .line 131
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 136
    .line 137
    .line 138
    const/high16 v4, 0x42b80000    # 92.0f

    .line 139
    .line 140
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 159
    .line 160
    .line 161
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 164
    .line 165
    .line 166
    const v3, 0x3f4ccccd    # 0.8f

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Ljk/g;->b(F)F

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderWidth(F)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    sget v4, Lcom/startshorts/androidplayer/R$color;->color_immersion_short_discount_cover_border:I

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderColor(I)V

    .line 187
    .line 188
    .line 189
    const/4 v3, 0x1

    .line 190
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 191
    .line 192
    .line 193
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 194
    .line 195
    invoke-virtual {v3}, Lfk/z;->f()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    int-to-float v3, v3

    .line 200
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 201
    .line 202
    .line 203
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 206
    .line 207
    .line 208
    sget v0, Lcom/startshorts/androidplayer/R$id;->discount_buy_tv:I

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Landroid/widget/TextView;

    .line 215
    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$c;

    .line 219
    .line 220
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-direct {p0, p1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->A(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
