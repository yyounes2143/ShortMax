.class final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;
.super Ljava/lang/Object;
.source "AdServicesInfo.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Extensions30ExtImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

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
.method public final getAdExtServicesVersionS()I
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    invoke-static {v0}, Lj/b;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
