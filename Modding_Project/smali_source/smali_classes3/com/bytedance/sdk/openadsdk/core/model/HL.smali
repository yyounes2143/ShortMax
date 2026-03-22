.class public Lcom/bytedance/sdk/openadsdk/core/model/HL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BTZ:Ljava/lang/String;

.field public Pfn:Lorg/json/JSONArray;

.field public PiB:Lcom/bytedance/sdk/openadsdk/core/QSm;

.field public ZYk:I

.field public ba:Z

.field public cFZ:Lorg/json/JSONObject;

.field public dLZ:Lcom/bytedance/sdk/openadsdk/core/model/nke;

.field public ex:I

.field public jFA:I
    .annotation build Lcom/bytedance/sdk/openadsdk/core/model/NetExtParams$RenderType;
    .end annotation
.end field

.field public final kkU:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field public final oJ:Ljava/lang/String;

.field public so:Lorg/json/JSONObject;

.field public tB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ZYk:I

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    .line 14
    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ex:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->Pfn:Lorg/json/JSONArray;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->cFZ:Lorg/json/JSONObject;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->so:Lorg/json/JSONObject;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 26
    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HL;->kkU:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 32
    .line 33
    return-void
.end method
