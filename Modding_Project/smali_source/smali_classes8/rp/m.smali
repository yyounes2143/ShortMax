.class public final Lrp/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrp/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/internal/state/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/ad/view/AdView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lrp/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrq/b;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/b;
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
    const-string v0, "adParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lnq/b;

    .line 15
    .line 16
    const-string v1, "FullScreenAd"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lnq/b;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 22
    .line 23
    new-instance v0, Lio/bidmachine/rendering/ad/view/AdView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "context.applicationContext"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1, p2}, Lio/bidmachine/rendering/ad/view/AdView;-><init>(Landroid/content/Context;Lrq/b;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic A(Lrp/m;Lrq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrp/m;->r(Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrp/m;->m(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->b(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lrp/i;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lrp/i;-><init>(Lrp/m;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final E(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final F(Lrp/m;Lrq/t;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->g(Ljava/lang/Object;Lrq/t;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->e()Z

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrp/f;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lrp/f;-><init>(Lrp/m;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final H(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->b(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lrp/d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lrp/d;-><init>(Lrp/m;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final J(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lrp/j;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lrp/j;-><init>(Lrp/m;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final N(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->j(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lrp/b;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lrp/b;-><init>(Lrp/m;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final P(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->onAdLoaded(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lrp/h;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lrp/h;-><init>(Lrp/m;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final R(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lrp/c;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lrp/c;-><init>(Lrp/m;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->J(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->N(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->E(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->H(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lrp/m;Lrq/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrp/m;->F(Lrp/m;Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lrp/m;Lrq/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrp/m;->q(Lrp/m;Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrp/m;->o(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->P(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->n(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lrp/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrp/m;->R(Lrp/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lrp/m;Lrq/n;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrp/m;->p(Lrp/m;Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrp/m;->S()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lyq/p;->e(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrp/m;->L()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final m(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1

    .line 1
    new-instance v0, Lrp/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lrp/l;-><init>(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final n(Lrp/m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->d(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final o(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$privacySheetParams"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->e(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final p(Lrp/m;Lrq/n;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$brokenCreativeEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->f(Ljava/lang/Object;Lrq/n;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final q(Lrp/m;Lrq/t;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrp/m;->c:Lrp/n;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->h(Ljava/lang/Object;Lrq/t;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final r(Lrq/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lrp/k;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lrp/k;-><init>(Lrp/m;Lrq/n;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final s(Lrq/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lrp/g;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lrp/g;-><init>(Lrp/m;Lrq/t;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic t(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lrp/m;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrp/m;->s(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lrp/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final C(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lrp/m;->d:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->g0()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lrp/m;->l()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lrp/m;->d:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public final S()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lrp/m;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrp/m;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 11
    .line 12
    new-instance v1, Lrp/m$a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lrp/m$a;-><init>(Lrp/m;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/ad/view/AdView;->setAdViewListener(Lsp/p;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->t0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final X(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrp/e;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lrp/e;-><init>(Lrp/m;Lrq/t;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrp/m;->l()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lrp/m;->I()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lrp/m;->O()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final Z(Lrp/n;)V
    .locals 0
    .param p1    # Lrp/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lrp/m;->c:Lrp/n;

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b0(Landroid/content/Context;)V
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
    invoke-virtual {p0}, Lrp/m;->V()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lrq/t;

    .line 13
    .line 14
    const-string v0, "FullScreenAd not loaded"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lrp/m;->X(Lrq/t;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lrp/a;->c(Lrp/m;Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c0(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lrp/m;->C(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->getRequiredOrientation()Lio/bidmachine/rendering/model/Orientation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lsq/j;->n(Landroid/app/Activity;Lio/bidmachine/rendering/model/Orientation;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p1, v2, v0, v1}, Lyq/p;->b(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 25
    .line 26
    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->k(Landroid/view/View;)Lkotlin/Unit;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 30
    .line 31
    invoke-static {p1, v0, v2}, Lsq/j;->c(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lrp/m;->b:Lio/bidmachine/rendering/ad/view/AdView;

    .line 35
    .line 36
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
