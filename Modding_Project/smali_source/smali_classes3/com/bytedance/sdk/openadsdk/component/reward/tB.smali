.class public Lcom/bytedance/sdk/openadsdk/component/reward/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;
    }
.end annotation


# instance fields
.field private Pfn:J

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Z

.field private cFZ:J

.field private ex:Z

.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

.field private so:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

.field private final tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ex:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->Pfn:J

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ba:Z

    .line 13
    .line 14
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/tB$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/tB;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-wide/16 v3, 0xa

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    double-to-long v5, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v5, v3

    .line 38
    :goto_0
    cmp-long v0, v5, v0

    .line 39
    .line 40
    if-gtz v0, :cond_1

    .line 41
    .line 42
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oJ(D)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-wide v3, v5

    .line 49
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 50
    .line 51
    const-wide/16 v0, 0x3e8

    .line 52
    .line 53
    mul-long/2addr v3, v0

    .line 54
    invoke-direct {p1, v3, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;-><init>(JLcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public BTZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Pfn()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ex()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ZYk()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public ZYk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->BTZ()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ba()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->jFA()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->cFZ()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->eZI()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(J)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->so:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;->oJ(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public ba()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->si()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public cFZ()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->cFZ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->PiB()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public jFA()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->eZI()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public kkU()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public oJ()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->kkU()V

    return-void
.end method

.method public oJ(J)V
    .locals 1

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->cFZ:J

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ(J)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->so:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    return-void
.end method

.method public oJ(ZI)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ex()V

    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ba:Z

    return-void
.end method

.method public oJ(F)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z
    .locals 4

    .line 7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->dLZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ba:Z

    .line 8
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->ZYk(J)V

    .line 10
    :cond_0
    const-string v0, "player_force_raw_url"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Z)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->dLZ()V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->so:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    if-eqz p1, :cond_2

    .line 14
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;->oJ(I)V

    :cond_2
    return v2
.end method

.method public si()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public so()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public tB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB$oJ;->dLZ()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->ba()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->jFA()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->cFZ()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->tB:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/tB;->so:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;->oJ(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
