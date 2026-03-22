.class public final Lcom/vungle/ads/internal/network/VungleApi$DefaultImpls;
.super Ljava/lang/Object;
.source "VungleApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/VungleApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic pingTPAT$default(Lcom/vungle/ads/internal/network/VungleApi;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Lokhttp3/RequestBody;ILjava/lang/Object;)Lcom/vungle/ads/internal/network/Call;
    .locals 6

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    sget-object p3, Lcom/vungle/ads/internal/network/HttpMethod;->GET:Lcom/vungle/ads/internal/network/HttpMethod;

    .line 8
    .line 9
    :cond_0
    move-object v3, p3

    .line 10
    and-int/lit8 p3, p6, 0x8

    .line 11
    .line 12
    const/4 p7, 0x0

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    move-object v4, p7

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v4, p4

    .line 18
    :goto_0
    and-int/lit8 p3, p6, 0x10

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    move-object v5, p7

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move-object v5, p5

    .line 25
    :goto_1
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/vungle/ads/internal/network/VungleApi;->pingTPAT(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/Call;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    const-string p1, "Super calls with default arguments not supported in this target, function: pingTPAT"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method
