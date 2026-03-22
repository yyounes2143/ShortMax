.class final synthetic Lkotlinx/coroutines/sync/MutexImpl$onLock$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Mutex.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/MutexImpl;->getOnLock()Lpt/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lat/n<",
        "Lkotlinx/coroutines/sync/MutexImpl;",
        "Lpt/i<",
        "*>;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/sync/MutexImpl$onLock$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$onLock$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl$onLock$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl$onLock$1;->a:Lkotlinx/coroutines/sync/MutexImpl$onLock$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    const-class v2, Lkotlinx/coroutines/sync/MutexImpl;

    .line 6
    .line 7
    const-string v3, "onLockRegFunction"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Lkotlinx/coroutines/sync/MutexImpl;Lpt/i;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/MutexImpl;",
            "Lpt/i<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexImpl;->B(Lpt/i;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    .line 3
    check-cast p2, Lpt/i;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/MutexImpl$onLock$1;->b(Lkotlinx/coroutines/sync/MutexImpl;Lpt/i;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p1
.end method
