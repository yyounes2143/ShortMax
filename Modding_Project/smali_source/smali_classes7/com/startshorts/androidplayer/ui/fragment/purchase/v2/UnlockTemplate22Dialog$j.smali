.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;
.super Ljava/lang/Object;
.source "UnlockTemplate22Dialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->z1(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lud/a;->p0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x63

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    const/16 v15, 0x10

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    const/4 v10, 0x0

    .line 68
    move-object/from16 v7, p3

    .line 69
    .line 70
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 79
    .line 80
    .line 81
    move-result-object v20

    .line 82
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 83
    .line 84
    .line 85
    move-result-object v21

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v22

    .line 90
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v23

    .line 96
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v24

    .line 102
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v25

    .line 108
    const/16 v18, 0x1

    .line 109
    .line 110
    move-object/from16 v19, p2

    .line 111
    .line 112
    invoke-virtual/range {v17 .. v25}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f0(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public b(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lud/a;->p0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x63

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    const/16 v15, 0x10

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v10, 0x0

    .line 68
    move-object/from16 v7, p3

    .line 69
    .line 70
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 79
    .line 80
    .line 81
    move-result-object v20

    .line 82
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 83
    .line 84
    .line 85
    move-result-object v21

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v22

    .line 90
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v23

    .line 96
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v24

    .line 102
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v25

    .line 108
    const/16 v18, 0x4

    .line 109
    .line 110
    move-object/from16 v19, p2

    .line 111
    .line 112
    invoke-virtual/range {v17 .. v25}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f0(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public c(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    sget-object v2, Lud/a;->a:Lud/a;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual {v2, v5}, Lud/a;->p0(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {v5, v6}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v1, v5, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v1, v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 33
    .line 34
    invoke-static {v1, v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->s0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 50
    .line 51
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 72
    .line 73
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    const/16 v11, 0x10

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v2, 0x3

    .line 81
    const/4 v13, 0x0

    .line 82
    move-object/from16 v3, p3

    .line 83
    .line 84
    move-object v4, v5

    .line 85
    move-object v5, v6

    .line 86
    move v6, v13

    .line 87
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    if-eqz v3, :cond_3

    .line 92
    .line 93
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->r0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 99
    .line 100
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 101
    .line 102
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 111
    .line 112
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$j;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    const/4 v2, 0x3

    .line 139
    move-object/from16 v3, p2

    .line 140
    .line 141
    invoke-virtual/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f0(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void
.end method
