.class public final Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "oJ"
.end annotation


# instance fields
.field public Pfn:Ljava/util/concurrent/TimeUnit;

.field public ZYk:J

.field public ba:J

.field public cFZ:Ljava/util/concurrent/TimeUnit;

.field public ex:J

.field public final oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ZYk/oJ/so;",
            ">;"
        }
    .end annotation
.end field

.field public tB:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 6
    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 8
    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 19
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 20
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 21
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 22
    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 23
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 24
    iput-object v2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    .line 25
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ZYk:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->tB:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 27
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ex:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 28
    iget-object v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->Pfn:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 29
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ba:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->cFZ:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 11
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 15
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public ZYk(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    return-object p0
.end method

.method public oJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 2
    iput-object p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/so;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    move-result-object v0

    return-object v0
.end method

.method public tB(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    return-object p0
.end method
