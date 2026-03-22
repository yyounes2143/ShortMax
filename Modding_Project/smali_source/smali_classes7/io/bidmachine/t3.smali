.class public final synthetic Lio/bidmachine/t3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/protobuf/sdk/Device$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/t3;->a:Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/t3;->a:Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 10
    .line 11
    .line 12
    return-void
.end method
