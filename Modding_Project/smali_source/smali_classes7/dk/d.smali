.class public final synthetic Ldk/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

.field public final synthetic c:Ldk/f;


# direct methods
.method public synthetic constructor <init>(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ldk/d;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ldk/d;->b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 7
    .line 8
    iput-object p4, p0, Ldk/d;->c:Ldk/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-wide v0, p0, Ldk/d;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Ldk/d;->b:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 4
    .line 5
    iget-object v3, p0, Ldk/d;->c:Ldk/f;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-static/range {v0 .. v5}, Ldk/f;->b(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;J)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
