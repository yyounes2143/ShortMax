.class public final Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "RoutingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/routing/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/routing/a;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->h:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RoutingViewModel"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->e:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lca/d;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->Z(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lca/d;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->b0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->d0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->a0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->c0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->V(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->X(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->M(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/b$a;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/routing/b$a;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->W(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Landroid/app/Activity;Landroid/view/ViewGroup;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->Y(Landroid/app/Activity;Landroid/view/ViewGroup;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final M(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/r;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p3}, Lkotlinx/coroutines/r;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, v0, v1, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "loadContent cancel"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " -> scene="

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    return-void
.end method

.method private final O(Z)J
    .locals 2

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    return-wide v0
.end method

.method private final P(Lcom/startshorts/androidplayer/viewmodel/routing/b$a;)J
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->c()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-wide/16 v1, 0x7d0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->a()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const-wide/16 v3, 0xbb8

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->O(Z)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    add-long/2addr v3, v5

    .line 35
    :goto_1
    sget-object p1, Lud/a;->a:Lud/a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lud/a;->m()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    add-long/2addr v3, v1

    .line 48
    :cond_2
    return-wide v3
.end method

.method private final S(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "onContentShow("

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;->a()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sub-long/2addr v4, v2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ") -> costTime="

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 p1, 0x29

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->T(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final T(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "preloadInterstitialAd -> scene="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final V(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$c;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Unknown error"

    .line 8
    .line 9
    :cond_0
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/routing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final W(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "act priority:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getPriority()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->S(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lfl/g;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lfl/g;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->f0(Lcom/startshorts/androidplayer/bean/act/ActResource;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {p2, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;-><init>(ZZ)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final X(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;

    .line 4
    .line 5
    const-string v1, "act_dismiss"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final Y(Landroid/app/Activity;Landroid/view/ViewGroup;JLrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "J",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2, v1}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 10
    .line 11
    new-instance v10, Lfl/b;

    .line 12
    .line 13
    invoke-direct {v10, v0}, Lfl/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 14
    .line 15
    .line 16
    new-instance v11, Lfl/c;

    .line 17
    .line 18
    invoke-direct {v11, v0, v1}, Lfl/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;)V

    .line 19
    .line 20
    .line 21
    new-instance v12, Lfl/d;

    .line 22
    .line 23
    invoke-direct {v12, v0, v1}, Lfl/d;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;)V

    .line 24
    .line 25
    .line 26
    new-instance v13, Lfl/e;

    .line 27
    .line 28
    invoke-direct {v13, v0}, Lfl/e;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 29
    .line 30
    .line 31
    new-instance v15, Lfl/f;

    .line 32
    .line 33
    invoke-direct {v15, v1, v0}, Lfl/f;-><init>(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 34
    .line 35
    .line 36
    const/16 v16, 0x200

    .line 37
    .line 38
    const/16 v17, 0x0

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    const-string v9, "splash"

    .line 43
    .line 44
    const/4 v14, 0x0

    .line 45
    move-object/from16 v3, p1

    .line 46
    .line 47
    move-object/from16 v4, p2

    .line 48
    .line 49
    move-wide/from16 v7, p3

    .line 50
    .line 51
    invoke-static/range {v2 .. v17}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->f0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lgt/g0;

    .line 52
    .line 53
    .line 54
    move-object/from16 v2, p5

    .line 55
    .line 56
    invoke-interface {v1, v2}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    return-object v1
.end method

.method private static final Z(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lca/d;)Z
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;-><init>(ZZ)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return p1
.end method

.method private static final a0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->S(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/b;->a:Lfk/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/b;->d()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onShowSucceed"

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, p0, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->e0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final b0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lgt/p;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string p2, "AppOpenAd onShowFailed"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "onShowFailed"

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p0, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->e0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final c0(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "AppOpenAd onDismiss"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;

    .line 9
    .line 10
    const-string v1, "ad_dismiss"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final d0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "onLoadFailed"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->e0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final e0(Lgt/p;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/p<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->t()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "showAppOpenAd safeComplete -> msg="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final N()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/routing/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.viewmodel.routing.ContentState.Showing"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final R()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.viewmodel.routing.ContentState.Showing"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public final U(Lcom/startshorts/androidplayer/viewmodel/routing/b;)V
    .locals 16
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/routing/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    const-string v0, "intent"

    .line 6
    .line 7
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v0, v3, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move-object v0, v3

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;

    .line 16
    .line 17
    invoke-direct {v12, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/routing/b$a;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->c()Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v9, "loadContent -> isFirstLaunch "

    .line 56
    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->e()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v9, ",adEnable="

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v9, ", actEnable="

    .line 76
    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v9, ",maxStayTime="

    .line 88
    .line 89
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v9, ",progressTime=3000"

    .line 96
    .line 97
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v12, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->e()Z

    .line 108
    .line 109
    .line 110
    iget-object v0, v12, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v9

    .line 118
    const-wide/16 v13, 0xbb8

    .line 119
    .line 120
    invoke-direct {v1, v13, v14, v9, v10}, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;-><init>(JJ)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1;

    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    move-object v0, v15

    .line 130
    move-object/from16 v1, p0

    .line 131
    .line 132
    move-object/from16 v3, p1

    .line 133
    .line 134
    move-wide v9, v13

    .line 135
    invoke-direct/range {v0 .. v11}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/internal/Ref$ObjectRef;JJLrs/c;)V

    .line 136
    .line 137
    .line 138
    new-instance v4, Lfl/a;

    .line 139
    .line 140
    invoke-direct {v4, v12}, Lfl/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 141
    .line 142
    .line 143
    const/4 v5, 0x2

    .line 144
    const/4 v6, 0x0

    .line 145
    const-string v1, "loadContent"

    .line 146
    .line 147
    const/4 v2, 0x0

    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    move-object v3, v15

    .line 151
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 156
    .line 157
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 158
    .line 159
    .line 160
    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
