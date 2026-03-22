.class public final Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "ComingSoonViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$a;

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
    new-instance v0, Lsk/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lsk/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final B(Ljava/lang/String;I)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;-><init>(Ljava/lang/String;ILcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "checkShortsReservation"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final D()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$loadShortcutConfig$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$loadShortcutConfig$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "loadShortcutConfig"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private static final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/comingsoon/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F(Lcom/startshorts/androidplayer/viewmodel/comingsoon/a;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/comingsoon/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->a:Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->c()Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$a;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$a;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$a;->b()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->B(Ljava/lang/String;I)Lkotlinx/coroutines/r;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$c;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->D()Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 43
    .line 44
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ComingSoonViewModel"

    .line 2
    .line 3
    return-object v0
.end method
