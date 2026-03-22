.class public abstract Lcom/bytedance/sdk/component/so/tB/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/component/so/tB/ZYk;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private Pfn:J

.field private ZYk:Ljava/lang/String;

.field private ba:J

.field private ex:J

.field private oJ:I

.field private tB:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ:I

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ:I

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ:I

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ZYk:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->tB:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public Pfn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ba:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->Pfn:J

    return-void
.end method

.method public ba()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->tB:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/component/so/tB/ZYk;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ(Lcom/bytedance/sdk/component/so/tB/ZYk;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->Pfn:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ:I

    return v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/so/tB/ZYk;)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ()I

    move-result p1

    if-lt v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->oJ:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ex:J

    return-void
.end method

.method public tB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ex:J

    return-wide v0
.end method

.method public tB(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/component/so/tB/ZYk;->ba:J

    return-void
.end method
