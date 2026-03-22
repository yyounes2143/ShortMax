.class public final Landroidx/compose/ui/text/intl/PlatformLocaleKt;
.super Ljava/lang/Object;
.source "PlatformLocale.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;->createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 6
    .line 7
    return-void
.end method

.method public static final getPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 2
    .line 3
    return-object v0
.end method
