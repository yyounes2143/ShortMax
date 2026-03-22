.class public final Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;
.super Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;
.source "DefaultNewShortsNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->m:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 2
    .line 3
    return-object p0
.end method

.method private final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final L()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "mNotification"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v1, v2

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move-object v2, v1

    .line 56
    :goto_2
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "mNotification"

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final O()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "new_shorts_notification"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_1
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0
.end method

.method private final P()V
    .locals 5

    .line 1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBinding;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, "mNotification"

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 34
    .line 35
    invoke-virtual {v3}, Lfk/z;->p()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lfk/z;->p()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 47
    .line 48
    .line 49
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lfk/z;->m()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_default_new_shorts_notification:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hades/aar/activity/IDActivity;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->O()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    sget-object p1, Led/a;->a:Led/a;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p1, p0, v2, v0, v1}, Led/a;->c(Led/a;Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->M()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->K()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->N()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->L()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultNewShortsNotificationActivity;->P()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DefaultNewShortsNotificationActivity"

    .line 2
    .line 3
    return-object v0
.end method
