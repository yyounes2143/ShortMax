.class Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;
.super Ljava/lang/Object;
.source "SubInfoFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_beginToFetch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;

    .line 4
    .line 5
    iget v1, p2, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->access$202(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;I)I

    .line 8
    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_2

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->access$400(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;

    .line 22
    .line 23
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-void
.end method
