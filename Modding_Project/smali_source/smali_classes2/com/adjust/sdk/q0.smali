.class public final synthetic Lcom/adjust/sdk/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/q0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/q0;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->O(Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
