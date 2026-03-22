.class public final Lca/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortAds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortAds.kt\ncom/hades/aar/admanager/core/ShortAds\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n47#2,4:280\n4154#3:284\n4254#3,2:285\n4154#3:289\n4254#3,2:290\n1863#4,2:287\n1863#4,2:292\n1755#4,3:294\n1755#4,3:297\n1#5:300\n*S KotlinDebug\n*F\n+ 1 ShortAds.kt\ncom/hades/aar/admanager/core/ShortAds\n*L\n49#1:280,4\n61#1:284\n61#1:285,2\n66#1:289\n66#1:290,2\n61#1:287,2\n66#1:292,2\n73#1:294,3\n77#1:297,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lca/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/ArrayList;

.field public static e:Ld/f;

.field public static f:Lha/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lca/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lca/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lca/k;->a:Lca/k;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lca/k;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lca/k;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lca/k;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lca/k;Ljava/util/List;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-wide/32 p2, 0xea60

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lca/k;->j(Ljava/util/List;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lca/k;->l(Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lca/k;->n(Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ld/f;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lca/k;->e:Ld/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lga/a;->a:Lga/a;

    .line 6
    .line 7
    const-string v1, "AdManagerAdUtil"

    .line 8
    .line 9
    const-string v2, "mCurrentAdDelegate is null Call setLoader first"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lca/k;->e:Ld/f;

    .line 15
    .line 16
    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ld/f;->a(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lca/k;->e:Ld/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ld/f;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final varargs d([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;
    .locals 2
    .param p1    # [Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            ")",
            "Ljava/util/List<",
            "Lca/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ld/f;->a([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object p1
.end method

.method public final e()Lha/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lca/k;->f:Lha/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getTestDeviceID start"

    .line 7
    .line 8
    const-string v1, "getTestDeviceID"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v2, "android_id"

    .line 20
    .line 21
    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v2, "getString(context.conten\u2026ttings.Secure.ANDROID_ID)"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "MD5"

    .line 31
    .line 32
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v3, "getBytes(...)"

    .line 43
    .line 44
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v2, Ljava/lang/StringBuffer;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v3, p1

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_0
    if-ge v4, v3, :cond_2

    .line 62
    .line 63
    aget-byte v5, p1, v4

    .line 64
    .line 65
    if-gez v5, :cond_0

    .line 66
    .line 67
    add-int/lit16 v5, v5, 0x100

    .line 68
    .line 69
    :cond_0
    const/16 v6, 0x10

    .line 70
    .line 71
    if-ge v5, v6, :cond_1

    .line 72
    .line 73
    const-string v6, "0"

    .line 74
    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v2, "buf.toString()"

    .line 96
    .line 97
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 101
    .line 102
    const-string v3, "ROOT"

    .line 103
    .line 104
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v2, "toUpperCase(...)"

    .line 112
    .line 113
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :try_start_1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 117
    .line 118
    const-string v2, "AdManagerAdUtil"

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "getTestDeviceID=("

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v4, 0x29

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0, v2, v3}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catch_1
    move-exception v0

    .line 147
    goto :goto_3

    .line 148
    :goto_2
    move-object v7, v0

    .line 149
    move-object v0, p1

    .line 150
    move-object p1, v7

    .line 151
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v3, "getTestDeviceID exception -> "

    .line 154
    .line 155
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const/16 v0, 0x20

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :goto_4
    return-object p1
.end method

.method public final g(Landroid/content/Context;Lcom/hades/aar/admanager/core/AdAggregatedSdk;Lca/a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/hades/aar/admanager/core/AdAggregatedSdk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lca/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "context.packageName"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sparse-switch v1, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_0
    const-string v1, "com.shortsfactory.dramaplayer"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_1
    const-string v1, "com.startshorts.androidplayer"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_2
    const-string v1, "live.shorttv.dramarush.android"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v1, "com.lab.ad.test"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :sswitch_4
    const-string v1, "live.shorttv.apps"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    :cond_0
    :goto_0
    sget-object p1, Lga/a;->a:Lga/a;

    .line 78
    .line 79
    const-string p2, "invalid packageName -> "

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string p3, "AdManagerAdUtil"

    .line 86
    .line 87
    invoke-virtual {p1, p3, p2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    :goto_1
    sget-object v0, Lca/k;->e:Ld/f;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-interface {v0}, Ld/f;->a()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 v0, 0x0

    .line 101
    :goto_2
    if-eq v0, p2, :cond_5

    .line 102
    .line 103
    sget-object v0, Lca/k;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ld/f;

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    sput-object v1, Lca/k;->e:Ld/f;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    sget-object v1, Lc/h;->a:[I

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    aget v1, v1, v2

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    if-ne v1, v2, :cond_4

    .line 126
    .line 127
    new-instance v1, Lf/n;

    .line 128
    .line 129
    invoke-direct {v1, p1, p3}, Lf/n;-><init>(Landroid/content/Context;Lca/a;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    new-instance v1, Le/k;

    .line 134
    .line 135
    invoke-direct {v1, p1, p3}, Le/k;-><init>(Landroid/content/Context;Lca/a;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    sput-object v1, Lca/k;->e:Ld/f;

    .line 139
    .line 140
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_4
    return-void

    .line 144
    nop

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x55df37dc -> :sswitch_4
        0x2451632f -> :sswitch_3
        0x41d7f1ce -> :sswitch_2
        0x4cb5cd0e -> :sswitch_1
        0x62857220 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ld/f;->a(Ljava/util/List;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final i(Lcom/hades/aar/admanager/core/AdFormat;)Z
    .locals 5
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adFormat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/k;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/hades/aar/admanager/core/AdFormat;

    .line 33
    .line 34
    if-eq v2, p1, :cond_2

    .line 35
    .line 36
    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    :cond_2
    return v1

    .line 41
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-interface {v0}, Ld/f;->d()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v0, v2

    .line 54
    :goto_1
    if-eqz v0, :cond_a

    .line 55
    .line 56
    sget-object v0, Lca/k;->c:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_9

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/hades/aar/admanager/core/AdFormat;

    .line 82
    .line 83
    if-eq v3, p1, :cond_8

    .line 84
    .line 85
    sget-object v4, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 86
    .line 87
    if-ne v3, v4, :cond_7

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    move v3, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_8
    :goto_2
    move v3, v1

    .line 93
    :goto_3
    if-eqz v3, :cond_6

    .line 94
    .line 95
    move p1, v1

    .line 96
    goto :goto_5

    .line 97
    :cond_9
    :goto_4
    move p1, v2

    .line 98
    :goto_5
    if-eqz p1, :cond_a

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_a
    move v1, v2

    .line 102
    :goto_6
    return v1
.end method

.method public final j(Ljava/util/List;J)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/e;",
            ">;J)V"
        }
    .end annotation

    .line 1
    const-string v0, "adUnitIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "loadAdSync -> "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ld/f;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v2, v1, v2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lgt/d0;->D8:Lgt/d0$b;

    .line 46
    .line 47
    new-instance v3, Lc/j;

    .line 48
    .line 49
    const-string v4, "loadAdSync"

    .line 50
    .line 51
    invoke-direct {v3, v2, v4}, Lc/j;-><init>(Lgt/d0$b;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, p1, p2, p3, v1}, Ld/f;->d(Ljava/util/List;JLgt/g0;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lca/k;->o(Ljava/lang/String;ZLca/f;Lca/e;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lca/k;->o(Ljava/lang/String;ZLca/f;Lca/e;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(Ljava/lang/String;ZLca/f;Lca/e;Ljava/lang/Long;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "AdManagerAdUtil"

    .line 2
    .line 3
    const-string v1, "loadParam="

    .line 4
    .line 5
    const-string v2, "request="

    .line 6
    .line 7
    const-string v3, ",input_timeout="

    .line 8
    .line 9
    const-string v4, "msg"

    .line 10
    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    if-eqz p5, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    new-instance p5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, "ms"

    .line 39
    .line 40
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p5

    .line 47
    if-nez p5, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_0
    move-object p5, p1

    .line 53
    :cond_1
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p5

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p3}, Lca/f;->f()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    new-instance p5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    if-nez p3, :cond_3

    .line 89
    .line 90
    :cond_2
    move-object p3, p1

    .line 91
    :cond_3
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    new-instance p5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-eqz p4, :cond_5

    .line 107
    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-nez p3, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move-object p1, p3

    .line 124
    :cond_5
    :goto_1
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p2, :cond_6

    .line 132
    .line 133
    sget-object p2, Lga/a;->a:Lga/a;

    .line 134
    .line 135
    invoke-virtual {p2, v0, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    sget-object p2, Lga/a;->a:Lga/a;

    .line 140
    .line 141
    invoke-virtual {p2, v0, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    sget-object p2, Lga/a;->a:Lga/a;

    .line 146
    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string p4, "logInfo exception -> "

    .line 150
    .line 151
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p2, v0, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    return-void
.end method

.method public final q(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/k;->e:Ld/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lga/a;->a:Lga/a;

    .line 11
    .line 12
    const-string v0, "AdManagerAdUtil"

    .line 13
    .line 14
    const-string v1, "openAdInspector failed -> mCurrentAdDelegate is null"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Ld/f;->a(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final r(Ljava/util/List;ILda/c;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lda/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lca/e;",
            ">;I",
            "Lda/c;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "adUnitIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "preloadAd -> "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "\nbufferSize:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ld/f;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, p1, p2, p3}, Ld/f;->c(Ljava/util/List;ILda/c;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ld/f;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final t(Lha/a;)V
    .locals 0
    .param p1    # Lha/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lca/k;->f:Lha/a;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Lca/f;)Lgt/g0;
    .locals 11
    .param p1    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adRequestParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "show "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ld/f;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v2, v1, v2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v3, Lgt/d0;->D8:Lgt/d0$b;

    .line 44
    .line 45
    new-instance v4, Lc/j;

    .line 46
    .line 47
    const-string v5, "show"

    .line 48
    .line 49
    invoke-direct {v4, v3, v5}, Lc/j;-><init>(Lgt/d0$b;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lca/f;->f()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/16 v9, 0xc

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const-string v0, "show failed -> adRequestParam.adUnitParams.isEmpty(),"

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v4, p0

    .line 78
    move-object v5, v0

    .line 79
    move-object v6, p1

    .line 80
    invoke-static/range {v4 .. v10}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lca/f;->n()Lca/f$e;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    invoke-interface {v3, v2, v0}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {p1}, Lca/f;->p()V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_2
    sget-object v3, Lca/i;->a:Lca/i;

    .line 97
    .line 98
    invoke-virtual {v3}, Lca/i;->p()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    const/16 v9, 0xc

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    const-string v0, "show failed -> GDPRManager.isConsented = false,"

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    move-object v4, p0

    .line 112
    move-object v5, v0

    .line 113
    move-object v6, p1

    .line 114
    invoke-static/range {v4 .. v10}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lca/f;->n()Lca/f$e;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-interface {v3, v2, v0}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p1}, Lca/f;->p()V

    .line 127
    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_4
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-interface {v0, p1, v1}, Ld/f;->b(Lca/f;Lgt/g0;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    return-object v1
.end method

.method public final v(Lca/d;Lca/f;)V
    .locals 5
    .param p1    # Lca/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    const-string v1, "showInternal"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ld/f;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lc/h;->b:[I

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v1, v2, v1

    .line 34
    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_0
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, p1, p2}, Ld/g;->e(Lca/d;Lca/f;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    goto :goto_0

    .line 49
    :pswitch_1
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, p1, p2}, Ld/g;->d(Lca/d;Lca/f;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1, p1, p2}, Ld/g;->b(Lca/d;Lca/f;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_3
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1, p1, p2}, Ld/g;->f(Lca/d;Lca/f;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_4
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1, p1, p2}, Ld/g;->a(Lca/d;Lca/f;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_5
    invoke-interface {v0}, Ld/f;->f()Ld/g;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v1, p1, p2}, Ld/g;->c(Lca/d;Lca/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_0
    sget-object v2, Lga/a;->a:Lga/a;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "showInternal exception -> "

    .line 94
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "AdManagerAdUtil"

    .line 110
    .line 111
    invoke-virtual {v2, v4, v3}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ld/f;->b()Lda/f;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lda/f;->r()Ld/a;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1, p2}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void

    .line 133
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
