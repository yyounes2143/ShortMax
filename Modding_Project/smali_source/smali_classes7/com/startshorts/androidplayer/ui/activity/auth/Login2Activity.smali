.class public final Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "Login2Activity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final l:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Z

.field private t:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->v:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$i;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->l:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$i;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$h;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$h;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->m:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$h;

    .line 17
    .line 18
    new-instance v0, Lsh/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lsh/a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 28
    .line 29
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lsh/b;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lsh/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "registerForActivityResult(...)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->u:Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->d0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->c0()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->W(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->f0(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final O()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "facebook"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->R()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final P()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "google"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->R()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final Q()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "huawei"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->R()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->c(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "initAuthManager"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 16
    .line 17
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$b;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final S()V
    .locals 1

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->Y()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->V()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private final T()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->i:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "loginGetBonus"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->s:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    const-string v2, "0"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    sget v2, Lcom/startshorts/androidplayer/R$id;->facebook_login_bonus:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget v4, Lcom/startshorts/androidplayer/R$string;->login_get_bonus:I

    .line 61
    .line 62
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->s:Z

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_google2:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 104
    .line 105
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 106
    .line 107
    sget v2, Lcom/startshorts/androidplayer/R$color;->t_b_83:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 124
    .line 125
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_facebook2:I

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 139
    .line 140
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 156
    .line 157
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$c;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$d;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->h:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->f:Landroidx/databinding/ViewStubProxy;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/hades/aar/auth/HuaWeiLoginView;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    check-cast v0, Lcom/hades/aar/auth/HuaWeiLoginView;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v1, Lsh/d;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lsh/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/hades/aar/auth/HuaWeiLoginView;->setOnAuthButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private static final W(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final X()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->k:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$e;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$e;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final Y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->t:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->m:Landroidx/databinding/ViewStubProxy;

    .line 12
    .line 13
    const-string v1, "phoneLoginGetBonus"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->t:Landroid/view/View;

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->s:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->h:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->t:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-lez v2, :cond_1

    .line 65
    .line 66
    const-string v2, "0"

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    sget v2, Lcom/startshorts/androidplayer/R$id;->phone_login_bonus:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/widget/TextView;

    .line 81
    .line 82
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 83
    .line 84
    sget v4, Lcom/startshorts/androidplayer/R$string;->login_get_bonus:I

    .line 85
    .line 86
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v3, v4, v1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$f;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$f;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 119
    .line 120
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$g;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$g;-><init>(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 136
    .line 137
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->h:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->t:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_1
    return-void
.end method

.method private final Z()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "policyTv"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/startshorts/androidplayer/R$string;->login_activity_policy:I

    .line 15
    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v0, "getString(...)"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const v0, 0x106000b

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->l:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$i;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->m:Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity$h;

    .line 73
    .line 74
    const/4 v7, 0x2

    .line 75
    new-array v7, v7, [Lyd/d;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    aput-object v0, v7, v8

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    aput-object v6, v7, v0

    .line 82
    .line 83
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const/16 v9, 0x30

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;->o:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "toolbarView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final b0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->s:Z

    .line 8
    .line 9
    return-void
.end method

.method private static final c0()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final d0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x4f9dbd6c

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const v1, 0x4cecfdd3    # 1.242518E8f

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x64833000

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "autoLoginFaceBook"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->O()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "autoLoginGoogle"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->P()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const-string v0, "autoLoginPhone"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->e0()V

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_0
    return-void
.end method

.method private final e0()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    const-string v3, "phone"

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "login_click"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->R()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 37
    .line 38
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/a;->i()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 45
    .line 46
    const-string v3, "auth_reason"

    .line 47
    .line 48
    const-string v4, "1"

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->p:Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, ""

    .line 58
    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    move-object v4, v5

    .line 62
    :cond_0
    const-string v6, "auth_reason_phone"

    .line 63
    .line 64
    invoke-direct {v3, v6, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 68
    .line 69
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->q:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    move-object v6, v5

    .line 74
    :cond_1
    const-string v7, "auth_reason_area_code"

    .line 75
    .line 76
    invoke-direct {v4, v7, v6}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 80
    .line 81
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->r:Ljava/lang/String;

    .line 82
    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    move-object v7, v5

    .line 86
    :cond_2
    const-string v8, "auth_reason_country_code"

    .line 87
    .line 88
    invoke-direct {v6, v8, v7}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 92
    .line 93
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 94
    .line 95
    if-nez v8, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move-object v5, v8

    .line 99
    :goto_0
    const-string v8, "from"

    .line 100
    .line 101
    invoke-direct {v7, v8, v5}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 v5, 0x5

    .line 105
    new-array v5, v5, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    aput-object v2, v5, v8

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    aput-object v3, v5, v2

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    aput-object v4, v5, v2

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    aput-object v6, v5, v2

    .line 118
    .line 119
    const/4 v2, 0x4

    .line 120
    aput-object v7, v5, v2

    .line 121
    .line 122
    invoke-virtual {v0, p0, v1, v5}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->c(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->u:Landroidx/activity/result/ActivityResultLauncher;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private static final f0(Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_login2:I

    .line 2
    .line 3
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/a;->l(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "autoLogin"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "from"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "ex_phone"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->p:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "ex_area_code"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->q:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "ex_country_code"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->r:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v0, Led/a;->a:Led/a;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, p0, v1}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->a0()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->X()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->b0()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->S()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->T()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->U()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->Z()V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 108
    .line 109
    new-instance v4, Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "isFromTurboLink"

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    const-string v0, "TurboLink"

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "login_page"

    .line 131
    .line 132
    :goto_0
    const-string v1, "scene"

    .line 133
    .line 134
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x0

    .line 141
    const-string v3, "login_windows_show"

    .line 142
    .line 143
    const-wide/16 v5, 0x0

    .line 144
    .line 145
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLogin2Binding;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Lsh/c;

    .line 165
    .line 166
    invoke-direct {v1, p1, p0}, Lsh/c;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v2, 0x1f4

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "LoginActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 5
    .line 6
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;->n:Lms/i;

    .line 13
    .line 14
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->n()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
