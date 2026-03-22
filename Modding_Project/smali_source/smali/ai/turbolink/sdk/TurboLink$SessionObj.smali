.class public final Lai/turbolink/sdk/TurboLink$SessionObj;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionObj"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastBackgroundTime:J

.field private static previousRequestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static previousRequestResponseTime:J

.field private static previousRequestTotalTime:J

.field private static sessionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sessionInitParamTime:J

.field private static sessionUseVerify:I

.field private static verifyAppLinks:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static verifyScheme:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestId:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyScheme:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyAppLinks:Ljava/lang/String;

    .line 15
    .line 16
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionId:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getLastBackgroundTime()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$SessionObj;->lastBackgroundTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPreviousRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousRequestResponseTime()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestResponseTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPreviousRequestTotalTime()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestTotalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSessionInitParamTime()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionInitParamTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSessionUseVerify()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionUseVerify:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVerifyAppLinks()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyAppLinks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerifyScheme()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAndGetSessionId()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionId:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 16
    .line 17
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getUUID()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionId:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-wide v2, Lai/turbolink/sdk/TurboLink$SessionObj;->lastBackgroundTime:J

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v4, v2, v4

    .line 33
    .line 34
    if-lez v4, :cond_1

    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    const-wide/16 v2, 0x7530

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 44
    .line 45
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getUUID()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionId:Ljava/lang/String;

    .line 54
    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionId:Ljava/lang/String;

    .line 56
    .line 57
    return-object v0
.end method

.method public final setLastBackgroundTime(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$SessionObj;->lastBackgroundTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPreviousRequestId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    sput-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPreviousRequestResponseTime(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestResponseTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPreviousRequestTotalTime(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$SessionObj;->previousRequestTotalTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionInitParamTime(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionInitParamTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionUseVerify(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SessionObj;->sessionUseVerify:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVerifyAppLinks(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    sput-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyAppLinks:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setVerifyScheme(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    sput-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->verifyScheme:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
