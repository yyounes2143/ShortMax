.class public final Landroidx/credentials/provider/CallingAppInfo;
.super Ljava/lang/Object;
.source "CallingAppInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CallingAppInfo$Companion;,
        Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CallingAppInfo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final origin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final signingInfo:Landroid/content/pm/SigningInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/SigningInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/SigningInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 5
    iput-object p3, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-void
.end method

.method private final isAppPrivileged(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/utils/PrivilegedApp;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/provider/utils/PrivilegedApp;

    .line 2
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getFingerprints()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isAppPrivileged(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;

    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;-><init>(Landroid/content/pm/SigningInfo;)V

    .line 6
    invoke-virtual {v0, p1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;->verifySignatureFingerprints(Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "privilegedAllowlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroidx/credentials/provider/utils/RequestValidationUtil;->Companion:Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;->extractPrivilegedApps$credentials_release(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Origin is not being returned as the calling app did notmatch the privileged allowlist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "privilegedAllowlist must be formatted properly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v0, "privilegedAllowlist must not be empty, and must be a valid JSON"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isOriginPopulated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
