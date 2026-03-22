.class public Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;
.source "ListDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment<",
        "TD;TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:I

.field private p:Z

.field private final q:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->o:I

    .line 6
    .line 7
    new-instance v0, Loi/e;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Loi/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->q:Lms/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment$mOnScrollListener$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public S(Landroidx/recyclerview/widget/RecyclerView;)V
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
    return-void
.end method

.method public T()V
    .locals 0

    .line 1
    return-void
.end method

.method public U()V
    .locals 0

    .line 1
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_list:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ListDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->q:Lms/i;

    .line 5
    .line 6
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->N()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/ListDialogFragment;->q:Lms/i;

    .line 19
    .line 20
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
