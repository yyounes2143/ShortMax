.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;
.source "AppLanguageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment<",
        "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
        "Lcom/startshorts/androidplayer/databinding/FragmentRecyclerViewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLanguageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLanguageFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"
    }
.end annotation


# static fields
.field public static final y:Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->y:Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsi/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lsi/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->x:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic s0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/viewmodel/profile/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/viewmodel/profile/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->z0(Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v0()Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->x:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final w0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lsi/b;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lsi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final x0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/viewmodel/profile/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/profile/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/b$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/profile/b$a;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->o0(Ljava/util/List;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/profile/b$b;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 37
    .line 38
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method private final y0(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    invoke-virtual {v1}, Lud/a;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v3, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "language"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v2, "language_result"

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->v0()Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/profile/a$b;

    .line 49
    .line 50
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/profile/a$b;-><init>(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/profile/a;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private final z0(Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v0, v2

    .line 43
    :goto_1
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 106
    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public i0()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->f:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 13
    .line 14
    invoke-virtual {v2}, Lfk/z;->g()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v5, 0xa

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;->b(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;IZILjava/lang/Object;)Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->K(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;

    .line 40
    .line 41
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->i0()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$string;->app_language_fragment_title:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;->q0(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->v0()Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/profile/a$a;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "requireContext(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/profile/a$a;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/profile/a;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 36
    .line 37
    const/4 v7, 0x6

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v3, "language_setting_show"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AppLanguageFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.language.LanguageAdapter"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->y0(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method
