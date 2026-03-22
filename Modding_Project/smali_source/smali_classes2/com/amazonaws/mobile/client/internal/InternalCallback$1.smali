.class Lcom/amazonaws/mobile/client/internal/InternalCallback$1;
.super Ljava/lang/Object;
.source "InternalCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/amazonaws/mobile/client/internal/InternalCallback;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
