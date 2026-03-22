.class Lcom/bytedance/sdk/openadsdk/ex/BTZ$2$1;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/BTZ$2$1;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/settings/cFZ;->ZYk:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/BTZ$2$1;->oJ:Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;->tB:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;->ZYk:I

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/ex/BTZ$2;->oJ:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/BTZ;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    const-string p2, "LandingPageLog"

    const-string v0, "TTWebViewClient : onPageFinished"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method
