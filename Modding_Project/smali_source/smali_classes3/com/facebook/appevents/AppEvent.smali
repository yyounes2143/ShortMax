.class public final Lcom/facebook/appevents/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEvent$a;,
        Lcom/facebook/appevents/AppEvent$SerializationProxyV2;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/facebook/appevents/AppEvent$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/AppEvent$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/appevents/AppEvent$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/appevents/AppEvent;->f:Lcom/facebook/appevents/AppEvent$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/appevents/AppEvent;->g:Ljava/util/HashSet;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;Lcom/facebook/appevents/i0;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/appevents/i0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/FacebookException;
        }
    .end annotation

    const-string v0, "contextName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p5, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 4
    iput-boolean p6, p0, Lcom/facebook/appevents/AppEvent;->d:Z

    .line 5
    iput-object p2, p0, Lcom/facebook/appevents/AppEvent;->e:Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 6
    invoke-virtual {p8}, Lcom/facebook/appevents/i0;->e()Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    iput-object p5, p0, Lcom/facebook/appevents/AppEvent;->b:Lorg/json/JSONObject;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Ljava/util/UUID;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEvent;->b:Lorg/json/JSONObject;

    .line 12
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 13
    const-string p1, "_eventName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "jsonObject.optString(Con\u2026nts.EVENT_NAME_EVENT_KEY)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEvent;->e:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lcom/facebook/appevents/AppEvent;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEvent;->g:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Ljava/util/UUID;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEvent;->f:Lcom/facebook/appevents/AppEvent$a;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/facebook/appevents/AppEvent$a;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ld2/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {p2}, Lz1/e;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    const-string p2, "_eventName"

    .line 26
    .line 27
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    const/16 p2, 0x3e8

    .line 35
    .line 36
    int-to-long v3, p2

    .line 37
    div-long/2addr v1, v3

    .line 38
    const-string p2, "_logTime"

    .line 39
    .line 40
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string p2, "_ui"

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    if-eqz p5, :cond_1

    .line 49
    .line 50
    const-string p1, "_session_id"

    .line 51
    .line 52
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz p4, :cond_2

    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    const/4 p2, 0x0

    .line 59
    const/4 p5, 0x0

    .line 60
    invoke-static {p0, p4, p5, p1, p2}, Lcom/facebook/appevents/AppEvent;->n(Lcom/facebook/appevents/AppEvent;Landroid/os/Bundle;ZILjava/lang/Object;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_2

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    if-eqz p3, :cond_3

    .line 93
    .line 94
    const-string p1, "_valueToSum"

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 97
    .line 98
    .line 99
    move-result-wide p2

    .line 100
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-boolean p1, p0, Lcom/facebook/appevents/AppEvent;->d:Z

    .line 104
    .line 105
    const-string p2, "1"

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    const-string p1, "_inBackground"

    .line 110
    .line 111
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-boolean p1, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    const-string p1, "_implicitlyLogged"

    .line 119
    .line 120
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    sget-object p1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 125
    .line 126
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    const-string p4, "eventObject.toString()"

    .line 133
    .line 134
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    const-string p4, "AppEvents"

    .line 142
    .line 143
    const-string p5, "Created app event \'%s\'"

    .line 144
    .line 145
    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-object v0
.end method

.method private final k(Landroid/os/Bundle;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
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
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Lcom/facebook/appevents/AppEvent;->f:Lcom/facebook/appevents/AppEvent$a;

    .line 27
    .line 28
    const-string v4, "key"

    .line 29
    .line 30
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lcom/facebook/appevents/AppEvent$a;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v4, v3, Ljava/lang/String;

    .line 41
    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    instance-of v4, v3, Ljava/lang/Number;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 50
    .line 51
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 52
    .line 53
    const/4 p2, 0x2

    .line 54
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v0, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    .line 63
    .line 64
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v0, "format(format, *args)"

    .line 69
    .line 70
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-nez p2, :cond_3

    .line 86
    .line 87
    invoke-static {v0}, Lz1/c;->c(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/facebook/appevents/AppEvent;->e:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1, p2}, Ld2/a;->f(Ljava/util/Map;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/facebook/appevents/AppEvent;->e:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p1, p2}, Lu1/a;->c(Ljava/util/Map;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-object v0
.end method

.method static synthetic n(Lcom/facebook/appevents/AppEvent;Landroid/os/Bundle;ZILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEvent;->k(Landroid/os/Bundle;Z)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "jsonObject.toString()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/facebook/appevents/AppEvent;->b:Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "operationalJsonObject.toString()"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 26
    .line 27
    iget-boolean v4, p0, Lcom/facebook/appevents/AppEvent;->d:Z

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->b:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v1, "_eventName"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lcom/facebook/appevents/AppEvent;->c:Z

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/facebook/appevents/AppEvent;->a:Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "\"%s\", implicit: %b, json: %s"

    .line 33
    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "format(format, *args)"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
