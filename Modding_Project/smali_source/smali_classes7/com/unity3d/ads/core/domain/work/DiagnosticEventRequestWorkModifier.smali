.class public final Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;
.super Ljava/lang/Object;
.source "DiagnosticEventRequestWorkModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiagnosticEventRequestWorkModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventRequestWorkModifier.kt\ncom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DiagnosticEventRequestKt.kt\ngatewayprotocol/v1/DiagnosticEventRequestKtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 DiagnosticEventKt.kt\ngatewayprotocol/v1/DiagnosticEventKtKt\n*L\n1#1,32:1\n874#2:33\n901#2:35\n1#3:34\n1#3:36\n1#3:38\n1#3:43\n131#4:37\n1549#5:39\n1620#5,2:40\n1622#5:44\n539#6:42\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventRequestWorkModifier.kt\ncom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier\n*L\n17#1:33\n18#1:35\n17#1:34\n18#1:36\n19#1:38\n21#1:43\n19#1:37\n20#1:39\n20#1:40,2\n20#1:44\n21#1:42\n*E\n"
    }
.end annotation


# instance fields
.field private final lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleDataSource"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 10
    .param p1    # Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "universalRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lgatewayprotocol/v1/UniversalRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$Dsl$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "this.toBuilder()"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Builder;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/UniversalRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$Dsl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestKt$Dsl;->getPayload()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v3, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->Companion:Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->getDiagnosticEventRequest()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl$Companion;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;)Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->getBatch()Lcom/google/protobuf/kotlin/DslList;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    .line 66
    .line 67
    const/16 v6, 0xa

    .line 68
    .line 69
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_0

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    .line 91
    .line 92
    sget-object v7, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->Companion:Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast v6, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->getStringTagsMap()Lcom/google/protobuf/kotlin/DslMap;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;->getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getSessionToken()Lcom/google/protobuf/ByteString;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-object v9, p0, Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 120
    .line 121
    invoke-interface {v9}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionToken()Lcom/google/protobuf/ByteString;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    const-string v9, "same_session"

    .line 134
    .line 135
    invoke-virtual {v6, v7, v9, v8}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->putStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->getStringTagsMap()Lcom/google/protobuf/kotlin/DslMap;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iget-object v8, p0, Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    .line 143
    .line 144
    invoke-interface {v8}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->appIsForeground()Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string v9, "app_active"

    .line 153
    .line 154
    invoke-virtual {v6, v7, v9, v8}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->putStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_build()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v3}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->getBatch()Lcom/google/protobuf/kotlin/DslList;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v3, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->clearBatch(Lcom/google/protobuf/kotlin/DslList;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->getBatch()Lcom/google/protobuf/kotlin/DslList;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v3, p1, v5}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->addAllBatch(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lgatewayprotocol/v1/DiagnosticEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->setDiagnosticEventRequest(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalRequestKt$Dsl;->setPayload(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalRequestKt$Dsl;->_build()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1
.end method
