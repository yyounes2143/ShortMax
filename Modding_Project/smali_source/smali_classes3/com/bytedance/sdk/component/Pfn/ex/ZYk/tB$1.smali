.class Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB;->ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB;

.field final synthetic ZYk:Lcom/bytedance/sdk/component/Pfn/ZYk;

.field final synthetic ex:[B

.field final synthetic oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB;Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ZYk;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->Pfn:Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->ZYk:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->ex:[B

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->ZYk:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->tB:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/tB$1;->ex:[B

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
