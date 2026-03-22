.class public final Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "EmailAuthViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/auth/d;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$a;->a:Lcom/startshorts/androidplayer/viewmodel/auth/d$a;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    return-void
.end method

.method private final C(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$d;->a:Lcom/startshorts/androidplayer/viewmodel/auth/d$d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v5, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v3, "sendOTP"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$g;->a:Lcom/startshorts/androidplayer/viewmodel/auth/d$g;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v5, p0, p1, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v3, "verifyOTP"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/auth/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B(Lcom/startshorts/androidplayer/viewmodel/auth/c;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/auth/c;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/c$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/c$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/c$a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->C(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 39
    .line 40
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EmailAuthViewModel"

    .line 2
    .line 3
    return-object v0
.end method
