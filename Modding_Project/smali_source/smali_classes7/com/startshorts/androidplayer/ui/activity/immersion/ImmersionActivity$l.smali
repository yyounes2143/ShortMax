.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->n5()Lcom/startshorts/androidplayer/manager/immersion/feature/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlaySpeedFeature$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n*L\n1#1,6800:1\n2998#2,7:6801\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlaySpeedFeature$1$1\n*L\n3648#1:6801,7\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->L2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 4

    .line 1
    const-string p2, "newPlaySpeed"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->q(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    instance-of v3, v2, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedView;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    check-cast v2, Lnj/a;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    :goto_1
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedView;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedView;->w(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-nez p1, :cond_4

    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->l2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lms/i;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 73
    .line 74
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/player/b$k;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/player/b$k;-><init>(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    if-eqz p4, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->u2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 111
    .line 112
    const-wide/16 p2, 0x1388

    .line 113
    .line 114
    invoke-static {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
    .locals 1

    .line 1
    const-string v0, "playSpeed"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$l;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
