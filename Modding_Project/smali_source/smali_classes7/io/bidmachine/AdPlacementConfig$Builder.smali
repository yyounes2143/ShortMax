.class public final Lio/bidmachine/AdPlacementConfig$Builder;
.super Ljava/lang/Object;
.source "AdPlacementConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdPlacementConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adsFormat:Lio/bidmachine/AdsFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private customParams:Lio/bidmachine/CustomParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placementId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsFormat;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adsFormat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final build()Lio/bidmachine/AdPlacementConfig;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/AdPlacementConfig$Builder;->placementId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/AdPlacementConfig$Builder;->customParams:Lio/bidmachine/CustomParams;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/AdPlacementConfig;-><init>(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final withCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig$Builder;
    .locals 0
    .param p1    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->customParams:Lio/bidmachine/CustomParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public final withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
