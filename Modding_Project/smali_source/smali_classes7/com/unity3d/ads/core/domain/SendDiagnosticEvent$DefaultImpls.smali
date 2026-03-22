.class public final Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p8, :cond_5

    .line 2
    .line 3
    and-int/lit8 v0, p7, 0x2

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
    and-int/lit8 v2, p7, 0x4

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
    and-int/lit8 v3, p7, 0x8

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
    and-int/lit8 v4, p7, 0x10

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
    and-int/lit8 v5, p7, 0x20

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move-object v1, p6

    .line 38
    :goto_4
    move-object p2, p0

    .line 39
    move-object p3, p1

    .line 40
    move-object p4, v0

    .line 41
    move-object p5, v2

    .line 42
    move-object p6, v3

    .line 43
    move-object p7, v4

    .line 44
    move-object p8, v1

    .line 45
    invoke-interface/range {p2 .. p8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->invoke(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 50
    .line 51
    const-string v1, "Super calls with default arguments not supported in this target, function: invoke"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method
