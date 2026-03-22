.class public final synthetic Lqt/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqt/b;->a:Lkotlinx/coroutines/sync/MutexImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lqt/b;->a:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    .line 3
    check-cast p1, Lpt/i;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/sync/MutexImpl;->u(Lkotlinx/coroutines/sync/MutexImpl;Lpt/i;Ljava/lang/Object;Ljava/lang/Object;)Lat/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
