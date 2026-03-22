.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.java"

# interfaces
.implements Landroidx/navigation/NavHost;


# static fields
.field private static final KEY_DEFAULT_NAV_HOST:Ljava/lang/String; = "android-support-nav:fragment:defaultHost"

.field private static final KEY_GRAPH_ID:Ljava/lang/String; = "android-support-nav:fragment:graphId"

.field private static final KEY_NAV_CONTROLLER_STATE:Ljava/lang/String; = "android-support-nav:fragment:navControllerState"

.field private static final KEY_START_DESTINATION_ARGS:Ljava/lang/String; = "android-support-nav:fragment:startDestinationArgs"


# instance fields
.field private mDefaultNavHost:Z

.field private mGraphId:I

.field private mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

.field private mNavController:Landroidx/navigation/NavHostController;

.field private mViewParent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public static create(I)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/NavigationRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/navigation/fragment/NavHostFragment;->create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p0

    return-object p0
.end method

.method public static create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/NavigationRes;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "android-support-nav:fragment:graphId"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    :cond_1
    const-string p0, "android-support-nav:fragment:startDestinationArgs"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    :cond_2
    new-instance p0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;-><init>()V

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    return-object p0
.end method

.method public static findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 3
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    if-eqz v0, :cond_2

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    move-object v0, p0

    .line 55
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const/4 v0, 0x0

    .line 63
    :goto_1
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "Fragment "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, " does not have a NavController set"

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method private getContainerId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget v0, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 12
    .line 13
    return v0
.end method


# virtual methods
.method protected createFragmentNavigator()Landroidx/navigation/Navigator;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final getNavController()Landroidx/navigation/NavController;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "NavController is not available before onCreate()"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/navigation/fragment/NavHostFragment;->mDefaultNavHost:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/navigation/fragment/DialogFragmentNavigator;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/navigation/NavHostController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v3

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/navigation/fragment/NavHostFragment;->onCreateNavController(Landroidx/navigation/NavController;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "android-support-nav:fragment:graphId"

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const-string v4, "android-support-nav:fragment:navControllerState"

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "android-support-nav:fragment:defaultHost"

    .line 76
    .line 77
    invoke-virtual {p1, v5, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    iput-boolean v2, p0, Landroidx/navigation/fragment/NavHostFragment;->mDefaultNavHost:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, p0, Landroidx/navigation/fragment/NavHostFragment;->mGraphId:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v4, v0

    .line 108
    :goto_1
    if-eqz v4, :cond_3

    .line 109
    .line 110
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Landroidx/navigation/NavController;->restoreState(Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget v2, p0, Landroidx/navigation/fragment/NavHostFragment;->mGraphId:I

    .line 116
    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroidx/navigation/NavController;->setGraph(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :cond_5
    if-eqz v2, :cond_6

    .line 136
    .line 137
    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_6
    if-eqz v3, :cond_7

    .line 144
    .line 145
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 146
    .line 147
    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method protected onCreateNavController(Landroidx/navigation/NavController;)V
    .locals 4
    .param p1    # Landroidx/navigation/NavController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->createFragmentNavigator()Landroidx/navigation/Navigator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 23
    .line 24
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p3, Landroidx/navigation/R$styleable;->NavHost:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    sget v0, Landroidx/navigation/R$styleable;->NavHost_navGraph:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mGraphId:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    sget-object p3, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget p2, Landroidx/navigation/fragment/R$styleable;->NavHostFragment_defaultNavHost:I

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Landroidx/navigation/fragment/NavHostFragment;->mDefaultNavHost:Z

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/navigation/NavController;->saveState()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mDefaultNavHost:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "android-support-nav:fragment:defaultHost"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Landroidx/navigation/fragment/NavHostFragment;->mGraphId:I

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v1, "android-support-nav:fragment:graphId"

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/view/View;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 38
    .line 39
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "created host view "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " is not a ViewGroup"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method
