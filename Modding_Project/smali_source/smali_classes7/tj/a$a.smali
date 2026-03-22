.class public final Ltj/a$a;
.super Ljava/lang/Object;
.source "PaymentBtnImp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Ltj/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p9, :cond_6

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p2

    .line 11
    :goto_0
    and-int/lit8 v2, p8, 0x4

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v2, p3

    .line 18
    :goto_1
    and-int/lit8 v3, p8, 0x8

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    move-object v3, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v3, p4

    .line 25
    :goto_2
    and-int/lit8 v4, p8, 0x10

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    move-object v4, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move-object v4, p5

    .line 32
    :goto_3
    and-int/lit8 v5, p8, 0x20

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    move-object v5, v1

    .line 37
    goto :goto_4

    .line 38
    :cond_4
    move-object v5, p6

    .line 39
    :goto_4
    and-int/lit8 v6, p8, 0x40

    .line 40
    .line 41
    if-eqz v6, :cond_5

    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_5
    move-object v1, p7

    .line 45
    :goto_5
    move-object p2, p0

    .line 46
    move-object p3, p1

    .line 47
    move-object p4, v0

    .line 48
    move-object p5, v2

    .line 49
    move-object p6, v3

    .line 50
    move-object p7, v4

    .line 51
    move-object p8, v5

    .line 52
    move-object/from16 p9, v1

    .line 53
    .line 54
    invoke-interface/range {p2 .. p9}, Ltj/a;->n(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    const-string v1, "Super calls with default arguments not supported in this target, function: initSubsSku"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method
