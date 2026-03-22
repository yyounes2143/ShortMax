.class public final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ActBottomFloatView.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActBottomFloatView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,225:1\n254#2:226\n256#2,2:227\n256#2,2:229\n256#2,2:231\n256#2,2:233\n256#2,2:235\n256#2,2:237\n*S KotlinDebug\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView\n*L\n154#1:226\n145#1:227,2\n146#1:229,2\n163#1:231,2\n164#1:233,2\n177#1:235,2\n178#1:237,2\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

.field private c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

.field private d:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:J

.field private final h:Landroidx/lifecycle/LifecycleRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$a;

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
    new-instance p1, Lbj/i;

    .line 10
    .line 11
    invoke-direct {p1}, Lbj/i;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->h:Landroidx/lifecycle/LifecycleRegistry;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->X(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->Z(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->M(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->Q(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->S(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "actResource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->J()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "expand -> "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p1, "mActBottomFloatResourceIv"

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object p1, v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 45
    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    const-string p0, "mActBottomFloatResourceShrinkedIv"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v0, p0

    .line 55
    :goto_0
    const/16 p0, 0x8

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method private final M(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 54
    .line 55
    iput v3, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->k(Lrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private static final N(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p2, Lbj/m;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lbj/m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->S(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final O(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const-string v0, "bf_icon_tab"

    .line 9
    .line 10
    invoke-virtual {v4, v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v4, p1, v2, v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v9, 0x4

    .line 21
    const/4 v10, 0x0

    .line 22
    const-string v5, "bf_icon_tab_click"

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lce/j;->a:Lce/j;

    .line 30
    .line 31
    const/16 v5, 0x8

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "bf_icon_tab"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v1, p0

    .line 38
    move-object v3, p1

    .line 39
    invoke-static/range {v0 .. v6}, Lce/j;->o(Lce/j;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object v0
.end method

.method private final Q(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, "showImage failed -> url(null)"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 10
    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;

    .line 24
    .line 25
    invoke-direct {v2, p0, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method private final S(Lkotlin/jvm/functions/Function1;)V
    .locals 6
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
    const-string p1, "onActActive -> failed. isAttachedToWindow = false"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 14
    .line 15
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onActActive$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v3, p0, p1, v1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onActActive$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v1, "onActActive"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final V(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "actResource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->d:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "shrink -> "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x20

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const-string p1, "mActBottomFloatResourceIv"

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    :cond_0
    const/16 v1, 0x8

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    const-string p1, "mActBottomFloatResourceShrinkedIv"

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v0, p1

    .line 62
    :goto_0
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->g:J

    .line 73
    .line 74
    sub-long v2, v0, v2

    .line 75
    .line 76
    const-wide/16 v4, 0x1f4

    .line 77
    .line 78
    cmp-long p1, v2, v4

    .line 79
    .line 80
    if-lez p1, :cond_3

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->g:J

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->Y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    :catch_0
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method

.method private static final X(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "actResource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "shrinkImmediately -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x20

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const-string p1, "mActBottomFloatResourceIv"

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    :cond_0
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-string p1, "mActBottomFloatResourceShrinkedIv"

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v0, p1

    .line 58
    :goto_0
    const/4 p1, 0x0

    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->J()V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method private final Y()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->J()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lbj/o;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lbj/o;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v1, 0xbb8

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->d:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->K()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->d:Lkotlinx/coroutines/r;

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->R(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->V(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->O(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->N(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->L(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->d:Lkotlinx/coroutines/r;

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
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->d:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    new-instance v0, Lbj/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lbj/k;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->S(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final P()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mActBottomFloatResourceIv"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string v0, "mActBottomFloatResourceShrinkedIv"

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move-object v1, v0

    .line 30
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :goto_1
    const/4 v0, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const/4 v0, 0x0

    .line 39
    :goto_2
    return v0
.end method

.method public final T()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    new-instance v0, Lbj/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lbj/l;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->S(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final W()V
    .locals 1

    .line 1
    new-instance v0, Lbj/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lbj/n;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->S(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_act_bottom_float:I

    .line 2
    .line 3
    return v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->h:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ActBottomFloatView"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->h:Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v5, p0, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->f:Lkotlinx/coroutines/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "onAttachedToWindow exception -> "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "onDetachedFromWindow"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->h:Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->f:Lkotlinx/coroutines/r;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->f:Lkotlinx/coroutines/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "onDetachedFromWindow exception -> "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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
    sget p2, Lcom/startshorts/androidplayer/R$id;->act_bottom_float_resource_iv:I

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 15
    .line 16
    sget p2, Lcom/startshorts/androidplayer/R$id;->act_bottom_float_resource_iv_shrink:I

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 25
    .line 26
    new-instance p2, Lbj/j;

    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lbj/j;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 35
    .line 36
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-direct {v3, p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    const/4 v5, 0x0

    .line 44
    const-string v1, "showActInBottomFloat"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    return-void
.end method
