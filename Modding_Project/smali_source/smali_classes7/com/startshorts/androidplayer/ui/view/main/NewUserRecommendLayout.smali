.class public final Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;
.super Landroid/widget/FrameLayout;
.source "NewUserRecommendLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewUserRecommendLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendLayout.kt\ncom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,148:1\n296#2:149\n296#2:150\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendLayout.kt\ncom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout\n*L\n38#1:149\n44#1:150\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 6
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lqj/f;

    invoke-direct {p2, p0}, Lqj/f;-><init>(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p1, Lqj/g;

    invoke-direct {p1, p0}, Lqj/g;-><init>(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->c(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->g(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->m(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->c:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->c:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide/16 v0, 0x258

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->f()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lud/b;->s4(J)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final m(J)V
    .locals 9

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p1, v0

    .line 5
    const/16 v0, 0xe10

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long v2, p1, v0

    .line 9
    .line 10
    rem-long/2addr p1, v0

    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    div-long v4, p1, v0

    .line 15
    .line 16
    rem-long/2addr p1, v0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-wide/16 v6, 0xa

    .line 23
    .line 24
    cmp-long v1, v2, v6

    .line 25
    .line 26
    const-string v8, "0"

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    cmp-long v2, v4, v6

    .line 42
    .line 43
    if-gez v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    cmp-long v1, p1, v6

    .line 55
    .line 56
    if-gez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private final n(J)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/32 v2, 0x5265c00

    .line 16
    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    invoke-virtual {p1, v0, v1}, Lud/b;->s4(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sub-long v2, p1, v0

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->f()V

    .line 32
    .line 33
    .line 34
    const-wide/16 p1, 0x3e8

    .line 35
    .line 36
    cmp-long p1, v2, p1

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v2, v3}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->m(J)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$b;

    .line 44
    .line 45
    invoke-direct {p1, v2, v3, p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$b;-><init>(JLcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->c:Landroid/os/CountDownTimer;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->i()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->d:Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/16 v1, 0xc1c

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->d:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->f1()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->f1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;->b()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->n(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->f()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;->a:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v0, v1

    .line 36
    sget-object v1, Lfk/v;->a:Lfk/v;

    .line 37
    .line 38
    invoke-virtual {v1}, Lfk/v;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    neg-float v0, v0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBinding;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-wide/16 v1, 0x258

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final setCallback(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;

    .line 2
    .line 3
    return-void
.end method
