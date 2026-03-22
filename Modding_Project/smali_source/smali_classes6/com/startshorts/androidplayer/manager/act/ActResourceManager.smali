.class public final Lcom/startshorts/androidplayer/manager/act/ActResourceManager;
.super Ljava/lang/Object;
.source "ActResourceManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActResourceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1863#2,2:200\n774#2:202\n865#2,2:203\n1872#2,3:205\n*S KotlinDebug\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager\n*L\n115#1:200,2\n159#1:202\n159#1:203,2\n167#1:205,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->f(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->g(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->w(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lce/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lce/c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isProgrammaticAd()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final g(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v4, v3

    .line 31
    check-cast v4, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isLongTerm()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x1

    .line 38
    if-eq v5, v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getStartDatetimeLong()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    cmp-long v5, v0, v5

    .line 45
    .line 46
    if-lez v5, :cond_0

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getEndDatetimeLong()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmp-long v4, v0, v4

    .line 53
    .line 54
    if-gez v4, :cond_0

    .line 55
    .line 56
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    if-nez p2, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    check-cast v2, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    move-object p1, v2

    .line 78
    check-cast p1, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x0

    .line 85
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    add-int/lit8 v1, p2, 0x1

    .line 96
    .line 97
    if-gez p2, :cond_5

    .line 98
    .line 99
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 100
    .line 101
    .line 102
    :cond_5
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->setPosition(I)V

    .line 105
    .line 106
    .line 107
    move p2, v1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    return-object v2
.end method

.method static synthetic h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->g(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final i(Ljava/util/List;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$getValidResourceListSuspend$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$getValidResourceListSuspend$2;-><init>(Ljava/util/List;Ljava/lang/Integer;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p3}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method static synthetic j(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->i(Ljava/util/List;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final m(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Ljk/v;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lkk/f;->o(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method private final o(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getFormatAdsVideoUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 23
    .line 24
    sget-object v1, Lpf/a;->a:Lpf/a;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lud/b;->c2(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->x()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->q()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->A()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isProgrammaticAd()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    :goto_0
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 59
    .line 60
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private final w(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;-><init>(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadVideos$1;->j:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->r(Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->v(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1
.end method

.method public static synthetic z(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->y(Z)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->e(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->e(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final C()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->e(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final D(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v2, p0

    .line 13
    move-object v5, p1

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->j(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final k(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-object v5, p1

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->j(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-object v5, p1

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->j(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAd()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->o(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->m(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->m(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    return p1
.end method

.method public final p()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->e(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final r(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-object v5, p1

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->j(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final t(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$9;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public final u(Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;-><init>(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v2, :cond_6

    .line 39
    .line 40
    if-eq v2, v7, :cond_5

    .line 41
    .line 42
    if-eq v2, v6, :cond_4

    .line 43
    .line 44
    if-eq v2, v5, :cond_3

    .line 45
    .line 46
    if-eq v2, v4, :cond_2

    .line 47
    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/util/Iterator;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Ljava/util/List;

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Ljava/util/List;

    .line 79
    .line 80
    iget-object v5, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_4
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Ljava/util/List;

    .line 92
    .line 93
    iget-object v6, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v6, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Ljava/util/List;

    .line 104
    .line 105
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v7, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    :cond_7
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 137
    .line 138
    iput v7, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->r(Lrs/c;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-ne v2, v1, :cond_8

    .line 145
    .line 146
    return-object v1

    .line 147
    :cond_8
    move-object v7, p0

    .line 148
    move-object v9, v2

    .line 149
    move-object v2, p1

    .line 150
    move-object p1, v9

    .line 151
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 158
    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_9

    .line 166
    .line 167
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_9
    iput-object v7, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 173
    .line 174
    iput v6, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 175
    .line 176
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->l(Lrs/c;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-ne p1, v1, :cond_a

    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_a
    move-object v6, v7

    .line 184
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 185
    .line 186
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 191
    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    :cond_b
    iput-object v6, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 204
    .line 205
    iput v5, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 206
    .line 207
    invoke-virtual {v6, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->k(Lrs/c;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-ne p1, v1, :cond_c

    .line 212
    .line 213
    return-object v1

    .line 214
    :cond_c
    move-object v5, v6

    .line 215
    :goto_3
    check-cast p1, Ljava/util/List;

    .line 216
    .line 217
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    :cond_d
    iput-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 233
    .line 234
    const/4 p1, 0x0

    .line 235
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->i:Ljava/lang/Object;

    .line 236
    .line 237
    iput v4, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 238
    .line 239
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->D(Lrs/c;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-ne p1, v1, :cond_e

    .line 244
    .line 245
    return-object v1

    .line 246
    :cond_e
    :goto_4
    check-cast p1, Ljava/util/List;

    .line 247
    .line 248
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 253
    .line 254
    if-eqz p1, :cond_f

    .line 255
    .line 256
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    :cond_f
    check-cast v2, Ljava/lang/Iterable;

    .line 264
    .line 265
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    move-object v2, p1

    .line 270
    :cond_10
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_11

    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 281
    .line 282
    sget-object v4, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 283
    .line 284
    iput-object v2, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->h:Ljava/lang/Object;

    .line 285
    .line 286
    iput v3, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$preloadCovers$1;->l:I

    .line 287
    .line 288
    invoke-virtual {v4, p1, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->t(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    if-ne p1, v1, :cond_10

    .line 293
    .line 294
    return-object v1

    .line 295
    :cond_11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    return-object p1
.end method

.method public final v(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getFormatAdsVideoUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lpf/d;->a:Lpf/d;

    .line 19
    .line 20
    const-wide/32 v1, 0x32000

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1, v2}, Lpf/d;->c(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final x()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->d(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->h(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->e(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final y(Z)Lkotlinx/coroutines/r;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->a:Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/repo/act/ActResourceRepo;->i(ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
