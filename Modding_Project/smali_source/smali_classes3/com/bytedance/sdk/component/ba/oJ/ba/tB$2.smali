.class Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;
.super Lcom/bytedance/sdk/component/ba/oJ/Pfn/Pfn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ba/oJ/ba/tB;->oJ(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Z

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Lcom/bytedance/sdk/component/ba/oJ/ba/tB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/ba/oJ/ba/tB;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->tB:Lcom/bytedance/sdk/component/ba/oJ/ba/tB;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->ZYk:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ba/oJ/Pfn/Pfn;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->tB:Lcom/bytedance/sdk/component/ba/oJ/ba/tB;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/ba/oJ/ba/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ba/tB;)Lcom/bytedance/sdk/component/ba/oJ/ba/Pfn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ba/Pfn;->oJ()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->tB:Lcom/bytedance/sdk/component/ba/oJ/ba/tB;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->oJ:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/tB$2;->ZYk:Z

    .line 16
    .line 17
    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/ba/oJ/ba/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ba/tB;Ljava/util/List;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
