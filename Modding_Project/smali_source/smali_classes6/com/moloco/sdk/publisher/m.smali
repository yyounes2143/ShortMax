.class public final synthetic Lcom/moloco/sdk/publisher/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/moloco/sdk/publisher/MolocoInitializationListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/publisher/m;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMolocoInitializationStatus(Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/m;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/moloco/sdk/publisher/MolocoSamplesKt;->g(Landroid/content/Context;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
