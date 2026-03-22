.class public final enum Lcom/facebook/login/LoginBehavior;
.super Ljava/lang/Enum;
.source "LoginBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/LoginBehavior;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/LoginBehavior;

.field public static final enum DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

.field public static final enum DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

.field public static final enum WEB_ONLY:Lcom/facebook/login/LoginBehavior;


# instance fields
.field private final allowsCustomTabAuth:Z

.field private final allowsDeviceAuth:Z

.field private final allowsFacebookLiteAuth:Z

.field private final allowsGetTokenAuth:Z

.field private final allowsInstagramAppAuth:Z

.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method private static final synthetic $values()[Lcom/facebook/login/LoginBehavior;
    .locals 6

    .line 1
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 6
    .line 7
    sget-object v3, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 8
    .line 9
    sget-object v4, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 10
    .line 11
    sget-object v5, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/facebook/login/LoginBehavior;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v10, Lcom/facebook/login/LoginBehavior;

    .line 2
    .line 3
    const/4 v8, 0x1

    .line 4
    const/4 v9, 0x1

    .line 5
    const-string v1, "NATIVE_WITH_FALLBACK"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    move-object v0, v10

    .line 14
    invoke-direct/range {v0 .. v9}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 15
    .line 16
    .line 17
    sput-object v10, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 18
    .line 19
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    .line 20
    .line 21
    const/16 v19, 0x1

    .line 22
    .line 23
    const/16 v20, 0x1

    .line 24
    .line 25
    const-string v12, "NATIVE_ONLY"

    .line 26
    .line 27
    const/4 v13, 0x1

    .line 28
    const/4 v14, 0x1

    .line 29
    const/4 v15, 0x1

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    move-object v11, v0

    .line 37
    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 41
    .line 42
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const-string v2, "KATANA_ONLY"

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 57
    .line 58
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    .line 59
    .line 60
    const/16 v19, 0x0

    .line 61
    .line 62
    const/16 v20, 0x0

    .line 63
    .line 64
    const-string v12, "WEB_ONLY"

    .line 65
    .line 66
    const/4 v13, 0x3

    .line 67
    const/4 v14, 0x0

    .line 68
    const/4 v15, 0x0

    .line 69
    const/16 v16, 0x1

    .line 70
    .line 71
    const/16 v18, 0x1

    .line 72
    .line 73
    move-object v11, v0

    .line 74
    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 78
    .line 79
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    const/4 v10, 0x1

    .line 83
    const-string v2, "DIALOG_ONLY"

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    const/4 v6, 0x1

    .line 87
    const/4 v8, 0x1

    .line 88
    move-object v1, v0

    .line 89
    invoke-direct/range {v1 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 93
    .line 94
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    .line 95
    .line 96
    const-string v12, "DEVICE_AUTH"

    .line 97
    .line 98
    const/4 v13, 0x5

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v17, 0x1

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    move-object v11, v0

    .line 106
    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZZ)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    .line 110
    .line 111
    invoke-static {}, Lcom/facebook/login/LoginBehavior;->$values()[Lcom/facebook/login/LoginBehavior;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    .line 116
    .line 117
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth:Z

    .line 17
    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/login/LoginBehavior;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/login/LoginBehavior;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/login/LoginBehavior;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final allowsCustomTabAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsDeviceAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsFacebookLiteAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsGetTokenAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsInstagramAppAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsKatanaAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    .line 2
    .line 3
    return v0
.end method

.method public final allowsWebViewAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    .line 2
    .line 3
    return v0
.end method
