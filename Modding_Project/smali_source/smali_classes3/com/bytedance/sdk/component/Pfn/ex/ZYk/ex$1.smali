.class Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;[BLcom/bytedance/sdk/component/Pfn/ex/tB/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;

.field final synthetic ex:Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;

.field final synthetic oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

.field final synthetic tB:[B


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->ex:Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->ZYk:Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->tB:[B

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "decode webp animate fail"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

    new-instance v1, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->ZYk:Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    return-void
.end method

.method public oJ([B)V
    .locals 4

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->tB:[B

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ba;->oJ([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->ex:Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;

    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->ZYk:Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->tB:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex;Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;[BZLcom/bytedance/sdk/component/Pfn/ex/tB/oJ;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ex$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "webp animated not image format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e9

    const-string v2, "result type is webp animated but data not image"

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
