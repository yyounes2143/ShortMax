.class public Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;
.source "NotificationPermissionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->S(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance p1, Lri/e;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lri/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    new-instance p2, Lri/f;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lri/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->P(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Super calls with default arguments not supported in this target, function: requestNotificationPermission"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method private static final R(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final L()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final P(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onGranted"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDenied"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->n:Z

    .line 13
    .line 14
    sget-object v0, Lid/d;->a:Lid/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lid/d;->a()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;

    .line 21
    .line 22
    invoke-direct {v5, p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/16 v4, 0x7d1

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;->H(Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;[Ljava/lang/String;ZILmk/b;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final V(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "NotificationPermissionDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
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
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->n:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->m:Z

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;->a(ZZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
