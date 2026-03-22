.class public Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;
.source "RVDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRVDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RVDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private k:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->m:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final M()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->l:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->c()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object v0, v2

    .line 28
    :goto_0
    return-object v0
.end method

.method public final N()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_recycler_view:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RVDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment;->M()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
