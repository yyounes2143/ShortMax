.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;
.super Ljava/lang/Object;
.source "TopUpFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->a2(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

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
    .locals 28

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
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/Integer;)V

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
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const/16 v15, 0x110

    .line 51
    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    move-object/from16 v7, p3

    .line 59
    .line 60
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 67
    .line 68
    .line 69
    move-result-object v21

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v22

    .line 74
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v23

    .line 80
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v24

    .line 86
    const/16 v26, 0x80

    .line 87
    .line 88
    const/16 v27, 0x0

    .line 89
    .line 90
    const/16 v18, 0x1

    .line 91
    .line 92
    const/16 v20, 0x0

    .line 93
    .line 94
    const/16 v25, 0x0

    .line 95
    .line 96
    move-object/from16 v19, p2

    .line 97
    .line 98
    invoke-static/range {v17 .. v27}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method public b(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 28

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
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/Integer;)V

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
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const/16 v15, 0x110

    .line 51
    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    move-object/from16 v7, p3

    .line 59
    .line 60
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 67
    .line 68
    .line 69
    move-result-object v21

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v22

    .line 74
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v23

    .line 80
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v24

    .line 86
    const/16 v26, 0x80

    .line 87
    .line 88
    const/16 v27, 0x0

    .line 89
    .line 90
    const/16 v18, 0x4

    .line 91
    .line 92
    const/16 v20, 0x0

    .line 93
    .line 94
    const/16 v25, 0x0

    .line 95
    .line 96
    move-object/from16 v19, p2

    .line 97
    .line 98
    invoke-static/range {v17 .. v27}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
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
    const/4 v5, 0x1

    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 23
    .line 24
    invoke-static {v1, v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 34
    .line 35
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const/16 v11, 0x110

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    const/4 v2, 0x3

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    move-object/from16 v3, p3

    .line 63
    .line 64
    move-object v4, v6

    .line 65
    move v6, v10

    .line 66
    move-object v10, v13

    .line 67
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 79
    .line 80
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 85
    .line 86
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/16 v10, 0x80

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v2, 0x3

    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    move-object/from16 v3, p2

    .line 113
    .line 114
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method
