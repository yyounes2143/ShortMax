.class Lio/bidmachine/g4;
.super Ljava/lang/Object;
.source "InitializationParamsImpl.java"

# interfaces
.implements Lio/bidmachine/InitializationParams;


# instance fields
.field private final a:Llp/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Llp/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/TargetingParams;Llp/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/q5;

    .line 5
    .line 6
    invoke-direct {v0, p2, p1}, Lio/bidmachine/q5;-><init>(Llp/d;Lio/bidmachine/TargetingParams;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/g4;->a:Llp/h;

    .line 10
    .line 11
    iput-object p2, p0, Lio/bidmachine/g4;->b:Llp/d;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getDataRestrictions()Llp/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/g4;->b:Llp/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetingInfo()Llp/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/g4;->a:Llp/h;

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
