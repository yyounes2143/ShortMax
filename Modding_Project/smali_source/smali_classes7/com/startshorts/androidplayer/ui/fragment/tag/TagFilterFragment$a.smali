.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;
.super Ljava/lang/Object;
.source "TagFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shortsLabel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "from"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    const-string v2, "TagFilterFragment"

    .line 19
    .line 20
    const-string v3, "TagFilterFragment show"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 26
    .line 27
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->m()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 34
    .line 35
    const-string v4, "shorts_param"

    .line 36
    .line 37
    invoke-static {p2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {v3, v4, p2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 45
    .line 46
    const-string v4, "shorts_label_param"

    .line 47
    .line 48
    invoke-static {p3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-direct {p2, v4, p3}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 56
    .line 57
    invoke-direct {p3, v0, p4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p4, 0x3

    .line 61
    new-array p4, p4, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    aput-object v3, p4, v0

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aput-object p2, p4, v0

    .line 68
    .line 69
    const/4 p2, 0x2

    .line 70
    aput-object p3, p4, p2

    .line 71
    .line 72
    invoke-virtual {v1, p1, v2, p4}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "baseEpisode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shortsLabel"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "from"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v2, "TagFilterFragment"

    .line 24
    .line 25
    const-string v3, "TagFilterFragment show"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 31
    .line 32
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->m()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 39
    .line 40
    const-string v4, "episode_param"

    .line 41
    .line 42
    invoke-static {p2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v3, v4, p2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 50
    .line 51
    const-string v4, "shorts_label_param"

    .line 52
    .line 53
    invoke-static {p3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-direct {p2, v4, p3}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 61
    .line 62
    invoke-direct {p3, v0, p4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p4, 0x3

    .line 66
    new-array p4, p4, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    aput-object v3, p4, v0

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    aput-object p2, p4, v0

    .line 73
    .line 74
    const/4 p2, 0x2

    .line 75
    aput-object p3, p4, p2

    .line 76
    .line 77
    invoke-virtual {v1, p1, v2, p4}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
