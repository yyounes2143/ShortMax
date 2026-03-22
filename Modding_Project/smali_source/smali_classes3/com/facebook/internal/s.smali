.class public final synthetic Lcom/facebook/internal/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/FetchedAppSettingsManager$a;

.field public final synthetic b:Lcom/facebook/internal/p;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/s;->a:Lcom/facebook/internal/FetchedAppSettingsManager$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/internal/s;->b:Lcom/facebook/internal/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/s;->a:Lcom/facebook/internal/FetchedAppSettingsManager$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/internal/s;->b:Lcom/facebook/internal/p;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->c(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
