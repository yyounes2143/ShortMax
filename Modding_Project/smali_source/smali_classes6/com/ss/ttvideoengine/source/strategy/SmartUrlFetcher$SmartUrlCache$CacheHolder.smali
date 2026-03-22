.class public Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;
.super Ljava/lang/Object;
.source "SmartUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheHolder"
.end annotation


# instance fields
.field private final expiredMS:J

.field private final result:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;J)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->result:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->expiredMS:J

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->expiredMS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->result:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 2
    .line 3
    return-object p0
.end method
