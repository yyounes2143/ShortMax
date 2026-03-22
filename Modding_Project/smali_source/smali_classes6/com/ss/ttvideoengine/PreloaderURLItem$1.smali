.class Lcom/ss/ttvideoengine/PreloaderURLItem$1;
.super Ljava/lang/Object;
.source "PreloaderURLItem.java"

# interfaces
.implements Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PreloadSourceSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/PreloaderURLItem;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V
    .locals 0
    .param p3    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PreloadSourceSetter;->setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getCacheKey()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-static {p1, p3}, Lcom/ss/ttvideoengine/PreloaderURLItem;->access$002(Lcom/ss/ttvideoengine/PreloaderURLItem;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrls()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-static {p1, p3}, Lcom/ss/ttvideoengine/PreloaderURLItem;->access$102(Lcom/ss/ttvideoengine/PreloaderURLItem;[Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem$1;->this$0:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrlExpires()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/PreloaderURLItem;->access$202(Lcom/ss/ttvideoengine/PreloaderURLItem;[Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    return-void
.end method
