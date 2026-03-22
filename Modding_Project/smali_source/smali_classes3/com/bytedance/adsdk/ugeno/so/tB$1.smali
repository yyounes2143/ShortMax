.class Lcom/bytedance/adsdk/ugeno/so/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/so/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;

    .line 2
    .line 3
    check-cast p2, Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/so/tB$1;->oJ(Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;->ZYk:I

    .line 2
    .line 3
    iget p2, p2, Lcom/bytedance/adsdk/ugeno/so/tB$ZYk;->ZYk:I

    .line 4
    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method
