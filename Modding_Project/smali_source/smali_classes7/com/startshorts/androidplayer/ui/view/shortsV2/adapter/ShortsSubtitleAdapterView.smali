.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;
.super Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;
.source "ShortsSubtitleAdapterView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final I:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private G:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private H:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->I:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final F(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->G:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->u(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->H:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->H:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "updateSubtitle failed -> mSubtitleInitialized(false) content("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->G:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->w(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->subtitle_view:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->G:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 18
    .line 19
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_shorts_subtitle_adapter_view:I

    .line 2
    .line 3
    return v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ShortsSubtitleAdapterView"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getMEpisode()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->F(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->H:Z

    .line 6
    .line 7
    return-void
.end method
