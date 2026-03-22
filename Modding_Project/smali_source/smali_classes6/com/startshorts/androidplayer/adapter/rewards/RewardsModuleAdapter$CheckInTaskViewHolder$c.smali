.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;
.super Lyd/d;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->L(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Z

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:I

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method constructor <init>(ZLjava/util/List;ILcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;I",
            "Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->e:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->f:Ljava/util/List;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->g:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->e:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->f:Ljava/util/List;

    .line 12
    .line 13
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->g:I

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->g:I

    .line 28
    .line 29
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->I(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->c(ILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Z)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 39
    .line 40
    new-instance v5, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p1, "ad_active"

    .line 46
    .line 47
    const-string v0, "check_in"

    .line 48
    .line 49
    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo p1, "type"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    const/4 v9, 0x0

    .line 62
    const-string/jumbo v4, "watch_ad_click"

    .line 63
    .line 64
    .line 65
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->W(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
