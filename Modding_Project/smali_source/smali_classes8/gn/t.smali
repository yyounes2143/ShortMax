.class public final synthetic Lgn/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lcn/f;


# direct methods
.method public synthetic constructor <init>(Lcn/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgn/t;->a:Lcn/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgn/t;->a:Lcn/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcn/f;->h(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
