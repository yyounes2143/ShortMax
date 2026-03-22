.class public final synthetic Lcom/adjust/sdk/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic b:Lcom/adjust/sdk/AdjustThirdPartySharing;


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/a0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/adjust/sdk/a0;->b:Lcom/adjust/sdk/AdjustThirdPartySharing;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/a0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/a0;->b:Lcom/adjust/sdk/AdjustThirdPartySharing;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->U(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
