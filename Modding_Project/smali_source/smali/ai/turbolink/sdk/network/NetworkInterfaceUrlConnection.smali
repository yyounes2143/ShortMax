.class public final Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;
.super Lai/turbolink/sdk/network/NetworkInterface;
.source "NetworkInterfaceUrlConnection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final turboLink:Lai/turbolink/sdk/TurboLink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lai/turbolink/sdk/TurboLink;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/TurboLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "turboLink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lai/turbolink/sdk/network/NetworkInterface;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->turboLink:Lai/turbolink/sdk/TurboLink;

    .line 10
    .line 11
    return-void
.end method

.method private final doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;
    .locals 10

    const/4 v0, 0x1

    .line 2
    const-string v1, "application/json"

    const-string v2, "Retry request exception "

    const-string v3, ""

    .line 3
    sget-object v4, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getCONNECT_TIMEOUT()I

    move-result v5

    .line 4
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getREAD_TIMEOUT()I

    move-result v6

    const/4 v7, 0x0

    .line 5
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_0

    const/16 v8, 0x66

    .line 6
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_8

    :catch_3
    move-exception v1

    goto/16 :goto_b

    .line 7
    :cond_0
    :goto_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v8, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 12
    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 13
    const-string v5, "Content-Type"

    invoke-virtual {v8, v5, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v5, "Accept"

    invoke-virtual {v8, v5, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v1, "Authorization"

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "Bearer %s"

    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPKEY()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "POST"

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 18
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 20
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 21
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0x1f4

    if-lt v1, v5, :cond_1

    .line 22
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getMAX_RETRIES()I

    move-result v5
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge p3, v5, :cond_1

    .line 23
    :try_start_2
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getRETRIES_INTERVAL()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, v8

    goto/16 :goto_e

    :catch_4
    move-exception p1

    move-object v7, v8

    goto/16 :goto_3

    :catch_5
    move-exception v1

    move-object v7, v8

    goto/16 :goto_5

    :catch_6
    move-exception v1

    move-object v7, v8

    goto/16 :goto_8

    :catch_7
    move-exception v1

    move-object v7, v8

    goto/16 :goto_b

    :catch_8
    move-exception v1

    .line 24
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, p3, 0x1

    .line 25
    invoke-direct {p0, p1, p2, v1}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    move-result-object p1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_1
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_2

    .line 27
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 28
    new-instance v4, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    sget-object v5, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getInputStreamString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_2
    new-instance v4, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    sget-object v5, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getInputStreamString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 30
    :catch_9
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A exception occurred with this request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 31
    new-instance v4, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    invoke-direct {v4, v1, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;-><init>(ILjava/lang/String;)V

    .line 32
    :goto_2
    invoke-virtual {v4, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->setRequestId(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v4

    .line 34
    :goto_3
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Occurred exception while attempting network request, Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 35
    new-instance p2, Lai/turbolink/sdk/network/TurboLinkNetworkException;

    sget-object p3, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    invoke-virtual {p3}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    move-object v3, p1

    :goto_4
    invoke-direct {p2, p3, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 36
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred exception while attempting network request, IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 37
    sget-object v4, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getMAX_RETRIES()I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge p3, v5, :cond_5

    .line 38
    :try_start_7
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getRETRIES_INTERVAL()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_a
    move-exception v1

    .line 39
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    :goto_6
    add-int/2addr p3, v0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_4

    .line 41
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    .line 42
    :cond_5
    :try_start_9
    new-instance p1, Lai/turbolink/sdk/network/TurboLinkNetworkException;

    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    invoke-virtual {p2}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    move-object v3, p3

    :goto_7
    invoke-direct {p1, p2, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 43
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred exception while attempting network request, InterruptedIOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 44
    sget-object v4, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getMAX_RETRIES()I

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ge p3, v5, :cond_8

    .line 45
    :try_start_a
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getRETRIES_INTERVAL()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    :catch_b
    move-exception v1

    .line 46
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    :goto_9
    add-int/2addr p3, v0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_7

    .line 48
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object p1

    .line 49
    :cond_8
    :try_start_c
    new-instance p1, Lai/turbolink/sdk/network/TurboLinkNetworkException;

    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    invoke-virtual {p2}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    goto :goto_a

    :cond_9
    move-object v3, p3

    :goto_a
    invoke-direct {p1, p2, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 50
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred exception while attempting network request, SocketTimeoutException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 51
    sget-object v4, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getMAX_RETRIES()I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-ge p3, v5, :cond_b

    .line 52
    :try_start_d
    invoke-virtual {v4}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getRETRIES_INTERVAL()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c

    :catch_c
    move-exception v1

    .line 53
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    :goto_c
    add-int/2addr p3, v0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_a

    .line 55
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-object p1

    .line 56
    :cond_b
    :try_start_f
    new-instance p1, Lai/turbolink/sdk/network/TurboLinkNetworkException;

    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_NO_CONNECTIVITY:Lai/turbolink/sdk/utils/TurboLinkCode;

    invoke-virtual {p2}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move-object v3, p3

    :goto_d
    invoke-direct {p1, p2, v3}, Lai/turbolink/sdk/network/TurboLinkNetworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_e
    if-eqz v7, :cond_d

    .line 57
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw p1
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public doPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;->doPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    move-result-object p1

    return-object p1
.end method
