.class public final Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ImmersionControlLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->b:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$a;

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
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "inflate(...)"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->s()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->r()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->t()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->u()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->v()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final getImmersionActivity()Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->getImmersionActivity()Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMType(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 12
    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMType(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_list:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->x(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_list:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "getString(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->z(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 43
    .line 44
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$d;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$d;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView$a;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMType(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_share:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->x(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_share:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "getString(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->z(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 43
    .line 44
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$e;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$e;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView$a;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 4
    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$f;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$f;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->a(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->a(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->a(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->a(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final w(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "episode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;->g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a:Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
