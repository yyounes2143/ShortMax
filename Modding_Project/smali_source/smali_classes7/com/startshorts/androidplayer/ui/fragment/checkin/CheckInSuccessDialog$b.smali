.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;
.super Lyd/d;
.source "CheckInSuccessDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

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
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->K()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->L()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lt p1, v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->J()Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->I()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method
