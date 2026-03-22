.class Lio/bidmachine/NetworkAdapter$a;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"

# interfaces
.implements Lio/bidmachine/NetworkInitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/NetworkAdapter;


# direct methods
.method constructor <init>(Lio/bidmachine/NetworkAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lio/bidmachine/InternalNetworkInitializationCallback;

    .line 41
    .line 42
    iget-object v2, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 43
    .line 44
    invoke-interface {v1, v2, p1}, Lio/bidmachine/InternalNetworkInitializationCallback;->onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 49
    .line 50
    invoke-static {p1}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$000(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$100(Lio/bidmachine/NetworkAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 22
    .line 23
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lio/bidmachine/InternalNetworkInitializationCallback;

    .line 42
    .line 43
    iget-object v2, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 44
    .line 45
    invoke-interface {v1, v2}, Lio/bidmachine/InternalNetworkInitializationCallback;->onSuccess(Lio/bidmachine/NetworkAdapter;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkAdapter$a;->a:Lio/bidmachine/NetworkAdapter;

    .line 50
    .line 51
    invoke-static {v0}, Lio/bidmachine/NetworkAdapter;->access$200(Lio/bidmachine/NetworkAdapter;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
