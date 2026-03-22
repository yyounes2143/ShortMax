.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;
.source "ImmersionPlayResolutionView.kt"

# interfaces
.implements Lnj/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->x(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->q(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->t(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method private final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "subs_first_discount"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$c;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$c;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final p(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lnj/m;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lnj/m;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$c;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final q(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->w()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->o(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private final s(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lnj/l;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lnj/l;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$c;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final t(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$f;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_6

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->n()V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$b;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$b;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->v(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$c;

    .line 32
    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->Y()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v2, v1

    .line 63
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    move-object v0, v1

    .line 72
    :cond_3
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 73
    .line 74
    :cond_4
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/4 p1, 0x0

    .line 79
    :goto_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->g:Z

    .line 80
    .line 81
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method private final u()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;

    .line 6
    .line 7
    const/16 v7, 0x1c

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v2, "subs_first_discount"

    .line 11
    .line 12
    const-string v3, "other"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v9

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$i;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private final v(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$h;->b:Lcom/startshorts/androidplayer/viewmodel/immersion/e$h;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, p1, :cond_3

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Lnj/k;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lnj/k;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    sget p1, Lcom/startshorts/androidplayer/R$id;->resolution_tv:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$b;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "vi"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/high16 p1, 0x42500000    # 52.0f

    .line 39
    .line 40
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_play_resolution:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->a(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p2, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->a(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Landroidx/lifecycle/ViewModelProvider;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/ViewModelProvider;
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
    const-string v0, "provider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->e:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 20
    .line 21
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->f:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->s(Landroidx/lifecycle/LifecycleOwner;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->p(Landroidx/lifecycle/LifecycleOwner;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->u()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;

    .line 2
    .line 3
    return-void
.end method
