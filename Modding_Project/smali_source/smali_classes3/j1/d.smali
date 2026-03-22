.class public final synthetic Lj1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/drake/brv/PageRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/drake/brv/PageRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj1/d;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj1/d;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/drake/brv/PageRefreshLayout$b;->b(Lcom/drake/brv/PageRefreshLayout;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
