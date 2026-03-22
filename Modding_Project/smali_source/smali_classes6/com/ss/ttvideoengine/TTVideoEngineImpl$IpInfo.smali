.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpInfo"
.end annotation


# instance fields
.field public dns:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isDNSCacheOpen:I

.field public isServerDNSOpen:I

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

.field public urlDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->ip:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->dns:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->isDNSCacheOpen:I

    .line 11
    .line 12
    iput p5, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->isServerDNSOpen:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$IpInfo;->urlDesc:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
