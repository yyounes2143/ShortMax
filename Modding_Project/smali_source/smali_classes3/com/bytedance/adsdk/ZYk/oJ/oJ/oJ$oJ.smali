.class final Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;

.field private final oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/PiB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;->oJ:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;->ZYk:Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;-><init>(Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;->ZYk:Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ$oJ;->oJ:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
