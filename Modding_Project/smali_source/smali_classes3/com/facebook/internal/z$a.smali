.class final Lcom/facebook/internal/z$a;
.super Ljava/lang/Object;
.source "ImageDownloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/internal/z$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/internal/z$d;Z)V
    .locals 1
    .param p1    # Lcom/facebook/internal/z$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

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
    iput-object p1, p0, Lcom/facebook/internal/z$a;->a:Lcom/facebook/internal/z$d;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/facebook/internal/z$a;->b:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/z;->a:Lcom/facebook/internal/z;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/facebook/internal/z$a;->a:Lcom/facebook/internal/z$d;

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/facebook/internal/z$a;->b:Z

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/z;->c(Lcom/facebook/internal/z;Lcom/facebook/internal/z$d;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
