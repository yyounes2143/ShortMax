.class public final Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "ProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->g:Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$a;

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
    new-instance v0, Lzk/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lzk/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final E(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/profile/f$a;

    .line 6
    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->a:Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/repo/profile/ProfileRepo;->g(Landroid/content/Context;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/profile/f$a;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final F()Landroidx/lifecycle/MutableLiveData;
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

.method private final H()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->f:Z

    .line 8
    .line 9
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel$queryQueryTodayBonusTotal$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lzk/c;

    .line 16
    .line 17
    invoke-direct {v5, p0}, Lzk/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v2, "queryQueryTodayBonusTotal"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v1, p0

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final I(Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->f:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/profile/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->e:Lms/i;

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

.method public final G(Lcom/startshorts/androidplayer/viewmodel/profile/e;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/profile/e;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/profile/e$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/e$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/profile/e$a;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->E(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/profile/e$b;->a:Lcom/startshorts/androidplayer/viewmodel/profile/e$b;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->H()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 33
    .line 34
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ProfileViewModel"

    .line 2
    .line 3
    return-object v0
.end method
