.class Lcom/applovin/impl/v1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/v1;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/v1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object v0, v0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object v1, v1, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detection_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",total_checks="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "details"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/c2;->x0:Lcom/applovin/impl/c2;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void
.end method

.method public a(III)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object v0, v0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object v1, v1, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detections_to_report="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",detection_count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",total_checks="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "details"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/c2;->y0:Lcom/applovin/impl/c2;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object p2, Lcom/applovin/impl/v4;->f6:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    invoke-virtual {p1}, Lcom/applovin/impl/v1;->w()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object p2, Lcom/applovin/impl/v4;->P0:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p2, p2, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/m;->c(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object p2, Lcom/applovin/impl/v4;->b6:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    const-string p2, "black_view_auto_dismiss"

    invoke-virtual {p1, p2}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p2, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object p3, Lcom/applovin/impl/v4;->c6:Lcom/applovin/impl/v4;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/v1;Z)Z

    .line 16
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    iget-object p1, p1, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object p2, Lcom/applovin/impl/v4;->d6:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/applovin/impl/v1$f;->a:Lcom/applovin/impl/v1;

    invoke-virtual {p1}, Lcom/applovin/impl/v1;->z()V

    :cond_3
    :goto_0
    return-void
.end method
