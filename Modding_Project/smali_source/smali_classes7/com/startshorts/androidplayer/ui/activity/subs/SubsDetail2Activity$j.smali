.class public final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;
.super Ljava/lang/Object;
.source "SubsDetail2Activity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->i1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lud/a;->a:Lud/a;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lud/a;->p0(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->w0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->m0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/16 v1, 0x63

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->n0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->j0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    const/16 v14, 0x110

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    move-object/from16 v6, p3

    .line 55
    .line 56
    invoke-static/range {v4 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public b(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lud/a;->a:Lud/a;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lud/a;->p0(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->w0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->m0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/16 v1, 0x63

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->n0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->j0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    const/16 v14, 0x110

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v5, 0x4

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    move-object/from16 v6, p3

    .line 55
    .line 56
    invoke-static/range {v4 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public c(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v3, p3

    .line 3
    .line 4
    sget-object v1, Lud/a;->a:Lud/a;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lud/a;->p0(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 13
    .line 14
    move-object/from16 v4, p4

    .line 15
    .line 16
    invoke-static {v2, v3, v4}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->t0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->m0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v1, Lqf/e;->a:Lqf/e;

    .line 32
    .line 33
    invoke-virtual {v1}, Lqf/e;->a()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->n0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->j0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/16 v11, 0x110

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v6, 0x3

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    move-object v1, v2

    .line 60
    move v2, v6

    .line 61
    move-object/from16 v3, p3

    .line 62
    .line 63
    move v6, v10

    .line 64
    move-object v10, v13

    .line 65
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
