.class public Lcom/bytedance/sdk/component/cFZ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Pfn:J

.field final ZYk:Ljava/lang/String;

.field final ba:J

.field cFZ:Lcom/bytedance/sdk/component/ZYk/oJ/kkU;

.field final ex:Ljava/lang/String;

.field private final jFA:Z

.field private kkU:[B

.field final oJ:I

.field private so:Ljava/io/File;

.field final tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->so:Ljava/io/File;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->kkU:[B

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->jFA:Z

    .line 10
    .line 11
    iput p2, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->tB:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex:Ljava/lang/String;

    .line 18
    .line 19
    iput-wide p6, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn:J

    .line 20
    .line 21
    iput-wide p8, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->so:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->jFA:Z

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()Lcom/bytedance/sdk/component/ZYk/oJ/kkU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->cFZ:Lcom/bytedance/sdk/component/ZYk/oJ/kkU;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ:I

    return v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->cFZ:Lcom/bytedance/sdk/component/ZYk/oJ/kkU;

    return-void
.end method

.method public oJ(Ljava/io/File;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->so:Ljava/io/File;

    return-void
.end method

.method public oJ([B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->kkU:[B

    return-void
.end method

.method public tB()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk;->tB:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
