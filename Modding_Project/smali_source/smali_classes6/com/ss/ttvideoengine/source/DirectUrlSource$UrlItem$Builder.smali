.class public Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
.super Ljava/lang/Object;
.source "DirectUrlSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private encodeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playAuth:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private urlExpiredTime:J

.field private urlExpires:[Ljava/lang/String;

.field private urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$1300(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urls:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$1400(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpires:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$1500(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpiredTime:J

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$1600(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->cacheKey:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$1700(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->playAuth:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->access$600(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->encodeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->playAuth:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpires:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private static checkUrls([Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object p0, p0, v0

    .line 8
    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string/jumbo v0, "urls[0] = null"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string/jumbo v0, "urls is empty"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 35
    .line 36
    const-string/jumbo v0, "urls = null"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method


# virtual methods
.method public build()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->checkUrls([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;Lcom/ss/ttvideoengine/source/DirectUrlSource$1;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public setCacheKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncodeType(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayAuth(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->playAuth:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urls:[Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string/jumbo v0, "url = null"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setUrlExpire(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpires:[Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v0, "expire = null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method setUrlExpiredTime(J)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpiredTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrlExpires([Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urlExpires:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrls([Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->checkUrls([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->urls:[Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method
