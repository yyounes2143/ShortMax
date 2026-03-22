.class public final Lcom/bytedance/bdtracker/l2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/bytedance/applog/aggregation/Metrics;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/m2;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/m2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/l2;->a:Lcom/bytedance/bdtracker/m2;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "list"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bytedance/applog/aggregation/Metrics;

    .line 28
    .line 29
    new-instance v2, Lcom/bytedance/bdtracker/i4;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/bytedance/bdtracker/i4;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/bytedance/bdtracker/l2;->a:Lcom/bytedance/bdtracker/m2;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/m2;)Lcom/bytedance/bdtracker/e0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/bytedance/bdtracker/l2;->a:Lcom/bytedance/bdtracker/m2;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/m2;)Lcom/bytedance/bdtracker/e0;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 49
    .line 50
    invoke-virtual {v3, v4, v2}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/bytedance/applog/aggregation/Metrics;->toParams()Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v2, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/l2;->a:Lcom/bytedance/bdtracker/m2;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/bytedance/bdtracker/m2;->a:Landroid/os/Handler;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/bytedance/bdtracker/l2;->a:Lcom/bytedance/bdtracker/m2;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/bytedance/bdtracker/m2;->a:Landroid/os/Handler;

    .line 78
    .line 79
    const/4 v0, 0x2

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1
.end method
