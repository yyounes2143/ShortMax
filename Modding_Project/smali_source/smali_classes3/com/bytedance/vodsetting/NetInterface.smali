.class public abstract Lcom/bytedance/vodsetting/NetInterface;
.super Ljava/lang/Object;
.source "NetInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vodsetting/NetInterface$CompletionListener;
    }
.end annotation


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
.method public cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/vodsetting/NetInterface$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method
