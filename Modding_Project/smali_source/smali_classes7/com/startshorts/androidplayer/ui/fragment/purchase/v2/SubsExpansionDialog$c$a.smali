.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n*L\n1#1,20:1\n96#2,5:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

.field final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->T()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c$a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
