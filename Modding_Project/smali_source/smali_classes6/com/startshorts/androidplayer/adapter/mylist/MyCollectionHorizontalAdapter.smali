.class public final Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "MyCollectionHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;
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
        "SMAP\nMyCollectionHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1863#2,2:161\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 MyCollectionHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter\n*L\n51#1:161,2\n63#1:163,2\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:I

.field private final q:I

.field private final r:F

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->t:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 2
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->o:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lbt/a;->c(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->p:I

    int-to-float p1, p1

    const v0, 0x3fab7803    # 1.3396f

    mul-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Lbt/a;->c(F)I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->q:I

    .line 5
    sget-object p1, Lfk/z;->a:Lfk/z;

    invoke-virtual {p1}, Lfk/z;->r()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->r:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->r:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->L(Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->O(Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final L(Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->a:Landroidx/databinding/ViewStubProxy;

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
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->a:Landroidx/databinding/ViewStubProxy;

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

.method private final O(Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

    .line 2
    .line 3
    const-string/jumbo v1, "topBgViewstub"

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->d:Landroidx/databinding/ViewStubProxy;

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->d:Landroidx/databinding/ViewStubProxy;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p1, v2, v0, v1}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public K(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
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
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lag/a;->a:Lag/a;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->o:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "collections"

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v10, 0x1fc

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    invoke-static/range {v0 .. v11}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final M(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

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
    const-string/jumbo v1, "updateEnterEditMode -> mEditMode("

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
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

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

.method public final N(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "updateSelectAllItems -> selectAll("

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x29

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->s:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v2, 0x18

    .line 46
    .line 47
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const-string/jumbo v0, "update_checkbox"

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->K(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "MyCollectionHorizontalAdapter"

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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_collection_horizontal:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
