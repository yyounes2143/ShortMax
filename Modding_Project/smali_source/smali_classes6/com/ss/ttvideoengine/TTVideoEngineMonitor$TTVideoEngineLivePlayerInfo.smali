.class public final Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;
.super Ljava/lang/Object;
.source "TTVideoEngineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TTVideoEngineLivePlayerInfo"
.end annotation


# instance fields
.field public mSubTag:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mTag:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mSubTag:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
