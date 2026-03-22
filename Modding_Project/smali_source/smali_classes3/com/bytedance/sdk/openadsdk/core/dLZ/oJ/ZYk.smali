.class public abstract Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;
    }
.end annotation


# instance fields
.field public Pfn:I

.field protected final ZYk:Landroid/content/Context;

.field public ba:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

.field protected ex:D

.field public oJ:I

.field protected tB:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->tB:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->ex:D

    .line 10
    .line 11
    if-lez p3, :cond_0

    .line 12
    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    int-to-double v0, p2

    .line 16
    int-to-double v2, p3

    .line 17
    div-double/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->ex:D

    .line 19
    .line 20
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->so(Landroid/content/Context;)F

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v0, 0x0

    .line 25
    cmpl-float v0, p3, v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-lez p2, :cond_1

    .line 30
    .line 31
    int-to-float p2, p2

    .line 32
    div-float/2addr p2, p3

    .line 33
    float-to-int p2, p2

    .line 34
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->tB:I

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->ZYk:Landroid/content/Context;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public abstract oJ(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;"
        }
    .end annotation
.end method

.method protected oJ(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->oJ:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->oJ:I

    if-nez p1, :cond_1

    return-object v2

    .line 9
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->tB()Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk;->oJ(Ljava/lang/Exception;I)V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method protected oJ(Ljava/lang/Exception;I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string p1, "error_code"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object p1

    const-string p2, "load_vast"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected oJ(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catch_0
    return v1
.end method
