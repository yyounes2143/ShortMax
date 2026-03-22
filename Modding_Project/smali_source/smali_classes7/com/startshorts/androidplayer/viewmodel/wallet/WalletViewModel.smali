.class public final Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "WalletViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$a;
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$a;

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
    new-instance v0, Lkl/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lkl/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final C(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->a:Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->e(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/wallet/b$a;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$a;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final D(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->a:Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->f(Landroid/content/Context;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/wallet/b$b;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$b;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
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

.method private final G(III)Lkotlinx/coroutines/r;
    .locals 7

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;-><init>(IIILcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "queryWalletRecords"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method


# virtual methods
.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/wallet/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->e:Lms/i;

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

.method public final F(Lcom/startshorts/androidplayer/viewmodel/wallet/a;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/wallet/a;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;->b()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->D(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$a;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$a;->a()Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->C(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;->b()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;->c()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;->a()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->G(III)Lkotlinx/coroutines/r;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 61
    .line 62
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "WalletViewModel"

    .line 2
    .line 3
    return-object v0
.end method
