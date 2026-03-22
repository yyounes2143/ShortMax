.class public final Lio/bidmachine/AdCridThreadHandler;
.super Ljava/lang/Object;
.source "AdCridThreadHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tag:Lfr/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "crid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lfr/j;

    .line 10
    .line 11
    const-string v1, "AdCridThreadManager"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lfr/j;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "io.bidmachine.crid."

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Lio/bidmachine/a;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lio/bidmachine/a;-><init>(Lio/bidmachine/AdCridThreadHandler;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->runnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/Thread;

    .line 45
    .line 46
    invoke-direct {v1, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/AdCridThreadHandler;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/AdCridThreadHandler;->runnable$lambda$0(Lio/bidmachine/AdCridThreadHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final runnable$lambda$0(Lio/bidmachine/AdCridThreadHandler;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lfr/j;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, " started"

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-wide v1, 0x7fffffffffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lfr/j;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " stopped"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
