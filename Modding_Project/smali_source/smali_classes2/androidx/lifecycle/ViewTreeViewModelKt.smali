.class public final Landroidx/lifecycle/ViewTreeViewModelKt;
.super Ljava/lang/Object;
.source "ViewTreeViewModel.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic findViewTreeViewModelStoreOwner(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
