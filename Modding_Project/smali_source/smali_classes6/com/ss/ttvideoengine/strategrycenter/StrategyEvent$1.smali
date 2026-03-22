.class Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;
.super Ljava/util/HashMap;
.source "StrategyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->event(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$key:I

.field final synthetic val$logInfo:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->val$id:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->val$key:I

    .line 6
    .line 7
    iput p4, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->val$value:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->val$logInfo:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;->val$e:Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p1, "id"

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "key"

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string/jumbo p2, "value"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p1, "logInfo"

    .line 41
    .line 42
    invoke-virtual {p0, p1, p5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string/jumbo p1, "throwable"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-void
.end method
