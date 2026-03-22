.class public final Lcom/bytedance/bdtracker/z1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/bdtracker/z1;->e:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/bdtracker/z1;->f:Lcom/bytedance/bdtracker/p1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Oaid"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/z1;->f:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v1, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/z1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/bdtracker/h5;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "oaid"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
