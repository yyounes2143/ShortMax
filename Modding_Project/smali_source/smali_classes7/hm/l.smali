.class public Lhm/l;
.super Ljava/lang/Object;
.source "InternalAdLoadData.java"


# instance fields
.field private final a:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhm/l;->a:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 5
    .line 6
    iput-object p2, p0, Lhm/l;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lhm/l;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lhm/l;->a:Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 2
    .line 3
    return-object v0
.end method
