.class public Lcom/bytedance/bdtracker/c2;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# direct methods
.method public constructor <init>()V
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
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SensitiveLoader"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
