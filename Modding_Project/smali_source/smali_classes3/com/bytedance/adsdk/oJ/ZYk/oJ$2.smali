.class Lcom/bytedance/adsdk/oJ/ZYk/oJ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/oJ/ZYk/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;

.field final synthetic oJ:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ/ba;Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/oJ$2;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ/ba;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/oJ/ZYk/oJ$2;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/oJ/ZYk/oJ$2;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ/ba;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/oJ$2;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ/ba;->oJ(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/oJ/ZYk/tB/oJ;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
