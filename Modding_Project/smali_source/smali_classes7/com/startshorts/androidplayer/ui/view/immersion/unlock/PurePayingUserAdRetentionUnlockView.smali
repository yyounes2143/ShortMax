.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "PurePayingUserAdRetentionUnlockView.kt"

# interfaces
.implements Lpj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V

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

.method private final B()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v1, "ad_active"

    .line 10
    .line 11
    const-string v3, "unlock_select"

    .line 12
    .line 13
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    const-string v3, "1"

    .line 19
    .line 20
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v1, "watch_ad_click"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v7, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 35
    .line 36
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->i:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v0, Laa/a;->a:Laa/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 51
    .line 52
    :goto_0
    move-object v9, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    new-instance v12, Lpj/c;

    .line 59
    .line 60
    invoke-direct {v12, p0}, Lpj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V

    .line 61
    .line 62
    .line 63
    const-string v10, "unlock_select"

    .line 64
    .line 65
    invoke-virtual/range {v7 .. v12}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->x()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->h:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_pure_paying_user_ad_retention_unlock:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->h:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->h:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$a;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->b:Landroid/view/View;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->A()V

    .line 24
    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->ad_unlock_layout:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    sget p3, Lcom/startshorts/androidplayer/R$id;->watch_ad_iv:I

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/ImageView;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object p1, p2

    .line 47
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->d:Landroid/widget/ImageView;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget p3, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object p1, p2

    .line 63
    :goto_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    sget p2, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    move-object p2, p1

    .line 76
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 77
    .line 78
    :cond_2
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 79
    .line 80
    sget p1, Lcom/startshorts/androidplayer/R$id;->subscribe_unlock_layout:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->g:Landroid/view/View;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$d;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$d;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->i:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->enable()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$string;->pure_paying_user_ad_retention_dialog_fragment_unlocked_today:I

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string p1, "es"

    .line 78
    .line 79
    const-string p2, "de"

    .line 80
    .line 81
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->d:Landroid/widget/ImageView;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    const/16 p2, 0x8

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->c:Landroid/view/View;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_0
    return-void
.end method
