.class public final Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "TagFilterViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private e:Z

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/tag/b;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->h:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$a;

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
    new-instance v0, Ljl/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ljl/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->f:Lms/i;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/tag/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/tag/b$b;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final E(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->a:Lcom/startshorts/androidplayer/repo/tag/TagRepo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->e(Landroid/content/Context;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/tag/c$a;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/tag/c$a;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

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

.method private final I(Ljava/lang/Long;III)Lkotlinx/coroutines/r;
    .locals 8

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p4

    .line 9
    move v5, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;Ljava/lang/Long;IIILrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v1, "queryTagFilterEpisodes"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move-object v3, v7

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method


# virtual methods
.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/tag/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->f:Lms/i;

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

.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/tag/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final G(Lcom/startshorts/androidplayer/viewmodel/tag/a;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/tag/a;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;->a()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;->d()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;->b()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;->c()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->I(Ljava/lang/Long;III)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 33
    .line 34
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final H(Lcom/startshorts/androidplayer/viewmodel/tag/d;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/tag/d;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/d$a;->b()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->E(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 25
    .line 26
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final J(ZLcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 2
    .param p2    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "throwable"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {v1, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;-><init>(ZLcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TagViewModel"

    .line 2
    .line 3
    return-object v0
.end method
