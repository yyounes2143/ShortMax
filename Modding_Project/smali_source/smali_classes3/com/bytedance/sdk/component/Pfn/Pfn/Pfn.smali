.class public Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;
.super Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;
.source "SourceFile"


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

.field private oJ:[B


# direct methods
.method public constructor <init>([BLcom/bytedance/sdk/component/Pfn/ba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->oJ:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

    .line 7
    .line 8
    return-void
.end method

.method private oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

    if-nez v0, :cond_0

    .line 11
    new-instance p1, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/so;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/Pfn/so;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "decode"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;

    move-result-object v1

    const/16 v2, 0x3ea

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oq()Lcom/bytedance/sdk/component/Pfn/WcQ;

    .line 4
    iget-object v3, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->oJ:[B

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/Pfn/tB/ZYk/oJ;->oJ([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v3, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;

    iget-object v4, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/Pfn/ba;Z)V

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "decode failed bitmap null"

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decode failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/Pfn;->oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    return-void
.end method
