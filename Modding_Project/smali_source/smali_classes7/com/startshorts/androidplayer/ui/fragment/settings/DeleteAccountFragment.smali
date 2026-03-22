.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "DeleteAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwi/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwi/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->j:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->N(Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->J()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final J()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final M(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lwi/f;

    .line 19
    .line 20
    invoke-direct {v2}, Lwi/f;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$d;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final N(Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of p0, p0, Lcom/startshorts/androidplayer/viewmodel/settings/b$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 6
    .line 7
    const/4 v4, 0x7

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->p(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lcom/startshorts/androidplayer/bean/account/Account;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Laa/a;->a:Laa/a;

    .line 16
    .line 17
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getName(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Laa/a;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_delete_account:I

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_delete_account:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;->E(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->L()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->K()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DeleteAccountFragment"

    .line 2
    .line 3
    return-object v0
.end method
