.class Lcom/adjust/sdk/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/AdjustAttribution;

.field public final synthetic b:Lcom/adjust/sdk/AdjustInstance$l;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance$l;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/h1;->b:Lcom/adjust/sdk/AdjustInstance$l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/h1;->a:Lcom/adjust/sdk/AdjustAttribution;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/h1;->b:Lcom/adjust/sdk/AdjustInstance$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$l;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/adjust/sdk/h1;->a:Lcom/adjust/sdk/AdjustAttribution;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnAttributionReadListener;->onAttributionRead(Lcom/adjust/sdk/AdjustAttribution;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
