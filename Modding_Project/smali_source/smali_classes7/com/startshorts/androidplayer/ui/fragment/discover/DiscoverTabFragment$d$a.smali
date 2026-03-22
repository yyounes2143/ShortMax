.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;
.super Ljava/lang/Object;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->f1()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->g0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->H2()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
