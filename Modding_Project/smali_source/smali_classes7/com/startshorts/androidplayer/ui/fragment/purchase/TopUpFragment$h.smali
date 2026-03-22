.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n789#2,7:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->b:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->b1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->Y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->b:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lgi/a;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "requireContext(...)"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lgi/a;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
