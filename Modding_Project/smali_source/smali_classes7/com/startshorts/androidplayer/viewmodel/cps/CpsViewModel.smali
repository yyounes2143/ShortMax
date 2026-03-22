.class public final Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "CpsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;->e:Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "searchExactly "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v5, p2, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel$searchExactly$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;Landroid/content/Context;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v2, p0

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final A(Lcom/startshorts/androidplayer/viewmodel/cps/a;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/cps/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/cps/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/cps/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/cps/a$a;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/cps/a$a;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;->B(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final C(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/search/RedeemCode;
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
    const-string v0, "codeInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "redeem"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 40
    .line 41
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayId()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayCode()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getUpack()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 66
    .line 67
    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setRedeemCode(Lcom/startshorts/androidplayer/bean/search/RedeemCode;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CpsViewModel"

    .line 2
    .line 3
    return-object v0
.end method
