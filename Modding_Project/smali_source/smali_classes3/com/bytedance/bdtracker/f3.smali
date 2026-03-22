.class public final Lcom/bytedance/bdtracker/f3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/oneid/IDBindCallback;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/f3;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/bdtracker/f3;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/bdtracker/f3;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/f3;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/bdtracker/f3;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/bdtracker/f3;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/oneid/IDBindCallback;->onFail(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
