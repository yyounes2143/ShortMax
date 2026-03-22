.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->g5()Lcom/startshorts/androidplayer/manager/immersion/feature/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    sget v2, Lcom/startshorts/androidplayer/R$string;->immersion_activity_collect_tips_1:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getString(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/discover/CollectTipsImmersionView;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v4, v2, v3}, Lcom/startshorts/androidplayer/ui/view/discover/CollectTipsImmersionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 32
    .line 33
    sget v3, Lcom/startshorts/androidplayer/R$id;->collect_tips_tv:I

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$id;->collect_tips_iv:I

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_collected_tips:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_uncollect_tips:I

    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e$a;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e$a;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 75
    .line 76
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .line 78
    const/4 v0, -0x2

    .line 79
    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 83
    .line 84
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    .line 90
    invoke-virtual {v0}, Lfk/z;->d()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    const/4 v7, 0x4

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->I4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Loj/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public b(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$e;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;->SHORTS_COLLECTION:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move v2, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->x8(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;ZLyd/a;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
