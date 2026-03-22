.class public final synthetic Lcom/adjust/sdk/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/g0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/adjust/sdk/g0;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/adjust/sdk/g0;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/g0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/adjust/sdk/g0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/adjust/sdk/g0;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->s(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
