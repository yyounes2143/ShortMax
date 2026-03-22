.class public final Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ProfileSubsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$a;,
        Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProfileSubsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileSubsView.kt\ncom/startshorts/androidplayer/ui/view/subs/ProfileSubsView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,335:1\n470#2:336\n470#2:337\n*S KotlinDebug\n*F\n+ 1 ProfileSubsView.kt\ncom/startshorts/androidplayer/ui/view/subs/ProfileSubsView\n*L\n209#1:336\n210#1:337\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->r:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$a;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->i:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final B()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    move-object v5, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    const/16 v6, 0xc

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v1, "profile"

    .line 19
    .line 20
    const-string v2, "sub_portal"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final C()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    move-object v4, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "profile"

    .line 18
    .line 19
    const-string v2, "sub_portal"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->k0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final E(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;I)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->H(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final F(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final H(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->z()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->l:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->l:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->k:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_3
    :goto_0
    return-void
.end method

.method private final I(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 6
    .line 7
    sget v2, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, v2, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->j:Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->i:Landroid/view/View;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->E(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->F(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->k:Landroid/view/View;

    .line 7
    .line 8
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->C0()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q0()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v8, "refresh -> hasSubscribed("

    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v8, ") subsType("

    .line 35
    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v8, ") subsEndTime("

    .line 43
    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v8, 0x29

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object v7, v8

    .line 73
    :goto_0
    const-string v9, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 74
    .line 75
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 79
    .line 80
    const/4 v11, 0x1

    .line 81
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    .line 83
    const/4 v10, 0x2

    .line 84
    const/4 v12, 0x0

    .line 85
    if-nez v4, :cond_c

    .line 86
    .line 87
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->f:Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_default_title:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_subscribe_vip_no:I

    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v2, v9}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    add-int/2addr v4, v2

    .line 163
    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 167
    .line 168
    if-eqz v2, :cond_5

    .line 169
    .line 170
    invoke-virtual {v2, v1, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    const/high16 v2, 0x41200000    # 10.0f

    .line 178
    .line 179
    invoke-virtual {v1, v10, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 180
    .line 181
    .line 182
    :cond_6
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 183
    .line 184
    if-eqz v1, :cond_7

    .line 185
    .line 186
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 187
    .line 188
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_profile_fragment_subs_content:I

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Lfk/u;->a(I)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    .line 196
    .line 197
    :cond_7
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 198
    .line 199
    if-eqz v1, :cond_8

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_subscription_desc:I

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const/high16 v2, 0x42000000    # 32.0f

    .line 219
    .line 220
    invoke-static {v1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 228
    .line 229
    if-eqz v1, :cond_9

    .line 230
    .line 231
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    :cond_9
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->d:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 235
    .line 236
    if-eqz v1, :cond_a

    .line 237
    .line 238
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 242
    .line 243
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_profile_subscription_view_pay_text_start:I

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Lfk/u;->a(I)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    sget v4, Lcom/startshorts/androidplayer/R$color;->color_profile_subscription_view_pay_text_end:I

    .line 250
    .line 251
    invoke-virtual {v2, v4}, Lfk/u;->a(I)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 256
    .line 257
    .line 258
    :cond_a
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_profile_subscription_view_bottom_unsubs2:I

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->J(I)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->g:Landroid/view/View;

    .line 264
    .line 265
    if-eqz v1, :cond_b

    .line 266
    .line 267
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->bg_profile_subscription_view2:I

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    .line 271
    .line 272
    :cond_b
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->h:Landroid/view/View;

    .line 273
    .line 274
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_c
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->d:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 280
    .line 281
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->G0()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_shortmax_member:I

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_d
    if-eq v3, v11, :cond_14

    .line 303
    .line 304
    if-eq v3, v10, :cond_13

    .line 305
    .line 306
    const/4 v1, 0x4

    .line 307
    if-eq v3, v1, :cond_12

    .line 308
    .line 309
    const/4 v1, 0x5

    .line 310
    if-eq v3, v1, :cond_10

    .line 311
    .line 312
    const/4 v1, 0x6

    .line 313
    if-eq v3, v1, :cond_f

    .line 314
    .line 315
    const/4 v1, 0x7

    .line 316
    if-eq v3, v1, :cond_e

    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_unsupport_product:I

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    goto :goto_1

    .line 329
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card:I

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    goto :goto_1

    .line 340
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card:I

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    goto :goto_1

    .line 351
    :cond_10
    if-eqz v2, :cond_11

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_trial_card:I

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    goto :goto_1

    .line 364
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card:I

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    goto :goto_1

    .line 375
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_card:I

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    goto :goto_1

    .line 386
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_card:I

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    goto :goto_1

    .line 397
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_card:I

    .line 402
    .line 403
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->f:Landroid/widget/ImageView;

    .line 411
    .line 412
    if-eqz v2, :cond_15

    .line 413
    .line 414
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    :cond_15
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 418
    .line 419
    if-eqz v2, :cond_16

    .line 420
    .line 421
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    if-eqz v2, :cond_16

    .line 426
    .line 427
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    :goto_2
    move/from16 v16, v2

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_16
    const/4 v2, 0x0

    .line 435
    goto :goto_2

    .line 436
    :goto_3
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 437
    .line 438
    const-string v3, "#CD9057"

    .line 439
    .line 440
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    const-string v4, "#652100"

    .line 445
    .line 446
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    filled-new-array {v3, v4}, [I

    .line 451
    .line 452
    .line 453
    move-result-object v18

    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 457
    .line 458
    const/4 v14, 0x0

    .line 459
    const/4 v15, 0x0

    .line 460
    const/16 v17, 0x0

    .line 461
    .line 462
    move-object v13, v2

    .line 463
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 464
    .line 465
    .line 466
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 467
    .line 468
    if-eqz v3, :cond_17

    .line 469
    .line 470
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    if-eqz v3, :cond_17

    .line 475
    .line 476
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 477
    .line 478
    .line 479
    :cond_17
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 480
    .line 481
    if-eqz v2, :cond_18

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    .line 485
    .line 486
    :cond_18
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 487
    .line 488
    if-eqz v1, :cond_19

    .line 489
    .line 490
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 491
    .line 492
    .line 493
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_subscribe_vip:I

    .line 498
    .line 499
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    if-eqz v1, :cond_1a

    .line 504
    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-static {v2, v9}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    add-int/2addr v4, v2

    .line 522
    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 523
    .line 524
    .line 525
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 526
    .line 527
    if-eqz v2, :cond_1a

    .line 528
    .line 529
    invoke-virtual {v2, v1, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 530
    .line 531
    .line 532
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    const/high16 v2, 0x40e00000    # 7.0f

    .line 537
    .line 538
    invoke-static {v1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 543
    .line 544
    .line 545
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 546
    .line 547
    if-eqz v1, :cond_1b

    .line 548
    .line 549
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .line 551
    .line 552
    :cond_1b
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 553
    .line 554
    if-eqz v1, :cond_1c

    .line 555
    .line 556
    const/high16 v2, 0x41400000    # 12.0f

    .line 557
    .line 558
    invoke-virtual {v1, v10, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 559
    .line 560
    .line 561
    :cond_1c
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 562
    .line 563
    if-eqz v1, :cond_1d

    .line 564
    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_expire_time:I

    .line 570
    .line 571
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 572
    .line 573
    sget-object v7, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 574
    .line 575
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    const/4 v9, 0x4

    .line 580
    const/4 v10, 0x0

    .line 581
    const/4 v8, 0x0

    .line 582
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    :cond_1d
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 598
    .line 599
    if-eqz v1, :cond_1e

    .line 600
    .line 601
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 602
    .line 603
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_profile_fragment_subs_content_subs:I

    .line 604
    .line 605
    invoke-virtual {v2, v3}, Lfk/u;->a(I)I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    .line 611
    .line 612
    :cond_1e
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_profile_subscription_view_bottom:I

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->J(I)V

    .line 615
    .line 616
    .line 617
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->g:Landroid/view/View;

    .line 618
    .line 619
    if-eqz v1, :cond_1f

    .line 620
    .line 621
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->bg_profile_subscription_data:I

    .line 622
    .line 623
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 624
    .line 625
    .line 626
    :cond_1f
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->h:Landroid/view/View;

    .line 627
    .line 628
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 629
    .line 630
    .line 631
    :goto_4
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 632
    .line 633
    if-nez v1, :cond_21

    .line 634
    .line 635
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->m:Lkotlinx/coroutines/r;

    .line 636
    .line 637
    if-eqz v1, :cond_20

    .line 638
    .line 639
    invoke-interface {v1}, Lkotlinx/coroutines/r;->isActive()Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    if-ne v1, v11, :cond_20

    .line 644
    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->y()V

    .line 646
    .line 647
    .line 648
    :cond_20
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->i:Landroid/view/View;

    .line 649
    .line 650
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :cond_21
    if-eqz v1, :cond_26

    .line 655
    .line 656
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    const-wide/16 v3, 0x0

    .line 661
    .line 662
    if-eqz v2, :cond_22

    .line 663
    .line 664
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 665
    .line 666
    .line 667
    move-result-wide v5

    .line 668
    goto :goto_5

    .line 669
    :cond_22
    move-wide v5, v3

    .line 670
    :goto_5
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 671
    .line 672
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 673
    .line 674
    .line 675
    move-result-wide v7

    .line 676
    sub-long/2addr v5, v7

    .line 677
    const/16 v2, 0x3e8

    .line 678
    .line 679
    int-to-long v7, v2

    .line 680
    div-long/2addr v5, v7

    .line 681
    cmp-long v2, v5, v3

    .line 682
    .line 683
    if-lez v2, :cond_23

    .line 684
    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->y()V

    .line 686
    .line 687
    .line 688
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 689
    .line 690
    long-to-int v3, v5

    .line 691
    new-instance v4, Lck/a;

    .line 692
    .line 693
    invoke-direct {v4, v0}, Lck/a;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)V

    .line 694
    .line 695
    .line 696
    new-instance v5, Lck/b;

    .line 697
    .line 698
    invoke-direct {v5, v0}, Lck/b;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2, v3, v4, v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    iput-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->m:Lkotlinx/coroutines/r;

    .line 706
    .line 707
    goto :goto_6

    .line 708
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->z()V

    .line 709
    .line 710
    .line 711
    :goto_6
    invoke-static {v1}, Ljk/u;->a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 716
    .line 717
    invoke-virtual {v3, v1}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    if-lez v2, :cond_25

    .line 722
    .line 723
    if-eqz v1, :cond_24

    .line 724
    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->z()V

    .line 726
    .line 727
    .line 728
    :cond_24
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->I(I)V

    .line 729
    .line 730
    .line 731
    goto :goto_7

    .line 732
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->A()V

    .line 733
    .line 734
    .line 735
    :cond_26
    :goto_7
    return-void
.end method

.method public final G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->D()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->p:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->C()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->p:Ljava/lang/String;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final J(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_profile_subs:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->n:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMOnDiscountCountdownFinish()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ProfileSubsView"

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->n:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setMOnDiscountCountdownFinish(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->q:Lkotlin/jvm/functions/Function0;

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
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->goBtn:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->d:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$id;->bottom_iv:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->e:Landroid/widget/ImageView;

    .line 45
    .line 46
    sget p1, Lcom/startshorts/androidplayer/R$id;->ivDate:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->f:Landroid/widget/ImageView;

    .line 55
    .line 56
    sget p1, Lcom/startshorts/androidplayer/R$id;->viewBg:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->g:Landroid/view/View;

    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/R$id;->unsubscribe_membership_benefits:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->h:Landroid/view/View;

    .line 71
    .line 72
    sget p1, Lcom/startshorts/androidplayer/R$id;->discountRootView:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->i:Landroid/view/View;

    .line 79
    .line 80
    sget p1, Lcom/startshorts/androidplayer/R$id;->discountTv:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->j:Landroid/widget/TextView;

    .line 89
    .line 90
    sget p1, Lcom/startshorts/androidplayer/R$id;->discountDriver:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->k:Landroid/view/View;

    .line 97
    .line 98
    sget p1, Lcom/startshorts/androidplayer/R$id;->discountCountdownTv:I

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->l:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$c;

    .line 113
    .line 114
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->m:Lkotlinx/coroutines/r;

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
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->m:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method
