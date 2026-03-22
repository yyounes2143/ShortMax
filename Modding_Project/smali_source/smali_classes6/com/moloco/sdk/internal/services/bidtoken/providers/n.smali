.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/providers/m;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/providers/n$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompositeClientBidTokenSignalProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeClientBidTokenSignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/CompositeClientBidTokenSignalProviderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1755#2,3:111\n1202#2,2:114\n1230#2,4:116\n*S KotlinDebug\n*F\n+ 1 CompositeClientBidTokenSignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/CompositeClientBidTokenSignalProviderImpl\n*L\n57#1:111,3\n74#1:114,2\n74#1:116,4\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/moloco/sdk/internal/services/bidtoken/providers/n$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/n$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "signalProviders"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->b:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->b:Ljava/util/List;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v5, "[CBT] Signal provider "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;->c()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " needs refresh"

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v8, 0xc

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    const-string v4, "ClientBidTokenSignalProviderImpl"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    if-eqz v2, :cond_1

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 79
    :goto_1
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ClientBidTokenSignalProviderImpl"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lcom/moloco/sdk/internal/services/bidtoken/providers/k;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/n;->b:Ljava/util/List;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Lcom/moloco/sdk/internal/services/bidtoken/providers/j;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/x;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.SDKInitStateSignalProvider"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/x;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/x;->e()Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.PrivacyStateSignalProvider"

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->e()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;

    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.MemorySignalProvider"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;

    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AppDirInfoSignalProvider"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;

    .line 142
    .line 143
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.NetworkInfoSignalProvider"

    .line 152
    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/i;

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.BatteryInfoSignalProvider"

    .line 173
    .line 174
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/i;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/i;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/h;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/c;

    .line 184
    .line 185
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AdvertisingSignalProvider"

    .line 194
    .line 195
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/c;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/c;->f()Lcom/moloco/sdk/internal/services/o;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;

    .line 205
    .line 206
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.DeviceSignalProvider"

    .line 215
    .line 216
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/g;

    .line 226
    .line 227
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AudioSignalProvider"

    .line 236
    .line 237
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/g;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/g;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/f;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/b;

    .line 247
    .line 248
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AccessibilitySignalProvider"

    .line 257
    .line 258
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/b;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/b;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/a;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    const-class v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/r;

    .line 268
    .line 269
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.IlrdSignalProvider"

    .line 278
    .line 279
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/r;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/r;->g()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;

    .line 289
    .line 290
    move-object v3, v0

    .line 291
    invoke-direct/range {v3 .. v14}, Lcom/moloco/sdk/internal/services/bidtoken/providers/k;-><init>(ZLcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;Lcom/moloco/sdk/internal/services/bidtoken/providers/s;Lcom/moloco/sdk/internal/services/bidtoken/providers/d;Lcom/moloco/sdk/internal/services/bidtoken/providers/u;Lcom/moloco/sdk/internal/services/bidtoken/providers/h;Lcom/moloco/sdk/internal/services/o;Lcom/moloco/sdk/internal/services/bidtoken/providers/o;Lcom/moloco/sdk/internal/services/bidtoken/providers/f;Lcom/moloco/sdk/internal/services/bidtoken/providers/a;Lcom/moloco/sdk/internal/services/bidtoken/providers/q;)V

    .line 292
    .line 293
    .line 294
    return-object v0
.end method
