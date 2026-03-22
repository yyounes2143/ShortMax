.class public Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment\n+ 2 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,279:1\n28#2:280\n15#3,9:281\n*S KotlinDebug\n*F\n+ 1 BaseDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment\n*L\n106#1:280\n131#1:281,9\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field protected a:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVDB;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->y(II)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: toast"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->z(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: toast"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$d;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method

.method private final D()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "unregisterEventBus"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->b:Z

    .line 12
    .line 13
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "registerEventBus"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->b:Z

    .line 12
    .line 13
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "already register EventBus"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public final E(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "dismiss exception -> "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "BaseDialogFragment"

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->o()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->o()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    const v0, 0x3f333333    # 0.7f

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    return v0
.end method

.method public k()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    return v0
.end method

.method protected final m()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVDB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->a:Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mBinding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BaseDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "onCreate"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->n()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->s()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->a:Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->k()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 p3, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->v(Landroidx/databinding/ViewDataBinding;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "getRoot(...)"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljk/b0;->f(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "onDestroy"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->t()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->a:Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;->onDismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;

    .line 18
    .line 19
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->c:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 5
    .line 6
    .line 7
    const-string v0, "onPause"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onResume"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->c:Z

    .line 11
    .line 12
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onStart"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->d:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onStop"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->d:Z

    .line 11
    .line 12
    return-void
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "onViewCreated"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->u()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    return v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->o()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->e:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->D()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->l()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->i()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->p()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->j()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method protected final v(Landroidx/databinding/ViewDataBinding;)V
    .locals 1
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVDB;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->a:Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g:Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Landroidx/fragment/app/FragmentManager;)Z
    .locals 5
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "BaseDialogFragment"

    .line 2
    .line 3
    const-string v1, "fragmentManager"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lae/a;->a:Lae/a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lae/a;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "show exception -> "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v1
.end method

.method public final y(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->z(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final z(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 11
    .line 12
    new-instance v1, Loi/b;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Loi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
