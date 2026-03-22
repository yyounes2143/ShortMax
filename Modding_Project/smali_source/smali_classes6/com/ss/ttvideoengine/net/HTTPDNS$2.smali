.class Lcom/ss/ttvideoengine/net/HTTPDNS$2;
.super Ljava/lang/Object;
.source "HTTPDNS.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/net/HTTPDNS;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/net/HTTPDNS;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/net/HTTPDNS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/HTTPDNS$2;->this$0:Lcom/ss/ttvideoengine/net/HTTPDNS;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/HTTPDNS$2;->this$0:Lcom/ss/ttvideoengine/net/HTTPDNS;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/ss/ttvideoengine/net/HTTPDNS;->access$000(Lcom/ss/ttvideoengine/net/HTTPDNS;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
