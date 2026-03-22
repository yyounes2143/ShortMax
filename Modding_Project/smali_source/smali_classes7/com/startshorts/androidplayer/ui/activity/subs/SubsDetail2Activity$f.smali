.class public final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;
.super Lyd/d;
.source "SubsDetail2Activity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->o0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)J

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->u0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {p1, v1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->o1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->p0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    sub-long v2, v0, v2

    .line 46
    .line 47
    const-wide/16 v4, 0x3e8

    .line 48
    .line 49
    cmp-long p1, v2, v4

    .line 50
    .line 51
    if-ltz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->v0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;J)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$f;->e:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 59
    .line 60
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_duplicate_op_tip:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
