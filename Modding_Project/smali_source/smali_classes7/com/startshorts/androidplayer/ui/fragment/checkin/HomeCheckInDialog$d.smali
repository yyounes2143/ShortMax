.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;
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


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

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

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->c(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->r0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskId()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->e0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 43
    .line 44
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 59
    .line 60
    new-instance v0, Lpi/f;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Lpi/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    return-void
.end method
