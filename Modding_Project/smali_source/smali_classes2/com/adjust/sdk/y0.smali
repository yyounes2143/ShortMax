.class public final synthetic Lcom/adjust/sdk/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic b:Lcom/adjust/sdk/AdjustDeeplink;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/y0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/adjust/sdk/y0;->b:Lcom/adjust/sdk/AdjustDeeplink;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/adjust/sdk/y0;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/y0;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/y0;->b:Lcom/adjust/sdk/AdjustDeeplink;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/adjust/sdk/y0;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->X(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
