.class public Lcom/bytedance/bdtracker/y1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/bytedance/bdtracker/y1;->e:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Net"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->e:Landroid/content/Context;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/t4;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "access"

    .line 3
    invoke-static {p1, v2, v0}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
