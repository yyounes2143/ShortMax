.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->e0()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerRecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment\n*L\n1#1,20:1\n377#2,14:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 18
    .line 19
    sget v3, Lcom/startshorts/androidplayer/R$string;->my_list_fragment_delete_tip:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setContent(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 29
    .line 30
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_confirm:I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonText(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$e;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 50
    .line 51
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonText(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lli/b;

    .line 61
    .line 62
    invoke-direct {v2, v0, v1}, Lli/b;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lfi/a;->show()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment$c;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
