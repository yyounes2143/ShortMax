.class public final Lai/turbolink/sdk/TurboLink$InstallReferrerObj;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallReferrerObj"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$InstallReferrerObj;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static googlePlayInstantParam:Z

.field private static installBeginTimestampSeconds:J

.field private static installReferrer:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static referrerClickTimestampSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$InstallReferrerObj;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->installReferrer:Ljava/lang/String;

    .line 11
    .line 12
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
.method public final getGooglePlayInstantParam()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->googlePlayInstantParam:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInstallBeginTimestampSeconds()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->installBeginTimestampSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInstallReferrer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->installReferrer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReferrerClickTimestampSeconds()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->referrerClickTimestampSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setGooglePlayInstantParam(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->googlePlayInstantParam:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallBeginTimestampSeconds(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->installBeginTimestampSeconds:J

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallReferrer(Ljava/lang/String;)V
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
    sput-object p1, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->installReferrer:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setReferrerClickTimestampSeconds(J)V
    .locals 0

    .line 1
    sput-wide p1, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->referrerClickTimestampSeconds:J

    .line 2
    .line 3
    return-void
.end method
