.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

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
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;->c(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->U(Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 7
    .line 8
    new-instance v0, Lpi/g;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lpi/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
