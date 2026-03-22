.class public final synthetic Lio/bidmachine/m3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/protobuf/RequestTokenPayload$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/m3;->a:Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/m3;->a:Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setDeviceData(Lio/bidmachine/protobuf/sdk/Device$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method
