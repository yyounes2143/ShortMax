.class Ljr/a$a;
.super Ljava/lang/Object;
.source "BackgroundTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic b:Ljr/a;


# direct methods
.method public constructor <init>(Ljr/a;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Ljr/a$a;->b:Ljr/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Ljr/a$a;->a:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljr/a$a;->b:Ljr/a;

    .line 2
    .line 3
    iget-object v1, p0, Ljr/a$a;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljr/a;->a(Ljr/a;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ljr/a$a;->a:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
