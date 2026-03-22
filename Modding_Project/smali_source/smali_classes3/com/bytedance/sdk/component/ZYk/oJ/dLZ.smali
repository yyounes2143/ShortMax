.class public abstract Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    }
.end annotation


# instance fields
.field public Pfn:Ljava/util/concurrent/TimeUnit;

.field public ZYk:J

.field public ba:J

.field public cFZ:Ljava/util/concurrent/TimeUnit;

.field public ex:J

.field public oJ:Ljava/util/List;
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
.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ZYk:J

    .line 7
    .line 8
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ex:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ex:J

    .line 11
    .line 12
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ba:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ba:J

    .line 15
    .line 16
    iget-object v0, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ:Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->tB:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->Pfn:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->cFZ:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;
.end method

.method public abstract oJ()Lcom/bytedance/sdk/component/ZYk/oJ/ex;
.end method
