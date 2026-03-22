.class public final Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;
.super Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;
.source "CustomNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->m:Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$a;

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

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CustomNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)V

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final M()V
    .locals 7

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const-string v5, "mNotification"

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v3, v4

    .line 27
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getCoverId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/high16 v3, 0x42600000    # 56.0f

    .line 39
    .line 40
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v2, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v4, v3

    .line 63
    :goto_0
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-lez v3, :cond_2

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 78
    .line 79
    invoke-virtual {v3}, Lfk/z;->m()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    int-to-float v3, v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 85
    .line 86
    .line 87
    :cond_2
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 90
    .line 91
    .line 92
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 95
    .line 96
    .line 97
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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getIconContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final Q()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "custom_notification"

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
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0
.end method


# virtual methods
.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_custom_notification:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->Q()Z

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->N()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->K()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->M()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->O()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->L()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/CustomNotificationActivity;->P()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CustomNotificationActivity"

    .line 2
    .line 3
    return-object v0
.end method
