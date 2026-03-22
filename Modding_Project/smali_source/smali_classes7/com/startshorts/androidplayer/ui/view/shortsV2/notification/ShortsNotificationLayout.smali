.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;
.super Landroid/widget/LinearLayout;
.source "ShortsNotificationLayout.kt"

# interfaces
.implements Lzj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->b:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$a;

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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->a:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->i(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->n()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->k(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->o(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final j()V
    .locals 10

    .line 1
    const-string v0, "removing"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 33
    .line 34
    .line 35
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Landroid/view/View;

    .line 38
    .line 39
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->o(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v3, v0

    .line 64
    check-cast v3, Landroid/view/View;

    .line 65
    .line 66
    sget v5, Lcom/startshorts/androidplayer/R$anim;->anim_immersion_notification_fade_out:I

    .line 67
    .line 68
    new-instance v7, Lak/b;

    .line 69
    .line 70
    invoke-direct {v7, p0, v1}, Lak/b;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 71
    .line 72
    .line 73
    const/16 v8, 0x8

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v2, p0

    .line 79
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->m(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "removeView failed -> "

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "ShortsNotificationLayout"

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->o(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final l(Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZI",
            "Lyd/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 20
    .line 21
    .line 22
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$b;

    .line 23
    .line 24
    invoke-direct {p3, p1, p4, p5}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout$b;-><init>(Landroid/view/View;Lyd/a;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic m(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p6, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    new-instance p5, Lak/d;

    .line 12
    .line 13
    invoke-direct {p5}, Lak/d;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_1
    move-object v5, p5

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move v2, p2

    .line 20
    move v3, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->l(Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final n()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final o(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
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
    .locals 1
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
    return-void
.end method

.method public final f(Lak/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;)V
    .locals 10
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layoutParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    instance-of v1, p1, Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-lt v1, v2, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->j()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    move-object v1, p1

    .line 34
    check-cast v1, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    move-object v3, p1

    .line 40
    check-cast v3, Landroid/view/View;

    .line 41
    .line 42
    sget v5, Lcom/startshorts/androidplayer/R$anim;->anim_immersion_notification_in:I

    .line 43
    .line 44
    const/16 v8, 0x10

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v2, p0

    .line 50
    move-object v6, p3

    .line 51
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->m(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 56
    .line 57
    const-string p2, "ShortsNotificationLayout"

    .line 58
    .line 59
    const-string p3, "view is not View"

    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    :try_start_1
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    const-string p3, "ShortsNotificationLayout"

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "addView failed -> "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_3
    monitor-exit v0

    .line 98
    throw p1
.end method

.method public final g(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;)Landroid/view/View;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lak/a;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move-object v3, v2

    .line 22
    check-cast v3, Lak/a;

    .line 23
    .line 24
    invoke-interface {v3}, Lak/a;->getType()Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final h(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;ZLyd/a;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->g(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v4, Lcom/startshorts/androidplayer/R$anim;->anim_immersion_notification_out:I

    .line 17
    .line 18
    new-instance v6, Lak/c;

    .line 19
    .line 20
    invoke-direct {v6, p0, v2}, Lak/c;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    move-object v1, p0

    .line 24
    move v3, p2

    .line 25
    move-object v5, p3

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->l(Landroid/view/View;ZILyd/a;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 34
    .line 35
    const-string p3, "ShortsNotificationLayout"

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "removeView failed -> "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0

    .line 66
    throw p1
.end method
