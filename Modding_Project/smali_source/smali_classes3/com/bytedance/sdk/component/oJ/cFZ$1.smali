.class Lcom/bytedance/sdk/component/oJ/cFZ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/oJ/ex$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/eZI;Lcom/bytedance/sdk/component/oJ/ex;Lcom/bytedance/sdk/component/oJ/ba;)Lcom/bytedance/sdk/component/oJ/cFZ$oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/oJ/ex;

.field final synthetic oJ:Lcom/bytedance/sdk/component/oJ/eZI;

.field final synthetic tB:Lcom/bytedance/sdk/component/oJ/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/oJ/cFZ;Lcom/bytedance/sdk/component/oJ/eZI;Lcom/bytedance/sdk/component/oJ/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->oJ:Lcom/bytedance/sdk/component/oJ/eZI;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->ZYk:Lcom/bytedance/sdk/component/oJ/ex;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/cFZ;)Lcom/bytedance/sdk/component/oJ/oJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/cFZ;)Lcom/bytedance/sdk/component/oJ/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {v1}, Lcom/bytedance/sdk/component/oJ/cFZ;->ZYk(Lcom/bytedance/sdk/component/oJ/cFZ;)Lcom/bytedance/sdk/component/oJ/so;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/oJ/so;->oJ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/oJ/jr;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->oJ:Lcom/bytedance/sdk/component/oJ/eZI;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/oJ/oJ;->ZYk(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/eZI;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/oJ/cFZ;->tB(Lcom/bytedance/sdk/component/oJ/cFZ;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->ZYk:Lcom/bytedance/sdk/component/oJ/ex;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/cFZ;)Lcom/bytedance/sdk/component/oJ/oJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/cFZ;)Lcom/bytedance/sdk/component/oJ/oJ;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/oJ/jr;->oJ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->oJ:Lcom/bytedance/sdk/component/oJ/eZI;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/oJ/oJ;->ZYk(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/eZI;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->tB:Lcom/bytedance/sdk/component/oJ/cFZ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/oJ/cFZ;->tB(Lcom/bytedance/sdk/component/oJ/cFZ;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/oJ/cFZ$1;->ZYk:Lcom/bytedance/sdk/component/oJ/ex;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
