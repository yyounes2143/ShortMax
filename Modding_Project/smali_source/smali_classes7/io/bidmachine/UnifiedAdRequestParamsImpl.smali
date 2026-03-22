.class public Lio/bidmachine/UnifiedAdRequestParamsImpl;
.super Ljava/lang/Object;
.source "UnifiedAdRequestParamsImpl.java"

# interfaces
.implements Lxq/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lxq/d;"
    }
.end annotation


# instance fields
.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestParametersType;"
        }
    .end annotation
.end field

.field private final dataRestrictions:Llp/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final deviceInfo:Llp/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final targetingInfo:Llp/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;",
            "Lio/bidmachine/TargetingParams;",
            "Llp/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 5
    .line 6
    new-instance p1, Lio/bidmachine/q5;

    .line 7
    .line 8
    invoke-direct {p1, p3, p2}, Lio/bidmachine/q5;-><init>(Llp/d;Lio/bidmachine/TargetingParams;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Llp/h;

    .line 12
    .line 13
    new-instance p1, Lio/bidmachine/x2;

    .line 14
    .line 15
    invoke-direct {p1, p3}, Lio/bidmachine/x2;-><init>(Llp/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->deviceInfo:Llp/e;

    .line 19
    .line 20
    iput-object p3, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Llp/d;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataRestrictions()Llp/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Llp/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceInfo()Llp/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->deviceInfo:Llp/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetingInfo()Llp/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Llp/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
