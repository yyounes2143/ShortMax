.class public final Lcom/bytedance/bdtracker/n1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/p1;)V
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
    iput-object p1, p0, Lcom/bytedance/bdtracker/n1;->e:Lcom/bytedance/bdtracker/p1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cdid"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/n1;->e:Lcom/bytedance/bdtracker/p1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/h5;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cdid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
