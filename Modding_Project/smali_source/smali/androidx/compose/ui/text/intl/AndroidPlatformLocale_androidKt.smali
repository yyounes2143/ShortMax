.class public final Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;
.super Ljava/lang/Object;
.source "AndroidPlatformLocale.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
