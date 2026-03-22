.class public final synthetic Lcom/appsflyer/internal/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appsflyer/internal/AFj1sSDK;

.field public final synthetic b:Lcom/appsflyer/internal/AFi1aSDK;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFj1sSDK;Lcom/appsflyer/internal/AFi1aSDK;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/l0;->a:Lcom/appsflyer/internal/AFj1sSDK;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/l0;->b:Lcom/appsflyer/internal/AFi1aSDK;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/appsflyer/internal/l0;->c:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/l0;->a:Lcom/appsflyer/internal/AFj1sSDK;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/l0;->b:Lcom/appsflyer/internal/AFi1aSDK;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/appsflyer/internal/l0;->c:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFj1sSDK;->d(Lcom/appsflyer/internal/AFj1sSDK;Lcom/appsflyer/internal/AFi1aSDK;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
