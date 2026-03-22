.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->T0()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n*L\n1#1,20:1\n885#2,9:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

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
    .locals 3

    .line 1
    new-instance v0, Lgi/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

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
    invoke-direct {v0, v1}, Lgi/d;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$k;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lgi/d;->x(Lgi/d$b;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
