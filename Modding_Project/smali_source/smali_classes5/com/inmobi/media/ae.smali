.class public abstract Lcom/inmobi/media/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/inmobi/media/o4;)S
    .locals 1

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x12

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    const/16 p0, 0x84f

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :pswitch_1
    const/16 p0, 0x84e

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :pswitch_2
    const/16 p0, 0x84d

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :pswitch_3
    const/16 p0, 0x84c

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :pswitch_4
    const/16 p0, 0x84b

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 p0, 0x8b5

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/16 p0, 0x84a

    .line 39
    .line 40
    :goto_1
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
