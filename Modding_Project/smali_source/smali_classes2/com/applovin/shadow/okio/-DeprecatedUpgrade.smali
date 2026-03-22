.class public final Lcom/applovin/shadow/okio/-DeprecatedUpgrade;
.super Ljava/lang/Object;
.source "DeprecatedUpgrade.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final Okio:Lcom/applovin/shadow/okio/-DeprecatedOkio;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Utf8:Lcom/applovin/shadow/okio/-DeprecatedUtf8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okio/-DeprecatedOkio;->INSTANCE:Lcom/applovin/shadow/okio/-DeprecatedOkio;

    .line 2
    .line 3
    sput-object v0, Lcom/applovin/shadow/okio/-DeprecatedUpgrade;->Okio:Lcom/applovin/shadow/okio/-DeprecatedOkio;

    .line 4
    .line 5
    sget-object v0, Lcom/applovin/shadow/okio/-DeprecatedUtf8;->INSTANCE:Lcom/applovin/shadow/okio/-DeprecatedUtf8;

    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okio/-DeprecatedUpgrade;->Utf8:Lcom/applovin/shadow/okio/-DeprecatedUtf8;

    .line 8
    .line 9
    return-void
.end method

.method public static final getOkio()Lcom/applovin/shadow/okio/-DeprecatedOkio;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/applovin/shadow/okio/-DeprecatedUpgrade;->Okio:Lcom/applovin/shadow/okio/-DeprecatedOkio;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getUtf8()Lcom/applovin/shadow/okio/-DeprecatedUtf8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/applovin/shadow/okio/-DeprecatedUpgrade;->Utf8:Lcom/applovin/shadow/okio/-DeprecatedUtf8;

    .line 2
    .line 3
    return-object v0
.end method
