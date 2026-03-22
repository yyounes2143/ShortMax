.class public final synthetic Lio/bidmachine/d4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/e4$d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/e4$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/d4;->a:Lio/bidmachine/e4$d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/d4;->a:Lio/bidmachine/e4$d;

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/e4$b;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/e4$d;->c(Lio/bidmachine/e4$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
