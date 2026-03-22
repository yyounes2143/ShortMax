.class public final Lcom/bytedance/bdtracker/x0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/x0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/x0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/x0$a;->a:Lcom/bytedance/bdtracker/x0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/x0$a;->a:Lcom/bytedance/bdtracker/x0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/x0;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/bdtracker/x0$a;->a:Lcom/bytedance/bdtracker/x0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/bytedance/bdtracker/x0;->b:Z

    .line 12
    .line 13
    return-void
.end method
