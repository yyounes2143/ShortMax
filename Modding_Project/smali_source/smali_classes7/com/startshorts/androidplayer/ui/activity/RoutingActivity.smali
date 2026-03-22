.class public final Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;
.source "RoutingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final x:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final p:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private u:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Lkotlin/jvm/functions/Function0;
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
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->x:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lph/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lph/i;-><init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->p:Lms/i;

    .line 14
    .line 15
    const-string v0, "icon"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->t:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lph/j;

    .line 20
    .line 21
    invoke-direct {v0}, Lph/j;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->X(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->d0(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic M()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->Z()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic N(Lcom/airbnb/lottie/LottieAnimationView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->j0(Lcom/airbnb/lottie/LottieAnimationView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->c0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->e0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->b0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->a0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->Y(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method private final V(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->w1()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "checkNotifyPermission ignore -> requestNotificationPermissionOnFirstOpen = false"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lud/b;->J4(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->X()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "checkNotifyPermission ignore -> isBelowAndroid13=true"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v0, Lid/d;->a:Lid/d;

    .line 40
    .line 41
    invoke-virtual {v0}, Lid/d;->a()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    const/16 v2, 0x7d1

    .line 52
    .line 53
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->I([Ljava/lang/String;ZILmk/b;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final W()Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->p:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final X(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->N()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lph/k;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Lph/k;-><init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/a;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;->b()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    long-to-float p1, p1

    .line 12
    const/high16 p2, 0x44fa0000    # 2000.0f

    .line 13
    .line 14
    div-float/2addr p2, p1

    .line 15
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->h0(F)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$e;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "contentState.observe Showing -> state="

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;

    .line 50
    .line 51
    const-string v1, ",action=tryFinish"

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "contentState.observe End -> case="

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/routing/a$b;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->k0()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$c;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "contentState.observe exception -> "

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/routing/a$c;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/routing/a$c;->a()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->k0()V

    .line 132
    .line 133
    .line 134
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 138
    .line 139
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method private static final Z()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final a0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lca/g;->a:Lca/g;

    .line 2
    .line 3
    new-instance v1, Lph/l;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lph/l;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 p0, 0x3e8

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, v1}, Lca/g;->c(JLkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final b0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lnk/b;->a:Lnk/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnk/b;->c()V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->X()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sget-object v0, Lud/b;->a:Lud/b;

    .line 42
    .line 43
    invoke-virtual {v0}, Lud/b;->b0()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const-string p0, "finish RoutingActivity -> campaign ignore splash"

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    const/4 v5, 0x6

    .line 70
    const/4 v6, 0x0

    .line 71
    const-string v1, "campaign_ignore_splash"

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const-wide/16 v3, 0x0

    .line 75
    .line 76
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->k0()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    new-instance v0, Lph/m;

    .line 89
    .line 90
    invoke-direct {v0, p0, p1}, Lph/m;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->V(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method

.method private static final c0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lud/b;->b0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "finish RoutingActivity -> campaign ignore splash"

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 32
    .line 33
    const/4 v5, 0x6

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v1, "campaign_ignore_splash"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->k0()V

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    move v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 60
    .line 61
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->H()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_1
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->W()Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;

    .line 91
    .line 92
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 93
    .line 94
    const-string v3, "hwSplashView"

    .line 95
    .line 96
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v6, Lph/o;

    .line 100
    .line 101
    invoke-direct {v6, v0}, Lph/o;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    iget-boolean v8, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 105
    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    :goto_2
    move v7, v1

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    iget-boolean v1, p1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->r:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_3
    move-object v3, v9

    .line 114
    move-object v4, p1

    .line 115
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;-><init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;ZZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v9}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->U(Lcom/startshorts/androidplayer/viewmodel/routing/b;)V

    .line 119
    .line 120
    .line 121
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p0
.end method

.method private static final d0(Z)Z
    .locals 0

    .line 1
    return p0
.end method

.method private static final e0()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 2
    .line 3
    const-string v1, "RoutingActivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->h(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0
.end method

.method private final g0()V
    .locals 4

    .line 1
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "showMainActivity -> existMainActivity("

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ") mFromNotification("

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->q:Z

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x29

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    new-instance v0, Landroid/content/Intent;

    .line 45
    .line 46
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "from"

    .line 52
    .line 53
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->t:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->q:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lfk/a;->f(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 82
    .line 83
    .line 84
    :goto_0
    const/4 v0, 0x0

    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$anim;->splash_fade_out:I

    .line 86
    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private final h0(F)V
    .locals 1

    .line 1
    new-instance v0, Lph/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lph/n;-><init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final i0(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;F)V
    .locals 5

    .line 1
    const-string v0, "RoutingActivity"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    .line 11
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "showProgressAnim start -> "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSafeMode(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->y()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lph/p;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Lph/p;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->w:Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "showProgressAnim failed -> "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, v0, p0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method private static final j0(Lcom/airbnb/lottie/LottieAnimationView;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final k0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->s:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->g0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final f0(Lcom/startshorts/androidplayer/bean/act/ActResource;Lkotlin/jvm/functions/Function0;)V
    .locals 2
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
    const-string v0, "showAppOpenAct"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->u:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 27
    .line 28
    const-string v1, "actAppOpenViewstub"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->P(Lcom/startshorts/androidplayer/bean/act/ActResource;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_routing:I

    .line 2
    .line 3
    return v0
.end method

.method public onBackPressed()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-super/range {p0 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v0, "exist RoutingActivity, finish now"

    .line 15
    .line 16
    invoke-virtual {v10, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v1, Led/a;->a:Led/a;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v10, v2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lud/b;->a:Lud/b;

    .line 35
    .line 36
    invoke-virtual {v3}, Lud/b;->E()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Lud/b;->O2(Z)V

    .line 43
    .line 44
    .line 45
    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 46
    .line 47
    sget-object v4, Lnk/b;->a:Lnk/b;

    .line 48
    .line 49
    invoke-virtual {v4}, Lnk/b;->i()V

    .line 50
    .line 51
    .line 52
    :cond_1
    sget-object v4, Lud/a;->a:Lud/a;

    .line 53
    .line 54
    invoke-virtual {v4}, Lud/a;->e()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-virtual {v4, v6}, Lud/a;->c0(Z)V

    .line 60
    .line 61
    .line 62
    sget-object v7, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 63
    .line 64
    invoke-virtual {v7, v10}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->J(Landroid/app/Activity;)V

    .line 65
    .line 66
    .line 67
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    invoke-virtual {v4}, Lud/a;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v8, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Z(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v9, "icon"

    .line 81
    .line 82
    if-nez v0, :cond_c

    .line 83
    .line 84
    sget-object v0, Lnk/b;->a:Lnk/b;

    .line 85
    .line 86
    invoke-virtual {v0}, Lnk/b;->j()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Lud/a;->c()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    move-object v0, v9

    .line 96
    :cond_2
    iput-object v0, v10, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->t:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v8, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->c0(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v10, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->t:Ljava/lang/String;

    .line 102
    .line 103
    iget-boolean v11, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 104
    .line 105
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v8, v0, v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->b0(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0, v10}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->o(Landroid/app/Activity;)Lmi/d;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Lmi/d;->show()V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-void

    .line 130
    :cond_4
    iput-boolean v2, v10, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->r:Z

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v8}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    const-class v12, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 141
    .line 142
    invoke-virtual {v11, v12}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    instance-of v12, v11, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 147
    .line 148
    const/4 v13, 0x0

    .line 149
    if-eqz v12, :cond_5

    .line 150
    .line 151
    check-cast v11, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    move-object v11, v13

    .line 155
    :goto_0
    if-eqz v11, :cond_6

    .line 156
    .line 157
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v8, v2}, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-static {v8}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const-class v12, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    instance-of v12, v11, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 174
    .line 175
    if-eqz v12, :cond_7

    .line 176
    .line 177
    check-cast v11, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    move-object v11, v13

    .line 181
    :goto_1
    if-eqz v11, :cond_8

    .line 182
    .line 183
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v8, v2}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    if-eqz v5, :cond_8

    .line 190
    .line 191
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->r()V

    .line 192
    .line 193
    .line 194
    :cond_8
    invoke-virtual {v3}, Lud/b;->X()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v8, :cond_9

    .line 199
    .line 200
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 201
    .line 202
    sget-object v11, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 203
    .line 204
    invoke-virtual {v8, v11}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 205
    .line 206
    .line 207
    :cond_9
    sget-object v8, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 208
    .line 209
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->E()V

    .line 210
    .line 211
    .line 212
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 213
    .line 214
    const/4 v11, 0x3

    .line 215
    invoke-static {v8, v6, v13, v11, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    if-nez v5, :cond_b

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->h()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShowType(I)V

    .line 230
    .line 231
    .line 232
    :cond_a
    invoke-virtual {v4, v6}, Lud/a;->h0(Z)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_b
    sget-object v11, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 242
    .line 243
    new-instance v15, Lph/g;

    .line 244
    .line 245
    invoke-direct {v15}, Lph/g;-><init>()V

    .line 246
    .line 247
    .line 248
    const/16 v16, 0x2

    .line 249
    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    const-wide/16 v12, 0x7d0

    .line 253
    .line 254
    const/4 v14, 0x0

    .line 255
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 256
    .line 257
    .line 258
    :goto_2
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 259
    .line 260
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getDiscoverPreloadEnable()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->H()V

    .line 273
    .line 274
    .line 275
    :cond_c
    invoke-virtual {v4, v9}, Lud/a;->Z(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string v3, "from_notification"

    .line 283
    .line 284
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    iput-boolean v0, v10, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->q:Z

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const-string v3, "quickly_pass"

    .line 295
    .line 296
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_d

    .line 301
    .line 302
    iput-boolean v2, v10, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->s:Z

    .line 303
    .line 304
    :cond_d
    sget-object v0, Lca/g;->a:Lca/g;

    .line 305
    .line 306
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->E()Lda/a;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v0, v10, v2}, Lca/g;->b(Landroid/content/Context;Lda/a;)V

    .line 311
    .line 312
    .line 313
    new-instance v8, Lph/h;

    .line 314
    .line 315
    invoke-direct {v8, v1, v10}, Lph/h;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;)V

    .line 316
    .line 317
    .line 318
    const/16 v9, 0x18

    .line 319
    .line 320
    const/4 v11, 0x0

    .line 321
    const-string v2, "splash"

    .line 322
    .line 323
    const-wide/16 v3, 0x7d0

    .line 324
    .line 325
    const/4 v5, 0x0

    .line 326
    const/4 v6, 0x0

    .line 327
    move-object v0, v7

    .line 328
    move-object/from16 v1, p0

    .line 329
    .line 330
    move-object v7, v8

    .line 331
    move v8, v9

    .line 332
    move-object v9, v11

    .line 333
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->u0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->onResume()V

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
    const-string v1, "onResume -> mEnableFinish("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->s:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x29

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->s:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->g0()V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v0, Laf/i;->a:Laf/i;

    .line 39
    .line 40
    invoke-virtual {v0}, Laf/i;->g()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onStop()V

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
    const-string v1, "onStop -> mIsRequestNotificationPermission("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->v:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ") "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->v:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->W()Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->R()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->W()Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->Q()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RoutingActivity"

    .line 2
    .line 3
    return-object v0
.end method
