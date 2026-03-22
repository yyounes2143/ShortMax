.class public final Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ActAppOpenView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActAppOpenView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,265:1\n1#2:266\n256#3,2:267\n*S KotlinDebug\n*F\n+ 1 ActAppOpenView.kt\ncom/startshorts/androidplayer/ui/view/act/ActAppOpenView\n*L\n211#1:267,2\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/TextureView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
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
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->f:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->g:Z

    .line 14
    .line 15
    new-instance p1, Lbj/e;

    .line 16
    .line 17
    invoke-direct {p1}, Lbj/e;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->i:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->T(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->L(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->h:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v0, "cancelCountDownJob"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->h:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method

.method private final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final I()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lf3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lf3/a;->f()Landroid/graphics/drawable/Animatable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "dismiss exception -> "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "ActAppOpenView"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->i:Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static final J(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p2, Lbj/f;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lbj/f;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->N(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "showActInOpenScreen onClicked -> actResource="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "ActAppOpenView"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 31
    .line 32
    const-string v0, "bf_appopen_show"

    .line 33
    .line 34
    invoke-virtual {v3, v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v3, p2, v2, v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const-string v4, "bf_appopen_click"

    .line 47
    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAd()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    sget-object p2, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 66
    .line 67
    invoke-virtual {p2, p1, p0}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lce/j;->a:Lce/j;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lce/j;->x(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->I()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method

.method private static final L(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final M()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final N(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string v0, "ActAppOpenView"

    .line 10
    .line 11
    const-string v1, "onActActive failed -> isAttachedToWindow = false"

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$onActActive$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, p1, v2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$onActActive$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "onActActive"

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, p1, v2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final O()V
    .locals 1

    .line 1
    new-instance v0, Lbj/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lbj/g;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->N(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const-string v0, "bf_appopen_show"

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x0

    .line 16
    invoke-static {v1, p1, v0, v8, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v2, "bf_appopen_show"

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lce/j;->a:Lce/j;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lce/j;->l(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "showActInOpenScreen -> "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "ActAppOpenView"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->c:Landroid/view/TextureView;

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    sget v1, Lcom/startshorts/androidplayer/R$id;->video_viewstub:I

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/view/ViewStub;

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object v1, v9

    .line 85
    :goto_0
    instance-of v3, v1, Landroid/widget/FrameLayout;

    .line 86
    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    check-cast v1, Landroid/widget/FrameLayout;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move-object v1, v9

    .line 93
    :goto_1
    if-eqz v1, :cond_2

    .line 94
    .line 95
    sget v3, Lcom/startshorts/androidplayer/R$id;->video_view:I

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroid/view/TextureView;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object v3, v9

    .line 105
    :goto_2
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->c:Landroid/view/TextureView;

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    sget v3, Lcom/startshorts/androidplayer/R$id;->mute_iv:I

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    move-object v9, v1

    .line 116
    check-cast v9, Landroid/widget/ImageView;

    .line 117
    .line 118
    :cond_3
    if-eqz v9, :cond_4

    .line 119
    .line 120
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;

    .line 121
    .line 122
    invoke-direct {v1, p0, v9}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$a;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/widget/ImageView;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->H()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getFormatAdsVideoUrl()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 144
    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 148
    .line 149
    invoke-virtual {v3}, Lfk/u;->b()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v4, Llf/s;

    .line 154
    .line 155
    invoke-direct {v4}, Llf/s;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v5, "Splash"

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Llf/s;->y(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->c:Landroid/view/TextureView;

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Llf/s;->u(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v8}, Llf/s;->n(I)V

    .line 169
    .line 170
    .line 171
    sget-object v5, Lpf/l;->a:Lpf/l;

    .line 172
    .line 173
    invoke-virtual {v5, p1}, Lpf/l;->b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v4, p1}, Llf/s;->w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v0}, Llf/s;->v(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v0}, Llf/s;->p(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v2}, Llf/s;->r(Z)V

    .line 187
    .line 188
    .line 189
    const/high16 p1, 0x3f800000    # 1.0f

    .line 190
    .line 191
    invoke-virtual {v4, p1}, Llf/s;->s(F)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 197
    .line 198
    invoke-direct {p1, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;-><init>(Landroid/content/Context;Llf/s;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 206
    .line 207
    if-nez v1, :cond_8

    .line 208
    .line 209
    sget v1, Lcom/startshorts/androidplayer/R$id;->picture_viewstub:I

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Landroid/view/ViewStub;

    .line 216
    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    goto :goto_3

    .line 224
    :cond_6
    move-object v1, v9

    .line 225
    :goto_3
    instance-of v3, v1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 226
    .line 227
    if-eqz v3, :cond_7

    .line 228
    .line 229
    move-object v9, v1

    .line 230
    check-cast v9, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 231
    .line 232
    :cond_7
    iput-object v9, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 233
    .line 234
    :cond_8
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 235
    .line 236
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 237
    .line 238
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 239
    .line 240
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 251
    .line 252
    .line 253
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    invoke-virtual {v1, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 256
    .line 257
    .line 258
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 259
    .line 260
    if-eqz p1, :cond_a

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :cond_a
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->R()V

    .line 266
    .line 267
    .line 268
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object p0
.end method

.method private final R()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->G()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "startCountDownJob -> "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->f:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x73

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 32
    .line 33
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->f:I

    .line 34
    .line 35
    new-instance v2, Lbj/c;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lbj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lbj/d;

    .line 41
    .line 42
    invoke-direct {v3, p0}, Lbj/d;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->h:Lkotlinx/coroutines/r;

    .line 50
    .line 51
    return-void
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ActAppOpenView"

    .line 4
    .line 5
    const-string v2, "countDown finish"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->I()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final T(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;I)Lkotlin/Unit;
    .locals 2

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->f:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$string;->act_app_open_skip:I

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->S(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->Q(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->K(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->J(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->M()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final P(Lcom/startshorts/androidplayer/bean/act/ActResource;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
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
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDismiss"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->i:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 14
    .line 15
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p0, p2, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v2, "showActInOpenScreen"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_act_app_open:I

    .line 2
    .line 3
    return v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ActAppOpenView"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/player/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->G()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->e:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/player/b$g;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->R()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p2, Lcom/startshorts/androidplayer/R$id;->count_down_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    new-instance p2, Lbj/a;

    .line 17
    .line 18
    invoke-direct {p2, p0, p1}, Lbj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p2, Lbj/b;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lbj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
