.class public final Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "RechargeTipView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$a;,
        Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->f:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$a;

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
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_tip:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget v4, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_agreement:I

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "getString(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget v3, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_agreement:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    filled-new-array {v2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const v4, 0x106000b

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sget-object v4, Lyf/a;->a:Lyf/a;

    .line 60
    .line 61
    invoke-virtual {v4}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$c;

    .line 66
    .line 67
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)V

    .line 68
    .line 69
    .line 70
    filled-new-array {v5}, [Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$c;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const/16 v8, 0x30

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-static/range {v0 .. v9}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private final C()V
    .locals 2

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->restore_tip_viewstub:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewStub;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$id;->restore_tv:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->d:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_recharge_tip:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RechargeTipView"

    .line 2
    .line 3
    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljk/y;->b(Landroid/widget/TextView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;

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
    sget p1, Lcom/startshorts/androidplayer/R$id;->agreement_tv:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    return-void
.end method

.method public final z()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
