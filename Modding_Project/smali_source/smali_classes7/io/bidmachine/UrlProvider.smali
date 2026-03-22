.class public Lio/bidmachine/UrlProvider;
.super Ljava/lang/Object;
.source "UrlProvider.java"


# static fields
.field private static final AUCTION_URL_QUEUE:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEF_BASE_URL:Ljava/lang/String; = "https://api.bidmachine.io"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final DEF_BASE_URLS:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final INIT_URL_QUEUE:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH_AUCTION:Ljava/lang/String; = "auction"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final PATH_INIT:Ljava/lang/String; = "init"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final PATH_RTB:Ljava/lang/String; = "rtb"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final PATH_V3:Ljava/lang/String; = "v3"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static auctionUrlFromInit:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static auctionUrlFromSuccessRequest:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "https://x.blueduckredapple.com"

    .line 2
    .line 3
    const-string v1, "https://x.thecatmachine.com"

    .line 4
    .line 5
    const-string v2, "https://api.bidmachine.io"

    .line 6
    .line 7
    const-string v3, "https://x.everestop.io"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lio/bidmachine/UrlProvider;->DEF_BASE_URLS:[Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    .line 28
    .line 29
    invoke-static {}, Lio/bidmachine/UrlProvider;->setupUrls()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->lambda$setEndpoint$0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "auction"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "rtb"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "v3"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static createInitUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "auction"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "init"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method static getAuctionUrlQueue()Ljava/util/Queue;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/UrlProvider$1;

    .line 10
    .line 11
    invoke-direct {v0}, Lio/bidmachine/UrlProvider$1;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lio/bidmachine/UrlProvider$2;

    .line 24
    .line 25
    invoke-direct {v0}, Lio/bidmachine/UrlProvider$2;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    .line 31
    sget-object v1, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method static getInitUrlQueue()Ljava/util/Queue;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static synthetic lambda$setEndpoint$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Endpoint has an invalid format - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method static reset()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/UrlProvider;->setupUrls()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method static setAuctionUrl(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static declared-synchronized setAuctionUrlFromInit(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/bidmachine/UrlProvider;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sput-object p0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw p0
.end method

.method static setAuctionUrlFromSuccessRequest(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sput-object p0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method static setEndpoint(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lio/bidmachine/core/g;->O(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/bidmachine/u5;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lio/bidmachine/u5;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lio/bidmachine/j2;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "Can\'t change endpoint url after initialization"

    .line 27
    .line 28
    invoke-static {p0}, Lio/bidmachine/core/a;->g(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->createInitUrl(Landroid/net/Uri;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setInitUrl(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->setAuctionUrl(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static setInitUrl(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static setupAuctionUrls(Ljava/util/Collection;[Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lio/bidmachine/UrlProvider;->createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private static setupInitUrls(Ljava/util/Collection;[Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lio/bidmachine/UrlProvider;->createInitUrl(Landroid/net/Uri;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method static setupUrls()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/UrlProvider;->DEF_BASE_URLS:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/UrlProvider;->setupInitUrls(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lio/bidmachine/UrlProvider;->setupAuctionUrls(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
