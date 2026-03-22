.class public final synthetic Lcom/applovin/impl/fa;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/g5;

.field public final synthetic b:Ljava/lang/Thread;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/g5;Ljava/lang/Thread;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/fa;->a:Lcom/applovin/impl/g5;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/fa;->b:Ljava/lang/Thread;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/applovin/impl/fa;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/fa;->a:Lcom/applovin/impl/g5;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/fa;->b:Ljava/lang/Thread;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/fa;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/g5;->a(Lcom/applovin/impl/g5;Ljava/lang/Thread;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
