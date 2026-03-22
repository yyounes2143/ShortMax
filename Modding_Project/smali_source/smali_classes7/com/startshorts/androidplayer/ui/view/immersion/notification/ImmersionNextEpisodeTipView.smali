.class public final Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNextEpisodeTipView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
.source "ImmersionNextEpisodeTipView.kt"

# interfaces
.implements Loj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;->CURR_EPISODE_END:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNextEpisodeTipView;->b:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final d(Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "notificationType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNextEpisodeTipView;->b:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 12
    .line 13
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_next_episode_tip:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    const/high16 p1, 0x41200000    # 10.0f

    .line 19
    .line 20
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v1, 0x40a00000    # 5.0f

    .line 25
    .line 26
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const v0, 0x106000b

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 62
    .line 63
    invoke-virtual {v0}, Lfk/z;->d()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr p1, v0

    .line 68
    const/high16 v0, 0x42a00000    # 80.0f

    .line 69
    .line 70
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sub-int/2addr p1, v0

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 76
    .line 77
    .line 78
    const/high16 p1, 0x41400000    # 12.0f

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public getType()Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNextEpisodeTipView;->b:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 2
    .line 3
    return-object v0
.end method
