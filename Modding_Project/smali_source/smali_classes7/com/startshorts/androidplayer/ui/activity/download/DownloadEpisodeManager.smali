.class public final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;
.super Ljava/lang/Object;
.source "DownloadEpisodeManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,923:1\n1755#2,3:924\n1755#2,3:928\n774#2:932\n865#2,2:933\n1863#2,2:936\n1863#2,2:939\n1863#2,2:941\n1863#2,2:943\n1010#2,2:949\n774#2:951\n865#2,2:952\n1755#2,3:954\n1010#2,2:960\n774#2:962\n865#2,2:963\n216#3:927\n217#3:931\n216#3:935\n217#3:938\n216#3,2:945\n216#3,2:947\n216#3,2:958\n1#4:957\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n*L\n290#1:924,3\n427#1:928,3\n445#1:932\n445#1:933,2\n462#1:936,2\n501#1:939,2\n508#1:941,2\n547#1:943,2\n753#1:949,2\n755#1:951\n755#1:952,2\n769#1:954,3\n841#1:960,2\n847#1:962\n847#1:963,2\n421#1:927\n421#1:931\n457#1:935\n457#1:938\n551#1:945,2\n720#1:947,2\n826#1:958,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Z

.field private static h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->e:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    const-string v0, ""

    .line 43
    .line 44
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->k:Z

    .line 48
    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l:Ljava/util/HashMap;

    .line 55
    .line 56
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

.method private static final A()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final C(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/HashMap;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method private final D(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getVideoId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lkotlin/Pair;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/HashMap;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_3
    :goto_0
    return-object v0
.end method

.method private final E(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Z)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->u(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, "\u77ed\u5267\u4efb\u52a1\u521b\u5efa\u5931\u8d25"

    .line 26
    .line 27
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "\u77ed\u5267\u4efb\u52a1"

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getVideoId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "\u53d1\u751f\u4e86\u91cd\u5efa"

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Luh/s;->b(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    return-object v0
.end method

.method static synthetic F(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->E(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Z)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final O()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public static synthetic U(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->T(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final V(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->E(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Z)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->invalidateAndCancel()V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "\u5220\u9664\u4efb\u52a1:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method private final X(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-object p1
.end method

.method private final Z()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->m:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x1770

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sput-wide v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->m:J

    .line 17
    .line 18
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$string;->download_vip_expired_toast_desc:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lfk/u;->g(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->z()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a0(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->A()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0
.end method

.method public static synthetic d()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->w()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->r(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0()V
    .locals 5

    .line 1
    const-string v0, "map\u6c47\u603b\uff1a"

    .line 2
    .line 3
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-keys>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string v2, "shortId:"

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " has count:"

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/HashMap;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Luh/s;->b(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "shortMap\u6c47\u603b\uff1a"

    .line 89
    .line 90
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v4, " info:"

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1}, Luh/s;->b(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->s(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h()Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->D(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic k()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic l()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->V(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->X(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    instance-of v1, p1, Ljava/util/Collection;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    check-cast v1, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->hasUnFinishJob()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eq p1, v2, :cond_4

    .line 73
    .line 74
    const-string p1, "\u5f53\u524d\u7684\u4efb\u52a1\u72b6\u6001\u53d1\u751f\u4e86\u6539\u53d8"

    .line 75
    .line 76
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setHasUnfinishedJob(Z)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->c(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lkotlin/Pair;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadSubKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/HashMap;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadSubKey()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    if-nez v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadSubKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method private final u(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0, v0}, Lcom/ss/ttvideoengine/download/Downloader;->urlTask([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadURLTask;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v0
.end method

.method private static final w()Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method

.method private final x(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->isDownloadAbleItem()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_0
    check-cast v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p2, "\u5373\u5c06\u51c6\u5907\u4e0b\u8f7dtaskInfo"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    const/4 p2, 0x2

    .line 58
    invoke-static {p0, v0, p1, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->F(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 p3, 0x5

    .line 69
    if-ne p2, p3, :cond_2

    .line 70
    .line 71
    const-string p1, "\u5f53\u524d\u5267\u4e0b\u8f7d\u5b8c\u6210\uff0c\u4f46\u662f\u72b6\u6001\u4ee5\u53ca\u4e0d\u5bf9"

    .line 72
    .line 73
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->u(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string p2, "\u7ee7\u7eed\u4e0b\u8f7d"

    .line 87
    .line 88
    invoke-static {p2}, Luh/s;->b(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p1, "\u5f53\u524d\u5267\u4e0b\u8f7d\u6ca1\u6709\u4e86\u53ef\u4ee5\u6267\u884c\u4e0b\u8f7d\u7684\u5267"

    .line 101
    .line 102
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic y(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p2, Luh/q;

    .line 6
    .line 7
    invoke-direct {p2}, Luh/q;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    new-instance p3, Luh/r;

    .line 15
    .line 16
    invoke-direct {p3}, Luh/r;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->x(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final z()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final B()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;-><init>(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    const/4 v5, 0x4

    .line 25
    if-nez v3, :cond_6

    .line 26
    .line 27
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v6, 0x0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_5

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    sget-object v9, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 73
    .line 74
    invoke-direct {v9, v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Ljava/lang/Iterable;

    .line 79
    .line 80
    instance-of v9, v7, Ljava/util/Collection;

    .line 81
    .line 82
    if-eqz v9, :cond_1

    .line 83
    .line 84
    move-object v9, v7

    .line 85
    check-cast v9, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_3

    .line 103
    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 109
    .line 110
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eq v10, v5, :cond_2

    .line 115
    .line 116
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eq v9, v4, :cond_2

    .line 121
    .line 122
    const/4 v7, 0x1

    .line 123
    invoke-virtual {v8, v7}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setHasUnfinishedJob(Z)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_0

    .line 131
    .line 132
    if-nez v6, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v9

    .line 139
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    cmp-long v7, v9, v11

    .line 144
    .line 145
    if-gez v7, :cond_0

    .line 146
    .line 147
    :goto_2
    move-object v6, v8

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    move-object v3, v6

    .line 150
    :cond_6
    if-eqz v3, :cond_9

    .line 151
    .line 152
    sget-object v6, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-direct {v6, v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/lang/Iterable;

    .line 163
    .line 164
    new-instance v7, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-eqz v8, :cond_8

    .line 178
    .line 179
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    move-object v9, v8

    .line 184
    check-cast v9, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 185
    .line 186
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-eq v10, v5, :cond_7

    .line 191
    .line 192
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eq v9, v4, :cond_7

    .line 197
    .line 198
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_9

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->setShortPlayId(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getDramaName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->setShortPlayName(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    .line 228
    .line 229
    :cond_9
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_f

    .line 244
    .line 245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Ljava/util/Map$Entry;

    .line 250
    .line 251
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 256
    .line 257
    sget-object v6, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-direct {v6, v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    move-object v7, v6

    .line 268
    check-cast v7, Ljava/util/Collection;

    .line 269
    .line 270
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-nez v7, :cond_a

    .line 275
    .line 276
    new-instance v7, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 277
    .line 278
    new-instance v8, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-direct {v7, v8}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;-><init>(Ljava/util/List;)V

    .line 284
    .line 285
    .line 286
    check-cast v6, Ljava/lang/Iterable;

    .line 287
    .line 288
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_c

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    check-cast v8, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 303
    .line 304
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-ne v9, v5, :cond_b

    .line 309
    .line 310
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-lez v6, :cond_a

    .line 327
    .line 328
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->setShortPlayId(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getContent()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    const-string v8, ""

    .line 340
    .line 341
    if-nez v6, :cond_d

    .line 342
    .line 343
    move-object v6, v8

    .line 344
    :cond_d
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->setDramaContent(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getDramaName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    if-nez v4, :cond_e

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_e
    move-object v8, v4

    .line 355
    :goto_6
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->setDramaName(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_f
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    check-cast v3, Ljava/util/Collection;

    .line 367
    .line 368
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_10

    .line 373
    .line 374
    new-instance v3, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;

    .line 375
    .line 376
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 377
    .line 378
    sget v5, Lcom/startshorts/androidplayer/R$string;->downloading:I

    .line 379
    .line 380
    invoke-virtual {v4, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-direct {v3, v4}, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-lez v2, :cond_11

    .line 398
    .line 399
    new-instance v2, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;

    .line 400
    .line 401
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 402
    .line 403
    sget v4, Lcom/startshorts/androidplayer/R$string;->downloaded:I

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Lfk/u;->d(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    .line 417
    .line 418
    :cond_11
    return-object v0
.end method

.method public final G(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dramaList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "\u6620\u5c04shortId\uff1a"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " \u7684taskItem"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/HashMap;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " \u6ca1\u6709\u627e\u5230\uff0c\u5168\u90e8item\u65b0\u5efa"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    check-cast p2, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 102
    .line 103
    new-instance v1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    return-object p1

    .line 113
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, " \u627e\u4e86"

    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, " \u4e2aitem"

    .line 142
    .line 143
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    check-cast p2, Ljava/lang/Iterable;

    .line 154
    .line 155
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_4

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getDownloadSubKey()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 180
    .line 181
    new-instance v3, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 182
    .line 183
    invoke-direct {v3, p2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 184
    .line 185
    .line 186
    if-eqz v1, :cond_3

    .line 187
    .line 188
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setDownloadInfo(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    return-object v2
.end method

.method public final H(ILrs/c;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadedDramaInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final I(IILrs/c;)Ljava/lang/Object;
    .locals 3
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p2, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;-><init>(IILrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final J(ILrs/c;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final K(ILrs/c;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final L()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->i:Z

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
    sput-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->i:Z

    .line 8
    .line 9
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lud/b;->T0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lcom/ss/ttvideoengine/database/VideoModelDBManager;->setEnableSizeLimit(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/16 v1, 0x1

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/download/Downloader;->setMaxDownloadOperationCount(J)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/ss/ttvideoengine/download/Downloader;->getInstance()Lcom/ss/ttvideoengine/download/Downloader;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/download/Downloader;->setListener(Lcom/ss/ttvideoengine/download/IDownloaderListener;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$2;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$2;-><init>(Lrs/c;)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x3

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final P(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, v0, v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->F(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->suspend()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final Q(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$pauseTaskInfoList$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$pauseTaskInfoList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final R(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedManagerList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedManagerList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final S(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadedDramaInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedTaskInfoList$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedTaskInfoList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final T(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final W(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$resumeDownloadTaskInfoList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$resumeDownloadTaskInfoList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Z)V
    .locals 8

    .line 1
    const-string v0, "startDownload \u5c1d\u8bd5\u5f00\u59cb\u4e0b\u8f7d"

    .line 2
    .line 3
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "\u6682\u505c\u81ea\u52a8\u4e0b\u8f7d"

    .line 11
    .line 12
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->g:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p1, "\u6709\u5728\u4e0b\u8f7d\u7684\u4efb\u52a1"

    .line 21
    .line 22
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->O()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_e

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->c:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string p1, "\u77ed\u5267map\u4e3anull"

    .line 41
    .line 42
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    move-object v5, v1

    .line 97
    check-cast v5, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    cmp-long v3, v3, v5

    .line 104
    .line 105
    if-gez v3, :cond_3

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    if-nez v1, :cond_6

    .line 113
    .line 114
    const-string p1, "\u627e\u4e0d\u5230\u4efb\u52a1\u77ed\u5267"

    .line 115
    .line 116
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 121
    .line 122
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, 0x1

    .line 137
    if-le v2, v3, :cond_7

    .line 138
    .line 139
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$b;

    .line 140
    .line 141
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$b;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    const-string p1, "\u6240\u6709\u77ed\u5267\u90fd\u4e0b\u8f7d\u5b8c\u6210\u4e86"

    .line 154
    .line 155
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_8
    check-cast v0, Ljava/lang/Iterable;

    .line 160
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_a

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object v4, v2

    .line 181
    check-cast v4, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->isDownloadingItem()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_9

    .line 188
    .line 189
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_a
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_d

    .line 198
    .line 199
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_c

    .line 206
    .line 207
    if-nez p1, :cond_b

    .line 208
    .line 209
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 210
    .line 211
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->Z()V

    .line 212
    .line 213
    .line 214
    :cond_b
    const-string p1, "\u8ba2\u9605\u5df2\u8fc7\u671f\uff0c\u6682\u505c\u4e0b\u8f7d"

    .line 215
    .line 216
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_c
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 221
    .line 222
    new-instance v4, Luh/o;

    .line 223
    .line 224
    invoke-direct {v4, v1}, Luh/o;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 225
    .line 226
    .line 227
    const/4 v6, 0x4

    .line 228
    const/4 v7, 0x0

    .line 229
    const/4 v5, 0x0

    .line 230
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->y(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_d
    const-string p1, "\u627e\u4e0d\u5230\u53ef\u4e0b\u8f7d\u7684\u77ed\u5267"

    .line 235
    .line 236
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_e
    const-string p1, "\u6709\u4efb\u52a1\u5728\u4e0b\u8f7d\u4e2d\uff0c\u5ffd\u7565"

    .line 241
    .line 242
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :goto_2
    return-void
.end method

.method public final d0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;ILkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "shortTaskInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->Z()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    move-object v0, p2
    .line 19
    check-cast v0, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v2, v0

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p4

    .line 41
    move v6, p3

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILrs/c;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v4, v0

    .line 50
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 6

    .line 1
    invoke-static {}, Luh/h0;->e()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$updateRemainSize$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$updateRemainSize$1;-><init>(Lrs/c;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "\u7528\u6237\u5237\u65b0\uff1anew :"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " old:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, ""

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sget-object v0, Lud/b;->a:Lud/b;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lud/b;->f4(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sput-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    sget-object v0, Lud/b;->a:Lud/b;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lud/b;->f4(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->t()V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    const-string v0, "\u6e05\u9664\u6240\u6709\u4e0b\u8f7d\u4fe1\u606f"

    .line 2
    .line 3
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$clearAll$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$clearAll$1;-><init>(Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final v()V
    .locals 11

    .line 1
    const-string v0, "downloadNext\u4e0b\u8f7d\u4e0b\u4e00\u96c6"

    .line 2
    .line 3
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "\u6682\u505c\u4e0b\u8f7d\u4e0b\u4e00\u96c6"

    .line 11
    .line 12
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-boolean v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->g:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "\u6709\u5728\u6267\u884c\u7684\u4e0b\u8f7d\u4efb\u52a1"

    .line 21
    .line 22
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "\u5f53\u524d\u6ca1\u6709\u4e0b\u8f7d\u4efb\u52a1"

    .line 34
    .line 35
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    if-eqz v0, :cond_b

    .line 43
    .line 44
    sget-object v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-direct {v4, v5}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->C(I)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-le v5, v1, :cond_3

    .line 59
    .line 60
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$a;

    .line 61
    .line 62
    invoke-direct {v5}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$a;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    .line 69
    .line 70
    new-instance v6, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_5

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    move-object v8, v7

    .line 90
    check-cast v8, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 91
    .line 92
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->isDownloadingItem()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_4

    .line 97
    .line 98
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_7

    .line 107
    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->Z()V

    .line 119
    .line 120
    .line 121
    const-string v0, "\u8ba2\u9605\u5df2\u8fc7\u671f\uff0c\u6682\u505c\u4e0b\u8f7d"

    .line 122
    .line 123
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    sget-object v5, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 128
    .line 129
    new-instance v8, Luh/p;

    .line 130
    .line 131
    invoke-direct {v8}, Luh/p;-><init>()V

    .line 132
    .line 133
    .line 134
    const/4 v9, 0x2

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    invoke-static/range {v5 .. v10}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->y(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    instance-of v5, v4, Ljava/util/Collection;

    .line 142
    .line 143
    if-eqz v5, :cond_8

    .line 144
    .line 145
    move-object v5, v4

    .line 146
    check-cast v5, Ljava/util/Collection;

    .line 147
    .line 148
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_8

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_a

    .line 164
    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->hasUnFinishJob()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_9

    .line 176
    .line 177
    const-string v0, "\u5f53\u524d\u5267\u4e0b\u8f7d\u6ca1\u6709\u4e86\u53ef\u4ee5\u6267\u884c\u4e0b\u8f7d\u7684\u5267"

    .line 178
    .line 179
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sput-object v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_a
    :goto_1
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setHasUnfinishedJob(Z)V

    .line 186
    .line 187
    .line 188
    sget-object v4, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;

    .line 189
    .line 190
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->c(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 191
    .line 192
    .line 193
    sput-object v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 194
    .line 195
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 196
    .line 197
    invoke-static {v0, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;ZILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    const-string v0, "\u5f53\u524d\u5267\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5c1d\u8bd5\u4e0b\u8f7d\u4e0b\u4e00\u90e8\u5267"

    .line 201
    .line 202
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    :goto_2
    return-void
.end method
