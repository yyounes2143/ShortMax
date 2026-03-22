.class public Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
.super Ljava/lang/Object;
.source "TTVideoEngineUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlResult"
.end annotation


# instance fields
.field public final expireTimeInMS:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 7
    .line 8
    return-void
.end method

.method static dump(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
