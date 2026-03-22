.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;
.super Ljava/lang/Object;
.source "GetTopicsResponseHelper.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;->INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final convertResponse$ads_adservices_release(Li/b;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .locals 9
    .param p1    # Li/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresExtension$Container;
        value = {
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0xf4240
                version = 0x4
            .end subannotation,
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0x1f
                version = 0x9
            .end subannotation
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Li/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Li/c;

    .line 30
    .line 31
    new-instance v8, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    .line 32
    .line 33
    invoke-virtual {v1}, Li/c;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v1}, Li/c;->a()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-virtual {v1}, Li/c;->c()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    move-object v2, v8

    .line 46
    invoke-direct/range {v2 .. v7}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final convertResponseWithEncryptedTopics$ads_adservices_release(Li/b;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .locals 10
    .param p1    # Li/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresExtension$Container;
        value = {
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0xf4240
                version = 0xb
            .end subannotation,
            .subannotation Landroidx/annotation/RequiresExtension;
                extension = 0x1f
                version = 0xb
            .end subannotation
        }
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext11OptIn;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Li/b;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Li/c;

    .line 30
    .line 31
    new-instance v9, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    .line 32
    .line 33
    invoke-virtual {v2}, Li/c;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-virtual {v2}, Li/c;->a()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-virtual {v2}, Li/c;->c()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move-object v3, v9

    .line 46
    invoke-direct/range {v3 .. v8}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Li/b;->getEncryptedTopics()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/a;->a(Ljava/lang/Object;)Landroid/adservices/topics/EncryptedTopic;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;

    .line 81
    .line 82
    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/b;->a(Landroid/adservices/topics/EncryptedTopic;)[B

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "encryptedTopic.encryptedTopic"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/c;->a(Landroid/adservices/topics/EncryptedTopic;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-string v6, "encryptedTopic.keyIdentifier"

    .line 96
    .line 97
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Landroidx/privacysandbox/ads/adservices/topics/d;->a(Landroid/adservices/topics/EncryptedTopic;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v6, "encryptedTopic.encapsulatedKey"

    .line 105
    .line 106
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v4, v5, v2}, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;-><init>([BLjava/lang/String;[B)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    .line 117
    .line 118
    invoke-direct {p1, v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method
