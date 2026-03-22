.class final Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LanguageViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;->F(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.profile.LanguageViewModel$updateAppLanguage$1"
    f = "LanguageViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
            "Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->j:Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic i()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->n()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->k()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final k()Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lnk/b;->a:Lnk/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnk/b;->b()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/profile/d;

    .line 9
    .line 10
    invoke-direct {v5}, Lcom/startshorts/androidplayer/viewmodel/profile/d;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x0

    .line 15
    const-wide/16 v2, 0x5dc

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object v0
.end method

.method private static final n()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->e(Z)Lkotlinx/coroutines/r;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->j:Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;-><init>(Lcom/startshorts/androidplayer/bean/settings/AppLanguage;Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lud/a;->a:Lud/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lud/a;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lud/b;->a:Lud/b;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lud/b;->N2(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Lud/a;->Y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/AppLanguageUpdatedEvent;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v0, v3}, Lcom/startshorts/androidplayer/bean/eventbus/AppLanguageUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->i()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->h()V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->d()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->t()V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {v1, p1}, Lud/b;->z4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lud/b;->q4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lud/b;->O4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->g()V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->e()V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->j()V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->a:Lcom/startshorts/androidplayer/repo/search/SearchRepo;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/search/SearchRepo;->c()V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->j(Lcom/startshorts/androidplayer/bean/act/ActResourceList;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lfk/v;->a:Lfk/v;

    .line 111
    .line 112
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 113
    .line 114
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->i:Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getOfficialName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p1, v1, v2}, Lfk/v;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    sget-object p1, Lcom/startshorts/androidplayer/repo/language/LanguageRepo;->a:Lcom/startshorts/androidplayer/repo/language/LanguageRepo;

    .line 136
    .line 137
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/profile/c;

    .line 138
    .line 139
    invoke-direct {v1}, Lcom/startshorts/androidplayer/viewmodel/profile/c;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/language/LanguageRepo;->h(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 143
    .line 144
    .line 145
    :cond_1
    sget-object p1, Lyf/a;->a:Lyf/a;

    .line 146
    .line 147
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Lyf/a;->m(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel$updateAppLanguage$1;->j:Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/profile/LanguageViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/profile/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/profile/b$b;

    .line 161
    .line 162
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 171
    .line 172
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method
