.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;
.super Ljava/lang/Object;
.source "ComingSoonDetailDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "supportFragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shorts"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->O()Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 25
    .line 26
    invoke-direct {v0, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->v(Landroidx/fragment/app/FragmentManager;)Z

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 36
    .line 37
    new-instance v3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p1, "scene"

    .line 43
    .line 44
    const-string p2, "coming_soon"

    .line 45
    .line 46
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    const/4 v6, 0x4

    .line 52
    const/4 v7, 0x0

    .line 53
    const-string v2, "introduction_pop_show"

    .line 54
    .line 55
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
