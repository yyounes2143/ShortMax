.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->u(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1#1,20:1\n1104#2,2:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

.field final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->v:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

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
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 17
    .line 18
    const-string v4, "shorts"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;->b(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
