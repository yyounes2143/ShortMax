.class public abstract Lcom/applovin/impl/e3;
.super Lcom/applovin/impl/v2;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/x2;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/v2;-><init>(Lcom/applovin/impl/x2;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h3;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/v4;->u1:Lcom/applovin/impl/v4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x42c80000    # 100.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    const-string/jumbo v1, "viewability_min_alpha"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public e0()I
    .locals 2

    .line 1
    const-string/jumbo v0, "viewability_min_pixels"

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public f0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/applovin/impl/v4;->n1:Lcom/applovin/impl/v4;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/applovin/impl/v4;->p1:Lcom/applovin/impl/v4;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/applovin/impl/v4;->r1:Lcom/applovin/impl/v4;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 27
    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    sget-object v0, Lcom/applovin/impl/v4;->t1:Lcom/applovin/impl/v4;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v1, p0, Lcom/applovin/impl/h3;->a:Lcom/applovin/impl/sdk/k;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string/jumbo v1, "viewability_min_height"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    return v0
.end method

.method public g0()F
    .locals 2

    .line 1
    const-string/jumbo v0, "viewability_min_percentage_dp"

    .line 2
    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public h0()F
    .locals 2

    .line 1
    const-string/jumbo v0, "viewability_min_percentage_pixels"

    .line 2
    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public i0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h3;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/v4;->v1:Lcom/applovin/impl/v4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-string/jumbo v2, "viewability_timer_min_visible_ms"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public j0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/applovin/impl/v4;->m1:Lcom/applovin/impl/v4;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/applovin/impl/v4;->o1:Lcom/applovin/impl/v4;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/applovin/impl/v4;->q1:Lcom/applovin/impl/v4;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 27
    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    sget-object v0, Lcom/applovin/impl/v4;->s1:Lcom/applovin/impl/v4;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v1, p0, Lcom/applovin/impl/h3;->a:Lcom/applovin/impl/sdk/k;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string/jumbo v1, "viewability_min_width"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/h3;->a(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    return v0
.end method

.method public k0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/e3;->e0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/e3;->g0()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/applovin/impl/e3;->h0()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    return v0
.end method
