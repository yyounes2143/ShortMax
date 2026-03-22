.class public abstract Lio/bidmachine/analytics/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/r0$a;
    }
.end annotation


# direct methods
.method private static final a(Lio/bidmachine/analytics/internal/q0$a;)I
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/analytics/internal/r0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x89b

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x89a

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x899

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x898

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x836

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x835

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x834

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x7d0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final a(I)Lio/bidmachine/analytics/internal/q0$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 15
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->a:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 16
    :pswitch_0
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->h:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 17
    :pswitch_1
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->g:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 18
    :pswitch_2
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->f:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->e:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 20
    :pswitch_4
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->d:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 21
    :pswitch_5
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->c:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_0

    .line 22
    :pswitch_6
    sget-object p0, Lio/bidmachine/analytics/internal/q0$a;->b:Lio/bidmachine/analytics/internal/q0$a;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x898
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/q0;
    .locals 4

    .line 5
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 6
    new-instance v0, Lio/bidmachine/analytics/internal/q0;

    .line 7
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/r0;->a(I)Lio/bidmachine/analytics/internal/q0$a;

    move-result-object v2

    .line 9
    const-string v3, "reason"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lio/bidmachine/analytics/internal/q0;

    return-object p0
.end method

.method public static final a(Lio/bidmachine/analytics/internal/q0;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/q0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/q0;->c()Lio/bidmachine/analytics/internal/q0$a;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/analytics/internal/r0;->a(Lio/bidmachine/analytics/internal/q0$a;)I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/q0;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
