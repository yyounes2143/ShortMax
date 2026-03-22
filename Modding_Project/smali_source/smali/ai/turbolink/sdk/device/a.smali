.class public final synthetic Lai/turbolink/sdk/device/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lai/turbolink/sdk/device/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lai/turbolink/sdk/device/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/turbolink/sdk/device/a;->a:Lai/turbolink/sdk/device/DeviceInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/device/a;->a:Lai/turbolink/sdk/device/DeviceInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lai/turbolink/sdk/device/DeviceInfo;->a(Lai/turbolink/sdk/device/DeviceInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
