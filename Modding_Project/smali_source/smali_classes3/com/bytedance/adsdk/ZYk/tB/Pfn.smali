.class public Lcom/bytedance/adsdk/ZYk/tB/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final oJ:Lcom/bytedance/adsdk/ZYk/tB/Pfn;


# instance fields
.field private final ZYk:Lcom/bytedance/adsdk/ZYk/WcQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/WcQ<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/cFZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/adsdk/ZYk/tB/Pfn;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;->oJ:Lcom/bytedance/adsdk/ZYk/tB/Pfn;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/ZYk/WcQ;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ZYk/WcQ;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;->ZYk:Lcom/bytedance/adsdk/ZYk/WcQ;

    .line 12
    .line 13
    return-void
.end method

.method public static oJ()Lcom/bytedance/adsdk/ZYk/tB/Pfn;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;->oJ:Lcom/bytedance/adsdk/ZYk/tB/Pfn;

    return-object v0
.end method


# virtual methods
.method public oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/cFZ;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;->ZYk:Lcom/bytedance/adsdk/ZYk/WcQ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ZYk/cFZ;

    return-object p1
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/cFZ;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/Pfn;->ZYk:Lcom/bytedance/adsdk/ZYk/WcQ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
