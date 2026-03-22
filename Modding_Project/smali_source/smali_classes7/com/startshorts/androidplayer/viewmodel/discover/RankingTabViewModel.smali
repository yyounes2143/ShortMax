.class public final Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "DiscoverRankingTabViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverRankingTabViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingTabViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n360#2,7:106\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingTabViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel\n*L\n94#1:106,7\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$a;
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
            "Lcom/startshorts/androidplayer/viewmodel/discover/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->h:Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$a;

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
    const-string v0, "RankingTabViewModel"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->e:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final F(I)V
    .locals 7

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel$queryRankingTabData$1;-><init>(ILcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    new-instance v4, Ltk/d;

    .line 8
    .line 9
    invoke-direct {v4, p0}, Ltk/d;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v1, "queryRankingTabData"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final G(Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final B(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v3, p1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v2, v1

    .line 46
    :goto_1
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move-object v2, v1

    .line 50
    :goto_2
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getShortPlayResponseList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_4
    return-object v1
.end method

.method public final C()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E(Lcom/startshorts/androidplayer/viewmodel/discover/g;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/discover/g;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/g$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/g$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/g$a;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->F(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 21
    .line 22
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final H(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-void
.end method

.method public final I(ILjava/util/List;)V
    .locals 12
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast v2, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, v3

    .line 32
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v4, p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move-object v3, v1

    .line 49
    :goto_1
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move-object v3, v1

    .line 53
    :goto_2
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 54
    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingResponseList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    :cond_6
    new-instance v11, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 69
    .line 70
    if-eqz v3, :cond_7

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_7
    move-object v5, v1

    .line 77
    if-eqz v3, :cond_9

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_8
    :goto_3
    move-object v6, v1

    .line 87
    goto :goto_5

    .line 88
    :cond_9
    :goto_4
    const-string v1, ""

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    move-object v4, v11

    .line 108
    move-object v10, p2

    .line 109
    invoke-direct/range {v4 .. v10}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/4 v3, -0x1

    .line 122
    if-eqz v1, :cond_c

    .line 123
    .line 124
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-nez v1, :cond_a

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ne v1, p1, :cond_b

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_b
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_c
    move v0, v3

    .line 148
    :goto_8
    if-ne v0, v3, :cond_d

    .line 149
    .line 150
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_d
    invoke-interface {v2, v0, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :goto_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 158
    .line 159
    if-eqz p1, :cond_e

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setRankingResponseList(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    :cond_e
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
