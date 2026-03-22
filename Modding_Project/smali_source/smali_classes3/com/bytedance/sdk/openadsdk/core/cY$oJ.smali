.class public Lcom/bytedance/sdk/openadsdk/core/cY$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field final Pfn:Ljava/lang/String;

.field final ZYk:J

.field final ba:I

.field final cFZ:Ljava/lang/String;

.field final ex:I

.field final jFA:Ljava/lang/String;

.field final kkU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final oJ:I

.field public final so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final tB:J


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/oJ;JJLjava/util/ArrayList;)V
    .locals 0
    .param p7    # Lcom/bytedance/sdk/openadsdk/core/model/oJ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/oJ;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ:I

    .line 5
    .line 6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->Pfn:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->cFZ:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->jFA:Ljava/lang/String;

    .line 15
    .line 16
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ba:I

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ZYk:J

    .line 19
    .line 20
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->tB:J

    .line 21
    .line 22
    iput-object p12, p0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->kkU:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Lcom/bytedance/sdk/openadsdk/core/cY$oJ;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "did"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const-string v1, "processing_time_ms"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const-string v1, "s_receive_ts"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v10

    .line 20
    const-string v1, "s_send_ts"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v12

    .line 26
    const-string v1, "status_code"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v1, "desc"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v1, "request_id"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string v1, "reason"

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-static/range {p0 .. p2}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Landroid/util/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    move-object v2, v0

    .line 61
    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/oJ;JJLjava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;

    .line 66
    .line 67
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v9, v2

    .line 70
    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 71
    .line 72
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v14, v0

    .line 75
    check-cast v14, Ljava/util/ArrayList;

    .line 76
    .line 77
    move-object v2, v1

    .line 78
    invoke-direct/range {v2 .. v14}, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/oJ;JJLjava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method
