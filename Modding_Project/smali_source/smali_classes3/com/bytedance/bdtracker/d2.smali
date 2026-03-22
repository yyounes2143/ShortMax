.class public Lcom/bytedance/bdtracker/d2;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p3, p3}, Lcom/bytedance/bdtracker/k1;-><init>(ZZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/d2;->e:Lcom/bytedance/bdtracker/p1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ServerId"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 9

    iget-object v0, p0, Lcom/bytedance/bdtracker/d2;->e:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "bd_did"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/bdtracker/d2;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v5}, Lcom/bytedance/bdtracker/p1;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v4}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ssid"

    invoke-static {p1, v1, v2}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    cmp-long v0, v7, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d2;->e:Lcom/bytedance/bdtracker/p1;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    move-wide v5, v7

    .line 5
    :goto_0
    invoke-virtual {p1, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
