.class Lcom/ss/ttvideoengine/log/VideoEventBase$1;
.super Ljava/lang/Object;
.source "VideoEventBase.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TTNetworkStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/log/VideoEventBase;->registerNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccessChanged(III)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 8
    .line 9
    invoke-static {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventBase;->access$100(Lcom/ss/ttvideoengine/log/VideoEventBase;II)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    invoke-static {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventBase;->access$000(Lcom/ss/ttvideoengine/log/VideoEventBase;II)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
