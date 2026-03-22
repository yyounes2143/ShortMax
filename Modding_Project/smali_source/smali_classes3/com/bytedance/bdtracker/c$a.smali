.class public Lcom/bytedance/bdtracker/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/c;->a(Lcom/bytedance/bdtracker/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/c;Lcom/bytedance/bdtracker/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/bdtracker/c$a;->a:Lcom/bytedance/bdtracker/d;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c$a;->a:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    const-string v1, "getConfig"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/p1;->r:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v1, "enter_background_not_send"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c$a;->a:Lcom/bytedance/bdtracker/d;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->flush()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_1
    return-void
.end method
