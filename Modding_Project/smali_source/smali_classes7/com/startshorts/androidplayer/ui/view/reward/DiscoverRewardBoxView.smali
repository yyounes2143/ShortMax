.class public Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "DiscoverRewardBoxView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$a;,
        Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

.field public d:Landroid/widget/ImageView;

.field private e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->g:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final A()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v4, p0, v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$loadTodayAllBonus$1;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v5, Luj/a;

    .line 10
    .line 11
    invoke-direct {v5}, Luj/a;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x5

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "queryQueryTodayBonusTotal"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final B(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->B(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMBoxIV()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_discover_reward_box:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMBoxIV()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mBoxIV"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMFrom()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mTipTV"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverRewardBoxView"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public setBubbleTextForAbTest()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->x()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x2b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->f:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final setMBoxIV(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->d:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method

.method public final setMFrom(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setMTipTV(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTotalBonus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->tip_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setMTipTV(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 15
    .line 16
    .line 17
    sget p1, Lcom/startshorts/androidplayer/R$id;->box_iv:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setMBoxIV(Landroid/widget/ImageView;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->y()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setBubbleTextForAbTest()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->A()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final w(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    float-to-int p1, p1

    .line 16
    return p1
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final z(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method
