.class Lcom/bytedance/adsdk/ZYk/jFA$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ZYk/jFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/adsdk/ZYk/jFA;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ZYk/jFA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA$1;->oJ:Lcom/bytedance/adsdk/ZYk/jFA;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA$1;->oJ:Lcom/bytedance/adsdk/ZYk/jFA;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Lcom/bytedance/adsdk/ZYk/jFA;)Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/jFA$1;->oJ:Lcom/bytedance/adsdk/ZYk/jFA;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/adsdk/ZYk/jFA;->oJ(Lcom/bytedance/adsdk/ZYk/jFA;)Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/jFA$1;->oJ:Lcom/bytedance/adsdk/ZYk/jFA;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/jFA;->ZYk(Lcom/bytedance/adsdk/ZYk/jFA;)Lcom/bytedance/adsdk/ZYk/ba/tB;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/ba/tB;->ba()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ZYk/tB/tB/ZYk;->oJ(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
