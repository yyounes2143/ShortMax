.class public final synthetic Lio/bidmachine/c5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/SessionManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/SessionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/c5;->a:Lio/bidmachine/SessionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/c5;->a:Lio/bidmachine/SessionManager;

    .line 2
    .line 3
    check-cast p1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/SessionManager;->c(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
