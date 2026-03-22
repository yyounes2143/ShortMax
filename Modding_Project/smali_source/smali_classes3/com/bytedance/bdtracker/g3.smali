.class public final Lcom/bytedance/bdtracker/g3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/oneid/IDBindCallback;

.field public final synthetic b:Lcom/bytedance/applog/oneid/IDBindResult;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/oneid/IDBindCallback;Lcom/bytedance/applog/oneid/IDBindResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/g3;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/g3;->b:Lcom/bytedance/applog/oneid/IDBindResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/g3;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/g3;->b:Lcom/bytedance/applog/oneid/IDBindResult;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/bytedance/applog/oneid/IDBindCallback;->onSuccess(Lcom/bytedance/applog/oneid/IDBindResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
