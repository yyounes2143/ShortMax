.class public final synthetic Lte/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lte/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lte/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
