.class public final Landroidx/navigation/fragment/DialogFragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "DialogFragmentNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "dialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "androidx-nav-fragment:navigator:dialog:"

.field private static final KEY_DIALOG_COUNT:Ljava/lang/String; = "androidx-nav-dialogfragment:navigator:count"

.field private static final TAG:Ljava/lang/String; = "DialogFragmentNavigator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialogCount:I

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field private final mRestoredTagsAwaitingAttach:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mRestoredTagsAwaitingAttach:Ljava/util/HashSet;

    .line 13
    .line 14
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigator$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/navigation/fragment/DialogFragmentNavigator$1;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/fragment/DialogFragmentNavigator;->createDestination()Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/NavOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/navigation/Navigator$Extras;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/fragment/DialogFragmentNavigator;->navigate(Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public navigate(Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1    # Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/NavOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/navigation/Navigator$Extras;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object p3, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    const-string p1, "DialogFragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 5
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v0, 0x2e

    if-ne p4, v0, :cond_1

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    :cond_1
    iget-object p4, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p4}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p4

    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 9
    invoke-virtual {p4, v0, p3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    const-class v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 11
    check-cast p3, Landroidx/fragment/app/DialogFragment;

    .line 12
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p4, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p2, p4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 14
    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "androidx-nav-fragment:navigator:dialog:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dialog destination "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an instance of DialogFragment"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mRestoredTagsAwaitingAttach:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "androidx-nav-dialogfragment:navigator:count"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 11
    .line 12
    :goto_0
    iget p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 13
    .line 14
    if-ge v1, p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "androidx-nav-fragment:navigator:dialog:"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mRestoredTagsAwaitingAttach:Ljava/util/HashSet;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "androidx-nav-dialogfragment:navigator:count"

    .line 13
    .line 14
    iget v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public popBackStack()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "DialogFragmentNavigator"

    .line 16
    .line 17
    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "androidx-nav-fragment:navigator:dialog:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    sub-int/2addr v2, v3

    .line 39
    iput v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mDialogCount:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 61
    .line 62
    .line 63
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return v3
.end method
