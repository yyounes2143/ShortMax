.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->onResume()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n*L\n1#1,20:1\n249#2,6:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->j(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
