.class final Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TurboLinkActivitySession.kt"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/p<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;->INSTANCE:Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$1;->invoke(ZLjava/lang/String;JJZ)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;JJZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$InstallReferrerObj;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->setInstallReferrer(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p7}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->setGooglePlayInstantParam(Z)V

    .line 4
    invoke-virtual {p1, p5, p6}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->setInstallBeginTimestampSeconds(J)V

    .line 5
    invoke-virtual {p1, p3, p4}, Lai/turbolink/sdk/TurboLink$InstallReferrerObj;->setReferrerClickTimestampSeconds(J)V

    :cond_1
    return-void
.end method
