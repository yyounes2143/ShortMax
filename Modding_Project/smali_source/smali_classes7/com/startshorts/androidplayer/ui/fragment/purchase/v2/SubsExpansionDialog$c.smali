.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;
.super Ljava/lang/Object;
.source "SubsExpansionDialog.kt"

# interfaces
.implements Lfk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,297:1\n15#2,9:298\n*S KotlinDebug\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n*L\n94#1:298,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Ljava/lang/String;)V

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
    .locals 1

    .line 1
    const-string p1, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "priceInfo"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-static {p1, v0, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;

    .line 4
    .line 5
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$b;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
