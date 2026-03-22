.class public final Lcom/moloco/sdk/internal/services/init/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/init/m;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/init/n$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "endpoint"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "httpRequestClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/n;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/n;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(JLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    sget-object p3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    const-string v1, "InitTrackingApi"

    .line 4
    .line 5
    const-string v2, "Reporting InitTracking success"

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/n;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v1, "InitTrackingApi"

    .line 23
    .line 24
    const-string v2, "SDK InitTracking disabled"

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, p3

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    move-object v3, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p3, p0, Lcom/moloco/sdk/internal/services/init/n;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/n;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string/jumbo p3, "toString(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/n;->d(J)[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object p1, Lio/ktor/http/a$a;->a:Lio/ktor/http/a$a;

    .line 70
    .line 71
    invoke-virtual {p1}, Lio/ktor/http/a$a;->b()Lio/ktor/http/a;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/16 v5, 0x8

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_0
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    const-string v1, "InitTrackingApi"

    .line 89
    .line 90
    const-string v2, "Failed to send notifySuccess post request"

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p1
.end method

.method public b(Lcom/moloco/sdk/internal/services/init/i;JLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lcom/moloco/sdk/internal/services/init/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/init/i;",
            "J",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    instance-of p4, p1, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 6
    .line 7
    const-string v1, "InitTrackingApi"

    .line 8
    .line 9
    new-instance p4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Reporting InitTracking client failure: "

    .line 15
    .line 16
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v3, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    instance-of p4, p1, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 44
    .line 45
    if-eqz p4, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 48
    .line 49
    const-string v1, "InitTrackingApi"

    .line 50
    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "Reporting InitTracking server failure: "

    .line 57
    .line 58
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-object v2, p1

    .line 62
    check-cast v2, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x4

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p4, p0, Lcom/moloco/sdk/internal/services/init/n;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    if-nez p4, :cond_1

    .line 88
    .line 89
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 90
    .line 91
    const-string v1, "InitTrackingApi"

    .line 92
    .line 93
    const-string v2, "SDK InitTracking disabled"

    .line 94
    .line 95
    const/4 v4, 0x4

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_1
    iget-object p4, p0, Lcom/moloco/sdk/internal/services/init/n;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/services/init/n;->e(Lcom/moloco/sdk/internal/services/init/i;J)[B

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/init/n;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;

    .line 123
    .line 124
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string/jumbo p1, "toString(...)"

    .line 129
    .line 130
    .line 131
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lio/ktor/http/a$a;->a:Lio/ktor/http/a$a;

    .line 135
    .line 136
    invoke-virtual {p1}, Lio/ktor/http/a$a;->b()Lio/ktor/http/a;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const/16 v5, 0x8

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 149
    .line 150
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 155
    .line 156
    const/16 v5, 0x8

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    const-string v1, "InitTrackingApi"

    .line 160
    .line 161
    const-string v2, "Failed to send notifyFailure post request"

    .line 162
    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method

.method public final c(Lcom/moloco/sdk/internal/services/init/b;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/init/n$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->ANDROID_WORK_MANAGER_ISSUE:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->HTTP_SSL_ERROR:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->HTTP_SOCKET:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->HTTP_UKNOWN_HOST:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->HTTP_REQUEST_TIMEOUT:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    sget-object p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;->UNKNOWN:Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 34
    .line 35
    :goto_0
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(J)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;->b(J)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest$a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;->c(Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo p2, "toByteArray(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final e(Lcom/moloco/sdk/internal/services/init/i;J)[B
    .locals 3

    .line 1
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, p1, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast p1, Lcom/moloco/sdk/internal/services/init/i$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/init/i$a;->a()Lcom/moloco/sdk/internal/services/init/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/init/n;->c(Lcom/moloco/sdk/internal/services/init/b;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;->a(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$a;->a(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$a;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v2, p1, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError;->newBuilder()Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError$a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast p1, Lcom/moloco/sdk/internal/services/init/i$b;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/init/i$b;->a()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v2, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError$a;->a(I)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError$a;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$a;->b(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ServerError;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$a;

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;->a(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest;)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p2, p3}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;->b(J)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$a;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string/jumbo p2, "toByteArray(...)"

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 96
    .line 97
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
