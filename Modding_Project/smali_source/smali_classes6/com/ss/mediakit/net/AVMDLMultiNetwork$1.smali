.class final Lcom/ss/mediakit/net/AVMDLMultiNetwork$1;
.super Ljava/lang/Object;
.source "AVMDLMultiNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/mediakit/net/AVMDLMultiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->refreshIpReachable()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const-wide/32 v1, 0xea60

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
