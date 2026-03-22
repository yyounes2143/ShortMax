.class Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;)Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-long v0, p1

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->ZYk(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    cmp-long p1, v0, v2

    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ$2;->oJ:Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;)Ljava/util/HashSet;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method
