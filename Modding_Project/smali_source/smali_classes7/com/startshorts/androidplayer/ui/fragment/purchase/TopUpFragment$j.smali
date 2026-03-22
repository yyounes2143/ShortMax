.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->onResume()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n396#2,9:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$l;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/dialog/immersion/a$b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
