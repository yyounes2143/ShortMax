.class public final Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "MyCollectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMyCollectionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1863#2,2:151\n1863#2,2:153\n*S KotlinDebug\n*F\n+ 1 MyCollectionAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter\n*L\n46#1:151,2\n58#1:153,2\n*E\n"
    }
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->s:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$b;

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
    const/high16 v0, 0x42a00000    # 80.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->o:I

    .line 15
    .line 16
    const/high16 v0, 0x42d40000    # 106.0f

    .line 17
    .line 18
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->p:I

    .line 23
    .line 24
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfk/z;->r()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->q:F

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->K(Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final K(Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljk/e0;->h(Landroidx/databinding/ViewStubProxy;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Landroid/widget/ImageView;

    .line 24
    .line 25
    :cond_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_selected:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_unselected:I

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 42
    .line 43
    const-string p2, "checkBoxViewstub"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p1, p2, v0, v1}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public J(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lag/a;->a:Lag/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v10, 0x1fc

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const-string v1, "collections"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-static/range {v0 .. v11}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final L(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "updateEnterEditMode -> enterEditMode("

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x29

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->t()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

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
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const-string/jumbo v1, "update_checkbox"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final M(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "updateSelectAllItems -> mEditMode("

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ") selectAll("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x29

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->r:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const-string/jumbo v0, "update_checkbox"

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "MyCollectionAdapter"

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
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_my_collection:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
