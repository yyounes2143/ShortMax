.class public final Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;
.super Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;
.source "DefaultCheckInNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->m:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$a;

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

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)V

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getContent()Ljava/lang/String;

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

.method private final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)V

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getTitle()Ljava/lang/String;

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
    const-string v1, "check_in_notification"

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
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->l:Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_default_check_in_notification:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->O()Z

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->M()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->K()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->N()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->L()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DefaultCheckInNotificationActivity"

    .line 2
    .line 3
    return-object v0
.end method
