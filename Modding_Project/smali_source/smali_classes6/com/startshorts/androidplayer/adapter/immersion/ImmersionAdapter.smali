.class public final Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "ImmersionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->s:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lmd/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lmd/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->o:Lms/i;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->r:I

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic E()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->T()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->P(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v1

    .line 24
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 30
    .line 31
    :cond_1
    return-object v1
.end method

.method private final I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final P(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->setEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->p:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->setMListener(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final T()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method


# virtual methods
.method public final G(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final J(I)Landroid/view/TextureView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->getVideoRenderView()Landroid/view/TextureView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public final K(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final L(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->y()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final M(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final N(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final O(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final Q(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final R(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final S(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->F()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public U(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onViewAttachedToWindow -> position("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public V(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onViewDetachedFromWindow -> pos("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final W(Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->p:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;

    .line 2
    .line 3
    return-void
.end method

.method public final X(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->setMVideoRendered(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final Y(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->I()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final Z(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->J(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final a0(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "tip"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->K(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final b0(ILpj/a;)V
    .locals 1
    .param p2    # Lpj/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->L(Lpj/a;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final c0(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<get-mAttachedViewPositions>(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v4, p1

    .line 37
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 38
    .line 39
    const-string v6, "ImmersionAdapter"

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v8, "updateAttachedViewsPosition -> oldPosition("

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v8, ") newPosition("

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v8, 0x29

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v5, v6, v7}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->I()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->p:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;

    .line 87
    .line 88
    if-eqz v5, :cond_0

    .line 89
    .line 90
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v5, v3, v4}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$b;->m(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_2
    monitor-exit v0

    .line 111
    throw p1
.end method

.method public final d0(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->setEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public final f0(ILcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "shortsInfo"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "baseEpisode"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->M(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final g0(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/ImmersionSubtitleAdapterView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/ImmersionSubtitleAdapterView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/ImmersionSubtitleAdapterView;->O(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->r:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->enableSubtitle()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    :goto_0
    return v0
.end method

.method public final h0(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->H(I)Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->a(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->U(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->V(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x2

    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    sget-object p2, Lyf/a;->a:Lyf/a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lyf/a;->o()V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$d;

    .line 15
    .line 16
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_immersion_subtitle:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemImmersionSubtitleBinding;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;Lcom/startshorts/androidplayer/databinding/ItemImmersionSubtitleBinding;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$c;

    .line 29
    .line 30
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_immersion_normal:I

    .line 31
    .line 32
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemImmersionNormalBinding;

    .line 37
    .line 38
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;Lcom/startshorts/androidplayer/databinding/ItemImmersionNormalBinding;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p2
.end method
