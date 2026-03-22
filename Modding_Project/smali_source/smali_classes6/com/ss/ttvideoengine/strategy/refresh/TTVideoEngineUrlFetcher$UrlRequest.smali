.class public Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
.super Ljava/lang/Object;
.source "TTVideoEngineUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlRequest"
.end annotation


# instance fields
.field public final cacheKey:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static dump(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;
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
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
