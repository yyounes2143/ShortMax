.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;
.super Lyd/d;
.source "HomeCheckInDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$onClickView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$onClickView$1\n*L\n148#1:363,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v2, v1

    .line 39
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    :goto_1
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 70
    .line 71
    const-string v0, "go_rewards"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->h0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 83
    .line 84
    const-string v0, "daily_checkin_discover"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->h0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 96
    .line 97
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void
.end method
