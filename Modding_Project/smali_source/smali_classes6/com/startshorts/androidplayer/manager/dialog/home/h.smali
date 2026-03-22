.class public final Lcom/startshorts/androidplayer/manager/dialog/home/h;
.super Ljava/lang/Object;
.source "RecommendShortsDialogProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/dialog/home/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/dialog/home/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/h;->a:Lcom/startshorts/androidplayer/manager/dialog/home/h$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/dialog/home/h;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/dialog/home/h;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/dialog/home/h;->c:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/h;->f(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    sget-boolean p3, Lcom/startshorts/androidplayer/manager/dialog/home/h;->b:Z

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/dialog/home/h;->b:Z

    .line 23
    .line 24
    sget-object p3, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->v()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Collection;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;->b(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/startshorts/androidplayer/manager/dialog/home/h$b;

    .line 59
    .line 60
    invoke-direct {v1, p2, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/h$b;-><init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "getSupportFragmentManager(...)"

    .line 71
    .line 72
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/dialog/home/h;->c:Z

    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->o()V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lud/b;->a:Lud/b;

    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1, p2}, Lud/b;->k3(Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_4
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public f(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RecommendShortsDialogProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
