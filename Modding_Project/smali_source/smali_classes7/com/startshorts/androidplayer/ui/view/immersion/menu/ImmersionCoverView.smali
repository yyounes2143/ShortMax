.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;
.super Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
.source "ImmersionCoverView.kt"

# interfaces
.implements Lnj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private j:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$a;

    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$a;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->k:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->k:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isRelease()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->k:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isRelease()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->a(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x20

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 63
    .line 64
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getCover()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lid/c;->a:Lid/c;

    .line 77
    .line 78
    invoke-virtual {p1}, Lid/c;->b()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lid/c;->a()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 93
    .line 94
    invoke-virtual {p1}, Lfk/z;->p()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lfk/z;->p()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 106
    .line 107
    .line 108
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCircleCrop(Z)V

    .line 115
    .line 116
    .line 117
    const/high16 p1, 0x3f800000    # 1.0f

    .line 118
    .line 119
    invoke-static {p1}, Ljk/g;->b(F)F

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderWidth(F)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const v2, 0x106000b

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderColor(I)V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    invoke-virtual {v0, p0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 143
    .line 144
    .line 145
    if-nez p2, :cond_1

    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->a(I)V

    .line 149
    .line 150
    .line 151
    :cond_1
    :goto_0
    return-void
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->j:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "episode"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;->j:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView$b;

    .line 2
    .line 3
    return-void
.end method
