.class public Lcom/bytedance/sdk/component/Pfn/tB/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/dLZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/Pfn/dLZ;"
    }
.end annotation


# instance fields
.field private Pfn:I

.field private ZYk:Ljava/lang/String;

.field private ba:I

.field private cFZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dLZ:I

.field private ex:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private jFA:Z

.field private kkU:Lcom/bytedance/sdk/component/Pfn/cFZ;

.field private oJ:Ljava/lang/String;

.field private so:Z

.field private tB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->so:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->tB:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->jFA:Z

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->dLZ:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->cFZ:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/Object;)Lcom/bytedance/sdk/component/Pfn/tB/ex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/Pfn/tB/tB;",
            "TT;)",
            "Lcom/bytedance/sdk/component/Pfn/tB/ex;"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->tB:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->oJ:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->ZYk:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->Pfn:I

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tB()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->ba:I

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->awB()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->jFA:Z

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->eZI()Lcom/bytedance/sdk/component/Pfn/cFZ;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->kkU:Lcom/bytedance/sdk/component/Pfn/cFZ;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->si()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->dLZ:I

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/Pfn/tB/ex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/Pfn/tB/tB;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/Pfn/tB/ex;"
        }
    .end annotation

    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->cFZ:Ljava/util/Map;

    .line 10
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->so:Z

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/tB/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/Object;)Lcom/bytedance/sdk/component/Pfn/tB/ex;

    move-result-object p1

    return-object p1
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(Ljava/lang/Object;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->tB:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->ex:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->tB:Ljava/lang/Object;

    return-void
.end method

.method public tB()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/ex;->ex:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
