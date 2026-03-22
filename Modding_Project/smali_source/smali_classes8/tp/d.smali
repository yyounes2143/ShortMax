.class public final synthetic Ltp/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltp/d;->a:Lio/bidmachine/rendering/internal/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/d;->a:Lio/bidmachine/rendering/internal/a;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/internal/a;->a(Lio/bidmachine/rendering/internal/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
