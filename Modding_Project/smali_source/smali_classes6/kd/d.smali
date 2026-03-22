.class public final Lkd/d;
.super Ljava/lang/Object;
.source "ViewPager2BindingAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkd/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lkd/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkd/d;->a:Lkd/d;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroidx/viewpager2/widget/ViewPager2;Z)V
    .locals 1
    .param p0    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "itemPrefetchEnable"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "viewPager"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lfk/i0;->a:Lfk/i0;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lfk/i0;->b(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final b(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 1
    .param p0    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "customOverScrollMode"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "viewPager"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lfk/i0;->a:Lfk/i0;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lfk/i0;->b(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
