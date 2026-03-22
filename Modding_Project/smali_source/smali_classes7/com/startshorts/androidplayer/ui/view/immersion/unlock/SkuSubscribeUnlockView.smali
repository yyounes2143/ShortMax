.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "SkuSubscribeUnlockView.kt"

# interfaces
.implements Lpj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;
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

.field private g:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->d:Ljava/lang/Boolean;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->y()Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->k:Ljava/lang/String;

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
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    new-instance v12, Lpj/e;

    .line 59
    .line 60
    invoke-direct {v12, p0}, Lpj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V

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

.method private static final C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;Z)Lkotlin/Unit;
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
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->m:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->C(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->B()V

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->c:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->d:Ljava/lang/Boolean;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDbTemplateStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_sku_subscribe_unlock:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->m:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->m:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->e:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$c;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget p3, Lcom/startshorts/androidplayer/R$id;->watch_ad_iv:I

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/ImageView;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object p1, p2

    .line 54
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->g:Landroid/widget/ImageView;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    sget p3, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object p1, p2

    .line 70
    :goto_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    sget p2, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object p2, p1

    .line 83
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 84
    .line 85
    :cond_3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 86
    .line 87
    sget p1, Lcom/startshorts/androidplayer/R$id;->subscribe_unlock_layout:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->j:Landroid/view/View;

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$d;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$d;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 4
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->f:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->enable()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/startshorts/androidplayer/R$string;->pure_paying_user_ad_retention_dialog_fragment_unlocked_today:I

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$b;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/16 p2, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
