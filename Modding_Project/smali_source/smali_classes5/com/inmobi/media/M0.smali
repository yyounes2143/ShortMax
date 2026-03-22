.class public final Lcom/inmobi/media/M0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/M0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/inmobi/media/o4;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/M0;->a:Lcom/inmobi/media/S0;

    .line 9
    .line 10
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 11
    .line 12
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "errorCode"

    .line 18
    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x12

    .line 29
    .line 30
    if-eq p1, v2, :cond_0

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 p1, 0x839

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_1
    const/16 p1, 0x838

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_2
    const/16 p1, 0x837

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    const/16 p1, 0x836

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_4
    const/16 p1, 0x835

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/16 p1, 0x8b4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/16 p1, 0x834

    .line 55
    .line 56
    :goto_1
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v1, v2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
