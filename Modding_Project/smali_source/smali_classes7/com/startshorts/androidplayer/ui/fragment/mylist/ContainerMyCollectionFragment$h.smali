.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m0()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n*L\n1#1,20:1\n289#2,24:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget v1, Lcom/startshorts/androidplayer/R$id;->select_all_click_view:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$j;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$id;->delete_click_view:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$k;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
