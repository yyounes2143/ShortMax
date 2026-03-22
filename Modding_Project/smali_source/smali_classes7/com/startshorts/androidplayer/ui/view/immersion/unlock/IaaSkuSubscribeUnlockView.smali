.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "IaaSkuSubscribeUnlockView.kt"

# interfaces
.implements Lpj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->d:Ljava/lang/Boolean;

    .line 14
    .line 15
    return-void
.end method

.method private final A()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->y()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v1, "watch_ads_to_unlock_click"

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final B()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    const-string v3, "unlock_select_iaa"

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
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->h:Ljava/lang/String;

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
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    new-instance v12, Lpj/b;

    .line 59
    .line 60
    invoke-direct {v12, p0}, Lpj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;)V

    .line 61
    .line 62
    .line 63
    const-string v10, "unlock_select_iaa"

    .line 64
    .line 65
    invoke-virtual/range {v7 .. v12}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->j:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "style"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->d:Ljava/lang/Boolean;

    .line 25
    .line 26
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, "task"

    .line 35
    .line 36
    const-string v2, "task_center"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget-object v1, Lve/h;->a:Lve/h;

    .line 43
    .line 44
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "style_id"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final getContext()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDbTemplateStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_sku_subscribe_unlock_iaa:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->j:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->j:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$a;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->e:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$c;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->ad_unlock_layout:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget p2, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 54
    .line 55
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->h:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 10
    .line 11
    sget v0, Lcom/startshorts/androidplayer/R$string;->iaa_watch_ad_unlock_dialog_btn_subtitle:I

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$b;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/IaaSkuSubscribeUnlockView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
