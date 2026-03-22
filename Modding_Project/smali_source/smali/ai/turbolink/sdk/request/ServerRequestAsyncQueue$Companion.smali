.class public final Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;
.super Ljava/lang/Object;
.source "ServerRequestAsyncQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/request/ServerRequestAsyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lai/turbolink/sdk/request/ServerRequestAsyncQueue;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->access$setRequestQueueInstance$cp(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    invoke-static {}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->access$getRequestQueueInstance$cp()Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string p1, "requestQueueInstance"

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    :cond_0
    return-object p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0

    .line 39
    throw p1
.end method
