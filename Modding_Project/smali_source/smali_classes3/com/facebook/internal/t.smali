.class public final synthetic Lcom/facebook/internal/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/t;->a:Lcom/facebook/internal/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/t;->a:Lcom/facebook/internal/w;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/internal/w;->a(Lcom/facebook/internal/w;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
