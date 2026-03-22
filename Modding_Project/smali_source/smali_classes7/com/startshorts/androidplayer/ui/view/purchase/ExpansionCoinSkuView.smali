.class public Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;
.super Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;
.source "ExpansionCoinSkuView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:J

.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->n:J

    .line 12
    .line 13
    const-string p1, "ExpansionCoinSkuView"

    .line 14
    .line 15
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->o:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private static final B(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;I)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->getMCoinSku()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-long v1, p1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRetentionSeconds(J)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 16
    .line 17
    int-to-long v1, p1

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->m:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;->onExpired()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->C(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->B(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->z()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->n:J

    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/16 v5, 0x3e8

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->getMCoinSku()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-wide v2, v6

    .line 34
    :goto_0
    int-to-long v4, v5

    .line 35
    div-long/2addr v0, v4

    .line 36
    add-long/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->n:J

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    int-to-long v4, v5

    .line 41
    div-long/2addr v0, v4

    .line 42
    sub-long/2addr v2, v0

    .line 43
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "startCountDownJob -> "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x73

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    cmp-long v0, v2, v6

    .line 69
    .line 70
    if-gtz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->m:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;->onExpired()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 81
    .line 82
    long-to-int v1, v2

    .line 83
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/purchase/g;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/g;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/purchase/h;

    .line 89
    .line 90
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/h;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->l:Lkotlinx/coroutines/r;

    .line 98
    .line 99
    :cond_3
    :goto_2
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_coin_sku_expansion:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->m:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->m:Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->count_down_tv:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->l:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v0, "cancelCountDownJob"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView;->l:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method
