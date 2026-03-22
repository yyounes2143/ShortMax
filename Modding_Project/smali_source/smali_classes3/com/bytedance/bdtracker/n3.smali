.class public Lcom/bytedance/bdtracker/n3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/o3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/n3;->a:Lcom/bytedance/bdtracker/o3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/n3;->a:Lcom/bytedance/bdtracker/o3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/o3;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
