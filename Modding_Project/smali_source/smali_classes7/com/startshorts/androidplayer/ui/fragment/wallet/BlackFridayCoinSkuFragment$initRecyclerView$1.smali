.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BlackFridayCoinSkuFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->b0(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->getRecordType()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 p4, 0x2

    .line 41
    if-ne p2, p4, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;->b:I

    .line 48
    .line 49
    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
