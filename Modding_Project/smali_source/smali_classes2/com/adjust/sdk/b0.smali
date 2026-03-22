.class public final synthetic Lcom/adjust/sdk/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/b0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/adjust/sdk/b0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/b0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/b0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/ActivityHandler;->t(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
