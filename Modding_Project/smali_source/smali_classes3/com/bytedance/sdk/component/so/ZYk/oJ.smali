.class public Lcom/bytedance/sdk/component/so/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ZYk:I

.field public ex:I

.field public oJ:I

.field public tB:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->oJ:I

    .line 5
    .line 6
    iput p2, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->ZYk:I

    .line 7
    .line 8
    iput p3, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->tB:I

    .line 9
    .line 10
    iput p4, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->ex:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "sdk_thread_num"

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->oJ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "sdk_max_thread_num"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->ZYk:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "app_thread_num"

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->tB:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "app_max_thread_num"

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/sdk/component/so/ZYk/oJ;->ex:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    return-object v0
.end method
