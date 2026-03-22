.class public final synthetic Lcom/applovin/impl/z9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/f0;

.field public final synthetic b:Landroid/hardware/SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/f0;Landroid/hardware/SensorEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/z9;->a:Lcom/applovin/impl/f0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/z9;->b:Landroid/hardware/SensorEventListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z9;->a:Lcom/applovin/impl/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/z9;->b:Landroid/hardware/SensorEventListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/f0;->b(Lcom/applovin/impl/f0;Landroid/hardware/SensorEventListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
