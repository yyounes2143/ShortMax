.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "RetentionAutoUnlockEpisodeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRetentionAutoUnlockEpisodeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetentionAutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n256#2,2:73\n254#2:75\n*S KotlinDebug\n*F\n+ 1 RetentionAutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView\n*L\n42#1:73,2\n56#1:75\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->f:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView$a;

    .line 8
    .line 9
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

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->y(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 2
    .line 3
    xor-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_auto_unlock_episode_gray:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_auto_unlock_episode_off:I

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_retention_auto_unlock_episode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMAutoUnlockEpisode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RetentionAutoUnlockEpisodeView"

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->auto_unlock_episode_iv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->d:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->auto_unlock_episode_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    new-instance v3, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "from"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "agree"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "cancel"

    .line 29
    .line 30
    :goto_0
    const-string v2, "status"

    .line 31
    .line 32
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    const-string v2, "auto_unlock"

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->c:Ljava/lang/String;

    .line 7
    .line 8
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->b:Z

    .line 22
    .line 23
    new-instance p1, Lpj/d;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lpj/d;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
