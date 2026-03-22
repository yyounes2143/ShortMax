.class public final Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;
.super Ljava/lang/Object;
.source "BeginCreateCredentialUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBeginCreateCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1855#2,2:166\n1#3:168\n*S KotlinDebug\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n*L\n123#1:166,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackResponse$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackResponse$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackResponse$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final convertToJetpackResponse$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/credentials/provider/CreateEntry;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final convertToJetpackResponse$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method private static final convertToJetpackResponse$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroidx/credentials/provider/CreateEntry;
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/credentials/provider/CreateEntry;

    .line 11
    .line 12
    return-object p0
.end method

.method private final populateCreateEntries(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/BeginCreateCredentialResponse$Builder;",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/credentials/provider/CreateEntry;

    .line 18
    .line 19
    sget-object v1, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/credentials/provider/CreateEntry$Companion;->toSlice(Landroidx/credentials/provider/CreateEntry;)Landroid/app/slice/Slice;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/credentials/provider/utils/g;->a(Landroid/app/slice/Slice;)Landroid/service/credentials/CreateEntry;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Landroidx/credentials/provider/utils/o;->a(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Landroid/service/credentials/CreateEntry;)Landroid/service/credentials/BeginCreateCredentialResponse$Builder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private final populateRemoteEntry(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Landroidx/credentials/provider/RemoteEntry;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroidx/credentials/provider/utils/b;->a()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/credentials/provider/RemoteEntry$Companion;->toSlice(Landroidx/credentials/provider/RemoteEntry;)Landroid/app/slice/Slice;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Landroidx/credentials/provider/utils/q;->a(Landroid/app/slice/Slice;)Landroid/service/credentials/RemoteEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Landroidx/credentials/provider/utils/a;->a(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Landroid/service/credentials/RemoteEntry;)Landroid/service/credentials/BeginCreateCredentialResponse$Builder;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final convertToFrameworkRequest(Landroidx/credentials/provider/BeginCreateCredentialRequest;)Landroid/service/credentials/BeginCreateCredentialRequest;
    .locals 3
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroidx/credentials/provider/utils/e;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/credentials/provider/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroidx/credentials/provider/CallingAppInfo;->getSigningInfo()Landroid/content/pm/SigningInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroidx/credentials/provider/CallingAppInfo;->getOrigin()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Landroidx/credentials/provider/utils/c;->a(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-static {}, Landroidx/credentials/provider/utils/f;->a()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v1, p1, v0}, Landroidx/credentials/provider/utils/d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final convertToFrameworkResponse(Landroidx/credentials/provider/BeginCreateCredentialResponse;)Landroid/service/credentials/BeginCreateCredentialResponse;
    .locals 2
    .param p1    # Landroidx/credentials/provider/BeginCreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-static {}, Landroidx/credentials/provider/utils/h;->a()Landroid/service/credentials/BeginCreateCredentialResponse$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->populateCreateEntries(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialResponse;->getRemoteEntry()Landroidx/credentials/provider/RemoteEntry;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, v0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->populateRemoteEntry(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;Landroidx/credentials/provider/RemoteEntry;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/credentials/provider/utils/p;->a(Landroid/service/credentials/BeginCreateCredentialResponse$Builder;)Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "frameworkBuilder.build()"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final convertToJetpackRequest$credentials_release(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .locals 11
    .param p1    # Landroid/service/credentials/BeginCreateCredentialRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request.type"

    .line 2
    .line 3
    const-string v1, "it.signingInfo"

    .line 4
    .line 5
    const-string v2, "it.packageName"

    .line 6
    .line 7
    const-string v3, "request.data"

    .line 8
    .line 9
    const-string v4, "request"

    .line 10
    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    invoke-static {p1}, Landroidx/credentials/provider/utils/i;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const v7, -0x20663139

    .line 24
    .line 25
    .line 26
    if-eq v6, v7, :cond_3

    .line 27
    .line 28
    const v7, -0x5aa2881

    .line 29
    .line 30
    .line 31
    if-eq v6, v7, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    const-string v6, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    sget-object v5, Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest$Companion;

    .line 45
    .line 46
    invoke-static {p1}, Landroidx/credentials/provider/utils/j;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroidx/credentials/provider/utils/k;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    new-instance v8, Landroidx/credentials/provider/CallingAppInfo;

    .line 60
    .line 61
    invoke-static {v7}, Landroidx/credentials/provider/x0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v7}, Landroidx/credentials/provider/y0;->a(Landroid/service/credentials/CallingAppInfo;)Landroid/content/pm/SigningInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Landroidx/credentials/provider/t0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-direct {v8, v9, v10, v7}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move-object v8, v4

    .line 84
    :goto_0
    invoke-virtual {v5, v6, v8}, Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_3
    const-string v6, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    sget-object v5, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;

    .line 99
    .line 100
    invoke-static {p1}, Landroidx/credentials/provider/utils/j;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroidx/credentials/provider/utils/k;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    if-eqz v7, :cond_4

    .line 112
    .line 113
    new-instance v8, Landroidx/credentials/provider/CallingAppInfo;

    .line 114
    .line 115
    invoke-static {v7}, Landroidx/credentials/provider/x0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v7}, Landroidx/credentials/provider/y0;->a(Landroid/service/credentials/CallingAppInfo;)Landroid/content/pm/SigningInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7}, Landroidx/credentials/provider/t0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-direct {v8, v9, v10, v7}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    move-object v8, v4

    .line 138
    :goto_1
    invoke-virtual {v5, v6, v8}, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    :goto_2
    invoke-static {p1}, Landroidx/credentials/provider/utils/i;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Landroidx/credentials/provider/utils/j;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Landroidx/credentials/provider/utils/k;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_6

    .line 162
    .line 163
    new-instance v8, Landroidx/credentials/provider/CallingAppInfo;

    .line 164
    .line 165
    invoke-static {v7}, Landroidx/credentials/provider/x0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v7}, Landroidx/credentials/provider/y0;->a(Landroid/service/credentials/CallingAppInfo;)Landroid/content/pm/SigningInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v7}, Landroidx/credentials/provider/t0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-direct {v8, v9, v10, v7}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    move-object v8, v4

    .line 188
    :goto_3
    new-instance v7, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;

    .line 189
    .line 190
    invoke-direct {v7, v5, v6, v8}, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    move-object p1, v7

    .line 194
    goto :goto_4

    .line 195
    :catch_0
    invoke-static {p1}, Landroidx/credentials/provider/utils/i;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Landroidx/credentials/provider/utils/j;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/os/Bundle;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Landroidx/credentials/provider/utils/k;->a(Landroid/service/credentials/BeginCreateCredentialRequest;)Landroid/service/credentials/CallingAppInfo;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    new-instance v4, Landroidx/credentials/provider/CallingAppInfo;

    .line 216
    .line 217
    invoke-static {p1}, Landroidx/credentials/provider/x0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Landroidx/credentials/provider/y0;->a(Landroid/service/credentials/CallingAppInfo;)Landroid/content/pm/SigningInfo;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Landroidx/credentials/provider/t0;->a(Landroid/service/credentials/CallingAppInfo;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {v4, v3, v2, p1}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_7
    new-instance p1, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;

    .line 239
    .line 240
    invoke-direct {p1, v5, v0, v4}, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    .line 241
    .line 242
    .line 243
    :goto_4
    return-object p1
.end method

.method public final convertToJetpackResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Landroidx/credentials/provider/BeginCreateCredentialResponse;
    .locals 3
    .param p1    # Landroid/service/credentials/BeginCreateCredentialResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "frameworkResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/credentials/provider/utils/l;->a(Landroid/service/credentials/BeginCreateCredentialResponse;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;

    .line 15
    .line 16
    new-instance v2, Landroidx/credentials/provider/utils/r;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Landroidx/credentials/provider/utils/r;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;

    .line 26
    .line 27
    new-instance v2, Landroidx/credentials/provider/utils/s;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Landroidx/credentials/provider/utils/s;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;

    .line 37
    .line 38
    new-instance v2, Landroidx/credentials/provider/utils/t;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Landroidx/credentials/provider/utils/t;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "frameworkResponse.create\u2026lect(Collectors.toList())"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v0, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p1}, Landroidx/credentials/provider/utils/m;->a(Landroid/service/credentials/BeginCreateCredentialResponse;)Landroid/service/credentials/RemoteEntry;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    sget-object v1, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    .line 69
    .line 70
    invoke-static {p1}, Landroidx/credentials/provider/utils/n;->a(Landroid/service/credentials/RemoteEntry;)Landroid/app/slice/Slice;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v2, "it.slice"

    .line 75
    .line 76
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Landroidx/credentials/provider/RemoteEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/RemoteEntry;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 p1, 0x0

    .line 85
    :goto_0
    new-instance v1, Landroidx/credentials/provider/BeginCreateCredentialResponse;

    .line 86
    .line 87
    invoke-direct {v1, v0, p1}, Landroidx/credentials/provider/BeginCreateCredentialResponse;-><init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method
