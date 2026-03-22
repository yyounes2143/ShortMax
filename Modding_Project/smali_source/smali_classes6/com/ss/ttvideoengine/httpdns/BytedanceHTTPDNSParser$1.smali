.class Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;
.super Ljava/lang/Object;
.source "BytedanceHTTPDNSParser.java"

# interfaces
.implements Lcom/bytedancehttpdns/httpdns/IHttpDnsDepend;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->setHttpDnsDepend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getHttpdnsAccountID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getHttpdnsAccountID()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getHttpdnsSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getHttpdnsSecretKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getHttpdnsTemporaryKeyTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getHttpdnsTemporaryKeyTimeStamp()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method public getPreloadDomains()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->getPreloadDomains()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method public isTemporaryAuthentication()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;->this$0:Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;->isTemporaryAuthentication()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method
