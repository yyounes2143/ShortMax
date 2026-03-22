.class public Lcom/ss/texturerender/math/Vector3d;
.super Ljava/lang/Object;
.source "Vector3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/math/Vector3d;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 6
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 7
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-void
.end method

.method public constructor <init>([F)V
    .locals 19

    move-object/from16 v0, p0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 9
    aget v1, p1, v1

    float-to-double v1, v1

    const/4 v3, 0x4

    aget v3, p1, v3

    const/16 v3, 0x8

    aget v3, p1, v3

    const/4 v3, 0x1

    .line 10
    aget v3, p1, v3

    float-to-double v3, v3

    const/4 v5, 0x5

    aget v5, p1, v5

    float-to-double v5, v5

    const/16 v7, 0x9

    aget v7, p1, v7

    float-to-double v7, v7

    const/4 v9, 0x2

    .line 11
    aget v9, p1, v9

    float-to-double v9, v9

    const/4 v11, 0x6

    aget v11, p1, v11

    float-to-double v11, v11

    const/16 v13, 0xa

    aget v13, p1, v13

    float-to-double v13, v13

    mul-double v15, v1, v1

    mul-double v17, v3, v3

    add-double v15, v15, v17

    move-wide/from16 v17, v1

    .line 12
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v15, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v15, v1, v15

    if-gez v15, :cond_0

    neg-double v3, v7

    .line 13
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/ss/texturerender/math/Vector3d;->x:D

    neg-double v3, v9

    .line 14
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->y:D

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->z:D

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/ss/texturerender/math/Vector3d;->x:D

    neg-double v5, v9

    .line 17
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->y:D

    move-wide/from16 v1, v17

    .line 18
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 19
    :goto_0
    iget-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->x:D

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 20
    iget-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double/2addr v1, v3

    div-double/2addr v1, v5

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 21
    iget-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double/2addr v1, v3

    div-double/2addr v1, v5

    iput-wide v1, v0, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-void
.end method

.method public static add(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;
    .locals 8

    .line 2
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v5, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide p0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    add-double/2addr v5, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    return-object v7
.end method

.method public static add(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    add-double v5, v0, v2

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    add-double v7, v0, v2

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide p0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    add-double v9, v0, p0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    return-void
.end method

.method public static cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;
    .locals 14

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double v4, v0, v2

    iget-wide v8, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide v10, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double v12, v8, v10

    sub-double/2addr v4, v12

    iget-wide v12, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v8, v12

    iget-wide p0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v2, p0

    sub-double/2addr v8, v2

    mul-double/2addr p0, v10

    mul-double/2addr v0, v12

    sub-double/2addr p0, v0

    move-object v0, v7

    move-wide v1, v4

    move-wide v3, v8

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    return-object v7
.end method

.method public static cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-wide v2, v0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v4, v1, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide v10, v1, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double v12, v8, v10

    sub-double v15, v6, v12

    iget-wide v6, v1, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v8, v6

    iget-wide v0, v0, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v4, v0

    sub-double v17, v8, v4

    mul-double/2addr v0, v10

    mul-double/2addr v2, v6

    sub-double v19, v0, v2

    move-object/from16 v14, p2

    invoke-virtual/range {v14 .. v20}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    return-void
.end method

.method public static dot(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 4
    .line 5
    mul-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 7
    .line 8
    iget-wide v4, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 9
    .line 10
    mul-double/2addr v2, v4

    .line 11
    add-double/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 13
    .line 14
    iget-wide p0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 15
    .line 16
    mul-double/2addr v2, p0

    .line 17
    add-double/2addr v0, v2

    .line 18
    return-wide v0
.end method

.method public static largestAbsComponent(Lcom/ss/texturerender/math/Vector3d;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 14
    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    cmpl-double p0, v0, v2

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    cmpl-double p0, v0, v4

    .line 25
    .line 26
    if-lez p0, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    cmpl-double p0, v2, v4

    .line 31
    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    :cond_1
    :goto_0
    return v6
.end method

.method public static ortho(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/ss/texturerender/math/Vector3d;->largestAbsComponent(Lcom/ss/texturerender/math/Vector3d;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->setZero()V

    .line 11
    .line 12
    .line 13
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/texturerender/math/Vector3d;->setComponent(ID)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p1}, Lcom/ss/texturerender/math/Vector3d;->cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Vector3d;->normalize()Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static scale(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Vector3d;
    .locals 8

    .line 4
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    return-object v7
.end method

.method public static sub(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V
    .locals 11

    .line 2
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    sub-double v5, v0, v2

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    sub-double v7, v0, v2

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide p0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    sub-double v9, v0, p0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    return-void
.end method


# virtual methods
.method public devide(D)Lcom/ss/texturerender/math/Vector3d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    .line 3
    div-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 7
    .line 8
    div-double/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 12
    .line 13
    div-double/2addr v0, p1

    .line 14
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 15
    .line 16
    return-object p0
.end method

.method public length()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    .line 3
    mul-double/2addr v0, v0

    .line 4
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 5
    .line 6
    mul-double/2addr v2, v2

    .line 7
    add-double/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 9
    .line 10
    mul-double/2addr v2, v2

    .line 11
    add-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public normalize()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpl-double v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 12
    .line 13
    div-double/2addr v2, v0

    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public sameValues(Lcom/ss/texturerender/math/Vector3d;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 4
    .line 5
    cmpl-double v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 10
    .line 11
    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 12
    .line 13
    cmpl-double v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 18
    .line 19
    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 20
    .line 21
    cmpl-double p1, v0, v2

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public scale(D)Lcom/ss/texturerender/math/Vector3d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-object p0
.end method

.method public set(DDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 2
    iput-wide p3, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 3
    iput-wide p5, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-void
.end method

.method public set(Lcom/ss/texturerender/math/Vector3d;)V
    .locals 2

    .line 4
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 5
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 6
    iget-wide v0, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-void
.end method

.method public setComponent(ID)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iput-wide p2, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iput-wide p2, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setZero()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 8
    .line 9
    return-void
.end method

.method public sub(Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;
    .locals 10

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    iget-wide v5, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    iget-wide v8, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "%+5f %+05f %+05f"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
