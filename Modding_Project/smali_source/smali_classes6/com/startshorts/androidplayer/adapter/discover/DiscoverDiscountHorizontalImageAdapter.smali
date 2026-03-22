.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DiscoverDiscountHorizontalImageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:I

.field private final q:I

.field private final r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->s:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->o:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 14
    .line 15
    const/high16 p1, 0x42d40000    # 106.0f

    .line 16
    .line 17
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->p:I

    .line 22
    .line 23
    const/high16 p1, 0x430d0000    # 141.0f

    .line 24
    .line 25
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->q:I

    .line 30
    .line 31
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 32
    .line 33
    invoke-virtual {p1}, Lfk/z;->r()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->r:F

    .line 39
    .line 40
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->r:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final H()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->o:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object v0
.end method

.method public I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    move-result-object v0

    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v3

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v5, v3

    .line 45
    :goto_1
    sget-object v1, Lag/a;->a:Lag/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v10, 0xf4

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-static/range {v1 .. v11}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->I(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

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
    const-string v0, "DiscoverDiscountHorizontalImageAdapter"

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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_discover_discount_rectangle_picture:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
