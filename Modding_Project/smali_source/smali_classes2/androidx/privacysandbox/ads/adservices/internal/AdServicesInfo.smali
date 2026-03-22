.class public final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.super Ljava/lang/Object;
.source "AdServicesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;,
        Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    .line 7
    .line 8
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
.method public final adServicesVersion()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;->getAdServicesVersion()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final extServicesVersionS()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->getAdExtServicesVersionS()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_1
    return v0
.end method
