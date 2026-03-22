.class Lio/bidmachine/q5;
.super Ljava/lang/Object;
.source "TargetingInfoImpl.java"

# interfaces
.implements Llp/h;


# instance fields
.field private final a:Llp/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/TargetingParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Llp/d;Lio/bidmachine/TargetingParams;)V
    .locals 0
    .param p1    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/q5;->a:Llp/d;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/q5;->b:Lio/bidmachine/TargetingParams;

    .line 7
    .line 8
    return-void
.end method
