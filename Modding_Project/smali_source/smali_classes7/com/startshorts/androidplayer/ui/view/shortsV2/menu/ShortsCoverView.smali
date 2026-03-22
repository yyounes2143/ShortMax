.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;
.super Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
.source "ShortsCoverView.kt"

# interfaces
.implements Lzj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private j:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$a;

    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$a;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;->j:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 7
    .line 8
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lid/c;->a:Lid/c;

    .line 23
    .line 24
    invoke-virtual {p1}, Lid/c;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lid/c;->a()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 39
    .line 40
    invoke-virtual {p1}, Lfk/z;->p()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lfk/z;->p()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCircleCrop(Z)V

    .line 61
    .line 62
    .line 63
    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-static {p1}, Ljk/g;->b(F)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderWidth(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const v2, 0x106000b

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderColor(I)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    invoke-virtual {v0, p0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
