.class public final synthetic Lio/bidmachine/h5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/protobuf/sdk/ContextualData$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/h5;->a:Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/h5;->a:Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setData(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method
