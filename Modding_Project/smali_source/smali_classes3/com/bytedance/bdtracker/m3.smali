.class public Lcom/bytedance/bdtracker/m3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/bytedance/bdtracker/o3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/o3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/m3;->b:Lcom/bytedance/bdtracker/o3;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/bdtracker/m3;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/m3;->b:Lcom/bytedance/bdtracker/o3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/o3;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/bytedance/bdtracker/m3;->a:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
