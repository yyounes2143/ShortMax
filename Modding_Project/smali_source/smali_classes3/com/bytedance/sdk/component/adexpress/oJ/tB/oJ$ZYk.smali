.class public Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZYk"
.end annotation


# instance fields
.field private ZYk:Ljava/lang/String;

.field private oJ:Ljava/lang/String;

.field private tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
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

.method static synthetic ZYk(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->ZYk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->oJ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public ZYk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->tB:Ljava/util/List;

    return-object v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->tB:Ljava/util/List;

    return-void
.end method
