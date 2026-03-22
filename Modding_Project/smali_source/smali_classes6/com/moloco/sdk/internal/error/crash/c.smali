.class public final synthetic Lcom/moloco/sdk/internal/error/crash/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/error/crash/b;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/internal/error/crash/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/c;->a:Lcom/moloco/sdk/internal/error/crash/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/crash/c;->a:Lcom/moloco/sdk/internal/error/crash/b;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/moloco/sdk/internal/error/crash/b$a;->i(Lcom/moloco/sdk/internal/error/crash/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
