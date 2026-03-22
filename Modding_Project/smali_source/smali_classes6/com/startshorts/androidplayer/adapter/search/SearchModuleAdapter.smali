.class public final Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "SearchModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$f;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$g;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$h;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$i;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$j;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$l;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;,
        Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final A:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final v:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final w:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final x:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final y:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final z:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBanner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->u:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;

    .line 8
    .line 9
    new-instance v0, Lod/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lod/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->v:Lms/i;

    .line 19
    .line 20
    new-instance v0, Lod/b;

    .line 21
    .line 22
    invoke-direct {v0}, Lod/b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->w:Lms/i;

    .line 30
    .line 31
    new-instance v0, Lod/c;

    .line 32
    .line 33
    invoke-direct {v0}, Lod/c;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->x:Lms/i;

    .line 41
    .line 42
    new-instance v0, Lod/d;

    .line 43
    .line 44
    invoke-direct {v0}, Lod/d;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->y:Lms/i;

    .line 52
    .line 53
    new-instance v0, Lod/e;

    .line 54
    .line 55
    invoke-direct {v0}, Lod/e;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->z:Lms/i;

    .line 63
    .line 64
    new-instance v0, Lod/f;

    .line 65
    .line 66
    invoke-direct {v0}, Lod/f;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->A:Lms/i;

    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic E()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic F()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->O()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic G()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->K()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic H()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->L()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic I()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->P()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic J()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->M()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final K()I
    .locals 1

    .line 1
    const/high16 v0, 0x42e00000    # 112.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final L()F
    .locals 1

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private static final M()F
    .locals 1

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private static final N()I
    .locals 1

    .line 1
    const/high16 v0, 0x42800000    # 64.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final O()I
    .locals 1

    .line 1
    const/high16 v0, 0x42a80000    # 84.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final P()I
    .locals 1

    .line 1
    const/high16 v0, 0x42ac0000    # 86.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final synthetic Q()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->y:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic R()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->w:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic S()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->x:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final V()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->p:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Y(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 17
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "holder"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 15
    .line 16
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    .line 17
    .line 18
    const-string v4, ""

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v5, Lag/a;->a:Lag/a;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    move-object v13, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v13, v3

    .line 44
    :goto_0
    iget-object v14, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v15, 0x7c

    .line 47
    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const-string v6, "search_result"

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    invoke-static/range {v5 .. v16}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    move-object v3, v1

    .line 65
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v5, Lag/a;->a:Lag/a;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    move-object v13, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v13, v3

    .line 86
    :goto_1
    iget-object v14, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 87
    .line 88
    const/16 v15, 0x7c

    .line 89
    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    const-string v6, "realtime_search"

    .line 93
    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    invoke-static/range {v5 .. v16}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    move-object v3, v1

    .line 107
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v5, Lag/a;->a:Lag/a;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    move-object v13, v4

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move-object v13, v3

    .line 128
    :goto_2
    iget-object v14, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 129
    .line 130
    const/16 v15, 0x7c

    .line 131
    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    const-string v6, "all_search"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    invoke-static/range {v5 .. v16}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v5, Lag/a;->a:Lag/a;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    move-object v13, v4

    .line 167
    goto :goto_3

    .line 168
    :cond_6
    move-object v13, v1

    .line 169
    :goto_3
    iget-object v14, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v15, 0x7c

    .line 172
    .line 173
    const/16 v16, 0x0

    .line 174
    .line 175
    const-string v6, "all_search"

    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v12, 0x0

    .line 182
    invoke-static/range {v5 .. v16}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final Z(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/LinearLayoutManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->r:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->p:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->s:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;

    .line 2
    .line 3
    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->getViewType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->Y(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SearchModuleAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_module_title:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$n;

    .line 25
    .line 26
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_you_might_like:I

    .line 27
    .line 28
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeBinding;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$n;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeBinding;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$c;

    .line 40
    .line 41
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_module_empty_space:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleEmptySpaceBinding;

    .line 48
    .line 49
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchModuleEmptySpaceBinding;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;

    .line 55
    .line 56
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_act_banner:I

    .line 57
    .line 58
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 63
    .line 64
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_4
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$f;

    .line 70
    .line 71
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_bottom_padding:I

    .line 72
    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchBottomPaddingBinding;

    .line 78
    .line 79
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchBottomPaddingBinding;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_5
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;

    .line 85
    .line 86
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_no_network:I

    .line 87
    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

    .line 93
    .line 94
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$j;

    .line 99
    .line 100
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_no_more_result:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchNoMoreResultBinding;

    .line 107
    .line 108
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$j;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchNoMoreResultBinding;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_7
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$l;

    .line 113
    .line 114
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_no_result:I

    .line 115
    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchNoResultBinding;

    .line 121
    .line 122
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$l;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchNoResultBinding;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_8
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;

    .line 127
    .line 128
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_module_title:I

    .line 129
    .line 130
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 135
    .line 136
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$g;

    .line 141
    .line 142
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_exactly:I

    .line 143
    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchExactlyBinding;

    .line 149
    .line 150
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$g;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchExactlyBinding;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_a
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$h;

    .line 155
    .line 156
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_fuzzy:I

    .line 157
    .line 158
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchFuzzyBinding;

    .line 163
    .line 164
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$h;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchFuzzyBinding;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_b
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;

    .line 169
    .line 170
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_popular:I

    .line 171
    .line 172
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 177
    .line 178
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_c
    new-instance p2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$i;

    .line 183
    .line 184
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_search_history:I

    .line 185
    .line 186
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryBinding;

    .line 191
    .line 192
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$i;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryBinding;)V

    .line 193
    .line 194
    .line 195
    :goto_0
    return-object p2

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
