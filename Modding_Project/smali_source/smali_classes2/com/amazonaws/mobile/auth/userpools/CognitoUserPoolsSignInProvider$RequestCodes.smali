.class final enum Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;
.super Ljava/lang/Enum;
.source "CognitoUserPoolsSignInProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

.field public static final enum FORCE_CHANGE_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

.field public static final enum FORGOT_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

.field public static final enum MFA_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

.field public static final enum SIGN_UP_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

.field public static final enum VERIFICATION_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x299a

    .line 5
    .line 6
    const-string v3, "FORGOT_PASSWORD_REQUEST_CODE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->FORGOT_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 12
    .line 13
    new-instance v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x299b

    .line 17
    .line 18
    const-string v4, "SIGN_UP_REQUEST_CODE"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->SIGN_UP_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 24
    .line 25
    new-instance v2, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x299c

    .line 29
    .line 30
    const-string v5, "MFA_REQUEST_CODE"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->MFA_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 36
    .line 37
    new-instance v3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/16 v5, 0x299d

    .line 41
    .line 42
    const-string v6, "VERIFICATION_REQUEST_CODE"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->VERIFICATION_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 48
    .line 49
    new-instance v4, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const/16 v6, 0x299e

    .line 53
    .line 54
    const-string v7, "FORCE_CHANGE_PASSWORD_REQUEST_CODE"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->FORCE_CHANGE_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 60
    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->$VALUES:[Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    .line 5
    .line 6
    return-void
.end method

.method static valueOf(I)Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;
    .locals 7

    .line 2
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "valueOf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->values()[Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "valueOf: compare "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v4, v3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->$VALUES:[Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 8
    .line 9
    return-object v0
.end method
