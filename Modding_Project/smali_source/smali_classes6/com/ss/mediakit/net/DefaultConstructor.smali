.class public Lcom/ss/mediakit/net/DefaultConstructor;
.super Ljava/lang/Object;
.source "DefaultConstructor.java"

# interfaces
.implements Lcom/ss/mediakit/net/CreateConstructor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createDns(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;ILandroid/os/Handler;)Lcom/ss/mediakit/net/BaseDNS;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/ss/mediakit/net/HTTPDNS;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ss/mediakit/net/HTTPDNS;-><init>(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;ILandroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method
