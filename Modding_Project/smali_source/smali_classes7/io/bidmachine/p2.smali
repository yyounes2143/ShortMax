.class public final synthetic Lio/bidmachine/p2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/protobuf/sdk/Placement$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/p2;->a:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/p2;->a:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/s2;->b(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
