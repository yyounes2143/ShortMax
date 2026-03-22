.class public final synthetic Lai/turbolink/sdk/request/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgt/g0;

.field public final synthetic b:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;


# direct methods
.method public synthetic constructor <init>(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/turbolink/sdk/request/a;->a:Lgt/g0;

    .line 5
    .line 6
    iput-object p2, p0, Lai/turbolink/sdk/request/a;->b:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/a;->a:Lgt/g0;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/request/a;->b:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->i(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
