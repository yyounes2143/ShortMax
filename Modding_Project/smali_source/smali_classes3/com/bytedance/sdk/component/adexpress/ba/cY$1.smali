.class Lcom/bytedance/sdk/component/adexpress/ba/cY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/ba/cY;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/component/adexpress/ba/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/ba/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/cY$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/cY;

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
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ba/cY$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/cY;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/ba/cY;->oJ(Lcom/bytedance/sdk/component/adexpress/ba/cY;I)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ba/cY$1;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/cY;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ba/cY;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
