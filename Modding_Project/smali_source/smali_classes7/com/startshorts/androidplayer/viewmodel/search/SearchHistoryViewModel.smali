.class public final Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "SearchHistoryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/search/b;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/b$b;

    .line 7
    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/search/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/search/a;
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
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$d;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/b$a;->a:Lcom/startshorts/androidplayer/viewmodel/search/b$a;

    .line 17
    .line 18
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$c;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$1;

    .line 34
    .line 35
    invoke-direct {v5, p0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;Lrs/c;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x0

    .line 40
    const-string v3, "getSearchHistory"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v2, p0

    .line 44
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/a$b;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$b;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$2;

    .line 57
    .line 58
    invoke-direct {v5, p0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;Lrs/c;)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    const/4 v7, 0x0

    .line 63
    const-string v3, "clearHistory"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    move-object v2, p0

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/a$a;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$3;

    .line 76
    .line 77
    invoke-direct {v5, p1, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel$process$3;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/a;Lrs/c;)V

    .line 78
    .line 79
    .line 80
    const/4 v6, 0x2

    .line 81
    const/4 v7, 0x0

    .line 82
    const-string v3, "addHistory"

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    move-object v2, p0

    .line 86
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 91
    .line 92
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SearchHistoryViewModel"

    .line 2
    .line 3
    return-object v0
.end method
