.class Lio/bidmachine/u$b;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/u;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/u;


# direct methods
.method constructor <init>(Lio/bidmachine/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/u$b;->a:Lio/bidmachine/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/u$b;->a:Lio/bidmachine/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Llp/a;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/u$b;->a:Lio/bidmachine/u;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lio/bidmachine/u;->h(Lio/bidmachine/u;Llp/a;)Llp/a;

    .line 21
    .line 22
    .line 23
    return-void
.end method
