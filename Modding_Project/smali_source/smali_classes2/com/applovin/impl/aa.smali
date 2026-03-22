.class public final synthetic Lcom/applovin/impl/aa;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/f0;

.field public final synthetic b:Landroid/hardware/SensorEventListener;

.field public final synthetic c:Landroid/hardware/Sensor;

.field public final synthetic d:I

.field public final synthetic e:Lcom/applovin/impl/sdk/o;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/f0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/aa;->a:Lcom/applovin/impl/f0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/aa;->b:Landroid/hardware/SensorEventListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/aa;->c:Landroid/hardware/Sensor;

    .line 9
    .line 10
    iput p4, p0, Lcom/applovin/impl/aa;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/applovin/impl/aa;->e:Lcom/applovin/impl/sdk/o;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/aa;->a:Lcom/applovin/impl/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/aa;->b:Landroid/hardware/SensorEventListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/aa;->c:Landroid/hardware/Sensor;

    .line 6
    .line 7
    iget v3, p0, Lcom/applovin/impl/aa;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/applovin/impl/aa;->e:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/impl/f0;->a(Lcom/applovin/impl/f0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/o;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
