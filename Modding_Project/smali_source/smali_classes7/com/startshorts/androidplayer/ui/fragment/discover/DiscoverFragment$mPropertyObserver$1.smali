.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$mPropertyObserver$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$mPropertyObserver$1;->b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 13
    .line 14
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/discover/x;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/x;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->H1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
