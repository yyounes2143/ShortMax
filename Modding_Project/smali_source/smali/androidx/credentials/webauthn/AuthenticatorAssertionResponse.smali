.class public final Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;
.super Ljava/lang/Object;
.source "AuthenticatorAssertionResponse.kt"

# interfaces
.implements Landroidx/credentials/webauthn/AuthenticatorResponse;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private authenticatorData:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final be:Z

.field private final bs:Z

.field private final clientDataHash:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clientJson:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final credentialId:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final origin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private signature:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final up:Z

.field private userHandle:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uv:Z


# direct methods
.method public constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V
    .locals 2
    .param p1    # Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "requestOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userHandle"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;

    .line 3
    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->credentialId:[B

    .line 4
    iput-object p3, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->origin:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->up:Z

    .line 6
    iput-boolean p5, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->uv:Z

    .line 7
    iput-boolean p6, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->be:Z

    .line 8
    iput-boolean p7, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->bs:Z

    .line 9
    iput-object p8, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->userHandle:[B

    .line 10
    iput-object p9, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->packageName:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 13
    new-array p2, p2, [B

    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    .line 14
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "type"

    const-string p5, "webauthn.get"

    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    sget-object p4, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {p1}, Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;->getChallenge()[B

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p4, "challenge"

    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p9, :cond_0

    .line 17
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "androidPackageName"

    invoke-virtual {p1, p2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->defaultAuthenticatorData()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 19
    invoke-direct/range {v3 .. v13}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;-><init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public final dataToSign()[B
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "clientJson.toString()"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v0, "md.digest(clientJson.toString().toByteArray())"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/collections/n;->J([B[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public final defaultAuthenticatorData()[B
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const-string v2, "SHA-256"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;->getRpId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "this as java.lang.String).getBytes(charset)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-boolean v3, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->up:Z

    .line 31
    .line 32
    iget-boolean v4, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->uv:Z

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    or-int/2addr v3, v1

    .line 37
    :cond_0
    iget-boolean v4, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->be:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    or-int/lit8 v3, v3, 0x8

    .line 42
    .line 43
    :cond_1
    iget-boolean v4, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->bs:Z

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x10

    .line 48
    .line 49
    :cond_2
    const-string v4, "rpHash"

    .line 50
    .line 51
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    int-to-byte v3, v3

    .line 55
    const/4 v4, 0x1

    .line 56
    new-array v4, v4, [B

    .line 57
    .line 58
    aput-byte v3, v4, v0

    .line 59
    .line 60
    invoke-static {v2, v4}, Lkotlin/collections/n;->J([B[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-array v1, v1, [B

    .line 65
    .line 66
    fill-array-data v1, :array_0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/collections/n;->J([B[B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    nop

    .line 75
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final getAuthenticatorData()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getClientJson()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignature()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public json()Lorg/json/JSONObject;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "clientJson.toString()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    sget-object v2, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "clientDataJSON"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    :cond_0
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "authenticatorData"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "signature"

    .line 65
    .line 66
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->userHandle:[B

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "userHandle"

    .line 76
    .line 77
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public final setAuthenticatorData([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    .line 7
    .line 8
    return-void
.end method

.method public setClientJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method

.method public final setSignature([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    .line 7
    .line 8
    return-void
.end method
