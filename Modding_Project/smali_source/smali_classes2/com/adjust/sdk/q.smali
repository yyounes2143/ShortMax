.class public final synthetic Lcom/adjust/sdk/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic b:Lcom/adjust/sdk/OnIsEnabledListener;


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/q;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/adjust/sdk/q;->b:Lcom/adjust/sdk/OnIsEnabledListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/q;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/q;->b:Lcom/adjust/sdk/OnIsEnabledListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->b(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnIsEnabledListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
