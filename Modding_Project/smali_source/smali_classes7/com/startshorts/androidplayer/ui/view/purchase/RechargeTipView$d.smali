.class public final Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;
.super Lyd/d;
.source "RechargeTipView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

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
    .locals 6

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->v(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long v2, v0, v2

    .line 19
    .line 20
    const-wide/16 v4, 0x1388

    .line 21
    .line 22
    cmp-long p1, v2, v4

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->x(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->getMListener()Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;->a()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->w(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long v2, v0, v2

    .line 50
    .line 51
    const-wide/16 v4, 0x3e8

    .line 52
    .line 53
    cmp-long p1, v2, v4

    .line 54
    .line 55
    if-ltz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$d;->e:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->y(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;J)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 63
    .line 64
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_duplicate_op_tip:I

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Lfk/u;->g(II)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method
