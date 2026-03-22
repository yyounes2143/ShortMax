.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;
.super Ljava/lang/Object;
.source "RetainDiscountDialog.kt"

# interfaces
.implements Lfk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lfk/e$a$a;->a(Lfk/e$a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V
    .locals 1

    .line 1
    const-string v0, "payResultInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lfk/e$a$a;->c(Lfk/e$a;Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 1

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "priceInfo"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->U()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
