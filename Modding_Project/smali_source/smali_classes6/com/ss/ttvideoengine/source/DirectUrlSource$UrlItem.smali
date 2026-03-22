.class public Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
.super Ljava/lang/Object;
.source "DirectUrlSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/DirectUrlSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;
    }
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final encodeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playAuth:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final urlExpiredTime:J

.field private final urlExpires:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final urls:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$700(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$700(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urls:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$800(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpires:[Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$900(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpiredTime:J

    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$1000(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->cacheKey:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$1100(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->playAuth:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->access$1200(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->encodeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;Lcom/ss/ttvideoengine/source/DirectUrlSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpires:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1600(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->playAuth:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncodeType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayAuth()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->playAuth:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    return-object v0
.end method

.method public getUrlExpire()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpires:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return-object v0
.end method

.method public getUrlExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrlExpires()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpires:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "UrlItem{urls=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urls:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x27

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", urlExpires=\'"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->urlExpires:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", cacheKey=\'"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->cacheKey:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", playAuth=\'"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->playAuth:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", encodeType=\'"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->encodeType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x7d

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
