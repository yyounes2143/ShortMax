.class Lio/bidmachine/NetworkConfig$a;
.super Ljava/lang/Object;
.source "NetworkConfig.java"

# interfaces
.implements Lio/bidmachine/NetworkConfigParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/NetworkConfig;


# direct methods
.method constructor <init>(Lio/bidmachine/NetworkConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public varargs obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-lez v1, :cond_8

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    move-object v4, v0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_7

    .line 12
    .line 13
    aget-object v5, p1, v3

    .line 14
    .line 15
    iget-object v6, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 16
    .line 17
    invoke-static {v6}, Lio/bidmachine/NetworkConfig;->access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-eqz v6, :cond_3

    .line 22
    .line 23
    iget-object v6, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 24
    .line 25
    invoke-static {v6}, Lio/bidmachine/NetworkConfig;->access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v6, :cond_3

    .line 36
    .line 37
    move-object v8, v0

    .line 38
    move v7, v2

    .line 39
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-ge v7, v9, :cond_4

    .line 44
    .line 45
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    iget-object v10, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 54
    .line 55
    invoke-static {v10, v9}, Lio/bidmachine/NetworkConfig;->access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move-object v9, v0

    .line 61
    :goto_2
    if-eqz v9, :cond_2

    .line 62
    .line 63
    if-nez v8, :cond_1

    .line 64
    .line 65
    new-instance v8, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v8, v0

    .line 77
    :cond_4
    if-eqz v8, :cond_6

    .line 78
    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    new-instance v4, Ljava/util/EnumMap;

    .line 82
    .line 83
    const-class v6, Lio/bidmachine/AdsFormat;

    .line 84
    .line 85
    invoke-direct {v4, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {v4, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    move-object v0, v4

    .line 95
    :cond_8
    return-object v0
.end method

.method public obtainNetworkParams()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 4
    .line 5
    invoke-static {v1}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig$a;->a:Lio/bidmachine/NetworkConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method
