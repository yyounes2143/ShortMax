.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Ldk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->o9(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showDailyWatchDramaTaskCoinView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n1#2:6801\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;)V
    .locals 1

    .line 1
    const-string v0, "newbieWatchBonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    sget-object v0, Lvi/e;->a:Lvi/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvi/e;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/lit16 v2, v2, 0x3e8

    .line 35
    .line 36
    int-to-long v2, v2

    .line 37
    sget-object v4, Lud/b;->a:Lud/b;

    .line 38
    .line 39
    invoke-virtual {v4}, Lud/b;->X1()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    cmp-long v2, v2, v4

    .line 44
    .line 45
    if-lez v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ldk/f;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Ldk/f;->i()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 67
    .line 68
    invoke-static {v0, v2, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    sget-object v1, Lvi/e;->a:Lvi/e;

    .line 81
    .line 82
    invoke-virtual {v1}, Lvi/e;->b()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->U(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    return-void
.end method
