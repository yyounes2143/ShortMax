.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;
.super Ljava/lang/Object;
.source "Ad2CoinsDialog.kt"

# interfaces
.implements Lfk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

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
    .locals 1

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "priceInfo"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 12
    .line 13
    invoke-static {p2, p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->t(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 14
    .line 15
    .line 16
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->w(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfk/e$a$a;->c(Lfk/e$a;Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lfk/e$a$a;->b(Lfk/e$a;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->u(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->v(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
