.class Lcom/adjust/sdk/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/adjust/sdk/ActivityHandler;

.field public final b:Ljava/util/ArrayList;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/i1;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/adjust/sdk/i1;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/adjust/sdk/i1;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/adjust/sdk/i1;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/i1;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustConfig;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Enqueuing \""

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, "\" action to be executed after first session delay ends"

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0, p2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/adjust/sdk/i1;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/adjust/sdk/i1;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/i1;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustConfig;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Enqueuing \""

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "\" action to be executed after first session delay ends"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/adjust/sdk/i1;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lcom/adjust/sdk/AdjustConfig;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/i1;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 56
    .line 57
    invoke-interface {p2, p1}, Lcom/adjust/sdk/IRunActivityHandler;->run(Lcom/adjust/sdk/ActivityHandler;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
