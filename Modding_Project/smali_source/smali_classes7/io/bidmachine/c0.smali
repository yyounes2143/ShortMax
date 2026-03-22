.class public final synthetic Lio/bidmachine/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
