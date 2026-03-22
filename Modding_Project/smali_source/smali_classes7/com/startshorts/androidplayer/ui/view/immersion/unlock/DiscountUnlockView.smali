.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "DiscountUnlockView.kt"

# interfaces
.implements Lpj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 10
    .line 11
    sget p1, Lcom/startshorts/androidplayer/R$id;->discount_unlock_layout:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->d:Landroid/view/View;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->x()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final A(JLandroid/view/View;)V
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

.method private final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic w(JLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->A(JLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->d:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$b;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "$ "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    sget v5, Lcom/startshorts/androidplayer/R$string;->immersion_activity_purchase_all_episode:I

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v4, 0xa

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-direct {p0, v0, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->z(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final z(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Landroid/view/View;)V
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
    if-ltz v0, :cond_3

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

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
    invoke-static {v2, v3, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->A(JLandroid/view/View;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$d;

    .line 55
    .line 56
    invoke-direct {p1, v2, v3, p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$d;-><init>(JLandroid/view/View;Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->e:Landroid/os/CountDownTimer;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v4, v5, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->A(JLandroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_3
    :goto_1
    invoke-static {v4, v5, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->A(JLandroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_discount_unlock:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMCallBack()Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;->c()V

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

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

.method public release()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setMCallBack(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView$a;

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
    sget p2, Lcom/startshorts/androidplayer/R$color;->color_immersion_activity_bg_unlock_view:I

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/startshorts/androidplayer/R$id;->normal_unlock_layout:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->c:Landroid/view/View;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/DiscountUnlockView;->y()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
