.class synthetic Lcom/amazonaws/mobile/client/AWSMobileClient$29;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/client/results/SignInState;->values()[Lcom/amazonaws/mobile/client/results/SignInState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->b:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/amazonaws/mobile/client/results/SignInState;->SMS_MFA:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->b:[I

    .line 21
    .line 22
    sget-object v3, Lcom/amazonaws/mobile/client/results/SignInState;->NEW_PASSWORD_REQUIRED:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->b:[I

    .line 32
    .line 33
    sget-object v4, Lcom/amazonaws/mobile/client/results/SignInState;->CUSTOM_CHALLENGE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    const/4 v3, 0x4

    .line 42
    :try_start_3
    sget-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->b:[I

    .line 43
    .line 44
    sget-object v5, Lcom/amazonaws/mobile/client/results/SignInState;->DONE:Lcom/amazonaws/mobile/client/results/SignInState;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    .line 52
    :catch_3
    invoke-static {}, Lcom/amazonaws/mobile/client/UserState;->values()[Lcom/amazonaws/mobile/client/UserState;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    array-length v4, v4

    .line 57
    new-array v4, v4, [I

    .line 58
    .line 59
    sput-object v4, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 60
    .line 61
    :try_start_4
    sget-object v5, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 68
    .line 69
    :catch_4
    :try_start_5
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 70
    .line 71
    sget-object v4, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 78
    .line 79
    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 80
    .line 81
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 88
    .line 89
    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 90
    .line 91
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 98
    .line 99
    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 100
    .line 101
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x5

    .line 108
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 109
    .line 110
    :catch_8
    return-void
.end method
