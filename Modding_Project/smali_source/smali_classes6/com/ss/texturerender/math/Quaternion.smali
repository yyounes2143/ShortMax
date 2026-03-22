.class public Lcom/ss/texturerender/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field private x0:D

.field private x1:D

.field private x2:D

.field private x3:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    iput-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    iput-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 6
    iput-wide p3, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 7
    iput-wide p5, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 8
    iput-wide p7, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 9
    invoke-virtual {p0}, Lcom/ss/texturerender/math/Quaternion;->normalize()Z

    return-void
.end method

.method public constructor <init>([F)V
    .locals 35

    move-object/from16 v0, p0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 11
    aget v2, p1, v1

    float-to-double v2, v2

    const/4 v4, 0x4

    aget v4, p1, v4

    float-to-double v4, v4

    const/16 v6, 0x8

    aget v6, p1, v6

    float-to-double v6, v6

    const/4 v8, 0x1

    .line 12
    aget v9, p1, v8

    float-to-double v9, v9

    const/4 v11, 0x5

    aget v11, p1, v11

    float-to-double v11, v11

    const/16 v13, 0x9

    aget v13, p1, v13

    float-to-double v13, v13

    const/4 v15, 0x2

    .line 13
    aget v15, p1, v15

    move-wide/from16 v17, v9

    float-to-double v8, v15

    const/4 v10, 0x6

    aget v10, p1, v10

    move-wide/from16 v19, v2

    float-to-double v1, v10

    const/16 v3, 0xa

    aget v3, p1, v3

    move-wide/from16 v21, v4

    float-to-double v3, v3

    add-double v23, v19, v11

    add-double v23, v23, v3

    const-wide/16 v25, 0x0

    cmpl-double v5, v23, v25

    const-wide/high16 v25, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    if-lez v5, :cond_0

    add-double v23, v23, v29

    .line 14
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v27

    mul-double v25, v25, v3

    sub-double/2addr v1, v13

    div-double/2addr v1, v3

    sub-double/2addr v6, v8

    div-double/2addr v6, v3

    sub-double v9, v17, v21

    div-double/2addr v9, v3

    move-wide/from16 v3, v25

    goto/16 :goto_2

    :cond_0
    cmpl-double v5, v19, v11

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    cmpl-double v10, v19, v3

    if-lez v10, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    and-int/2addr v5, v15

    if-eqz v5, :cond_3

    add-double v15, v19, v29

    sub-double/2addr v15, v11

    sub-double/2addr v15, v3

    .line 15
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v27

    sub-double/2addr v1, v13

    div-double/2addr v1, v3

    mul-double v10, v3, v25

    add-double v12, v21, v17

    div-double/2addr v12, v3

    add-double/2addr v6, v8

    div-double v3, v6, v3

    move-wide v6, v12

    move-wide/from16 v31, v1

    move-wide v1, v10

    move-wide v9, v3

    move-wide/from16 v3, v31

    goto :goto_2

    :cond_3
    cmpl-double v5, v11, v3

    if-lez v5, :cond_4

    add-double v11, v11, v29

    sub-double v11, v11, v19

    sub-double/2addr v11, v3

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v27

    sub-double/2addr v6, v8

    div-double v5, v6, v3

    add-double v7, v21, v17

    div-double/2addr v7, v3

    mul-double v9, v3, v25

    add-double/2addr v13, v1

    div-double v1, v13, v3

    move-wide v3, v5

    move-wide/from16 v31, v7

    move-wide v6, v9

    move-wide v9, v1

    move-wide/from16 v1, v31

    goto :goto_2

    :cond_4
    add-double v3, v3, v29

    sub-double v3, v3, v19

    sub-double/2addr v3, v11

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v27

    sub-double v10, v17, v21

    div-double/2addr v10, v3

    add-double/2addr v6, v8

    div-double v5, v6, v3

    add-double/2addr v13, v1

    div-double v1, v13, v3

    mul-double v3, v3, v25

    move-wide/from16 v31, v3

    move-wide v3, v10

    move-wide/from16 v9, v31

    move-wide/from16 v33, v1

    move-wide v1, v5

    move-wide/from16 v6, v33

    .line 18
    :goto_2
    iput-wide v1, v0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 19
    iput-wide v6, v0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 20
    iput-wide v9, v0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 21
    iput-wide v3, v0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->normalize()Z

    return-void
.end method

.method public static applyToVector(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Vector3d;
    .locals 8

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 17
    .line 18
    .line 19
    invoke-static {v7, p0}, Lcom/ss/texturerender/math/Vector3d;->cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/math/Vector3d;->scale(D)Lcom/ss/texturerender/math/Vector3d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/math/Vector3d;->scale(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Vector3d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lcom/ss/texturerender/math/Vector3d;->add(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v7, v0}, Lcom/ss/texturerender/math/Vector3d;->cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Lcom/ss/texturerender/math/Vector3d;->add(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static fromAxisAndAngle(Lcom/ss/texturerender/math/Vector3d;D)Lcom/ss/texturerender/math/Quaternion;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/math/Vector3d;->normalize()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/ss/texturerender/math/Quaternion;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/ss/texturerender/math/Quaternion;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 14
    .line 15
    div-double/2addr p1, v0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    new-instance v11, Lcom/ss/texturerender/math/Quaternion;

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 23
    .line 24
    mul-double v3, v2, v0

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 27
    .line 28
    mul-double/2addr v5, v0

    .line 29
    iget-wide v7, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 30
    .line 31
    mul-double/2addr v7, v0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    move-object v2, v11

    .line 37
    invoke-direct/range {v2 .. v10}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 38
    .line 39
    .line 40
    return-object v11
.end method

.method public static rotateInto(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Quaternion;
    .locals 14

    .line 1
    invoke-static {p0, p0}, Lcom/ss/texturerender/math/Vector3d;->dot(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p1}, Lcom/ss/texturerender/math/Vector3d;->dot(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-double/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {p0, p1}, Lcom/ss/texturerender/math/Vector3d;->dot(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    add-double/2addr v2, v0

    .line 19
    const-wide v4, 0x3d3c25c260000000L    # 9.9999998245167E-14

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    mul-double/2addr v0, v4

    .line 25
    cmpg-double v0, v2, v0

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-wide v2, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    cmpl-double p1, v0, v2

    .line 42
    .line 43
    if-lez p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 46
    .line 47
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 48
    .line 49
    neg-double v1, v0

    .line 50
    iget-wide v3, p0, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 51
    .line 52
    const-wide/16 v5, 0x0

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lcom/ss/texturerender/math/Vector3d;

    .line 60
    .line 61
    iget-wide v0, p0, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 62
    .line 63
    neg-double v10, v0

    .line 64
    iget-wide v12, p0, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 65
    .line 66
    const-wide/16 v8, 0x0

    .line 67
    .line 68
    move-object v7, p1

    .line 69
    invoke-direct/range {v7 .. v13}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 70
    .line 71
    .line 72
    :goto_0
    const-wide/16 v2, 0x0

    .line 73
    .line 74
    :goto_1
    move-wide v7, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-static {p0, p1}, Lcom/ss/texturerender/math/Vector3d;->cross(Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)Lcom/ss/texturerender/math/Vector3d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :goto_2
    new-instance p0, Lcom/ss/texturerender/math/Quaternion;

    .line 82
    .line 83
    iget-wide v1, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 84
    .line 85
    iget-wide v3, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 86
    .line 87
    iget-wide v5, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 88
    .line 89
    move-object v0, p0

    .line 90
    invoke-direct/range {v0 .. v8}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method


# virtual methods
.method public conjugate()Lcom/ss/texturerender/math/Quaternion;
    .locals 10

    .line 1
    new-instance v9, Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 4
    .line 5
    neg-double v1, v0

    .line 6
    iget-wide v3, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 7
    .line 8
    neg-double v3, v3

    .line 9
    iget-wide v5, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 10
    .line 11
    neg-double v5, v5

    .line 12
    iget-wide v7, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 13
    .line 14
    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 16
    .line 17
    .line 18
    return-object v9
.end method

.method public divides(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->inverse()Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/math/Quaternion;->times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAngle()D
    .locals 8

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/ss/texturerender/math/Vector3d;->length()D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmpl-double v0, v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 30
    .line 31
    mul-double/2addr v0, v2

    .line 32
    return-wide v0

    .line 33
    :cond_0
    return-wide v2
.end method

.method public getAxis()Lcom/ss/texturerender/math/Vector3d;
    .locals 8

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/ss/texturerender/math/Vector3d;->normalize()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    move-object v0, v7

    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;->set(DDD)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v7
.end method

.method public getX0()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getX1()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getX3()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public inverse()Lcom/ss/texturerender/math/Quaternion;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 4
    .line 5
    mul-double v3, v1, v1

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 8
    .line 9
    mul-double v7, v5, v5

    .line 10
    .line 11
    add-double/2addr v3, v7

    .line 12
    iget-wide v7, v0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 13
    .line 14
    mul-double v9, v7, v7

    .line 15
    .line 16
    add-double/2addr v3, v9

    .line 17
    iget-wide v9, v0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 18
    .line 19
    mul-double v11, v9, v9

    .line 20
    .line 21
    add-double/2addr v3, v11

    .line 22
    new-instance v20, Lcom/ss/texturerender/math/Quaternion;

    .line 23
    .line 24
    neg-double v1, v1

    .line 25
    div-double v12, v1, v3

    .line 26
    .line 27
    neg-double v1, v5

    .line 28
    div-double v14, v1, v3

    .line 29
    .line 30
    neg-double v1, v7

    .line 31
    div-double v16, v1, v3

    .line 32
    .line 33
    div-double v18, v9, v3

    .line 34
    .line 35
    move-object/from16 v11, v20

    .line 36
    .line 37
    invoke-direct/range {v11 .. v19}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 38
    .line 39
    .line 40
    return-object v20
.end method

.method public norm()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 2
    .line 3
    mul-double/2addr v0, v0

    .line 4
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 5
    .line 6
    mul-double/2addr v2, v2

    .line 7
    add-double/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 9
    .line 10
    mul-double/2addr v2, v2

    .line 11
    add-double/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 13
    .line 14
    mul-double/2addr v2, v2

    .line 15
    add-double/2addr v0, v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0
.end method

.method public normalize()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/math/Quaternion;->norm()D

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
    if-nez v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 14
    .line 15
    div-double/2addr v2, v0

    .line 16
    iput-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 19
    .line 20
    div-double/2addr v2, v0

    .line 21
    iput-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 24
    .line 25
    div-double/2addr v2, v0

    .line 26
    iput-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 29
    .line 30
    div-double/2addr v2, v0

    .line 31
    iput-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method public times(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Quaternion;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v1, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 6
    .line 7
    iget-wide v4, v0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 8
    .line 9
    mul-double v6, v2, v4

    .line 10
    .line 11
    iget-wide v8, v1, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 12
    .line 13
    iget-wide v10, v0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 14
    .line 15
    mul-double v12, v8, v10

    .line 16
    .line 17
    add-double/2addr v6, v12

    .line 18
    iget-wide v12, v1, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 19
    .line 20
    iget-wide v14, v0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 21
    .line 22
    mul-double v16, v12, v14

    .line 23
    .line 24
    add-double v6, v6, v16

    .line 25
    .line 26
    move-wide/from16 v16, v4

    .line 27
    .line 28
    iget-wide v4, v1, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 29
    .line 30
    move-wide/from16 v18, v12

    .line 31
    .line 32
    iget-wide v12, v0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 33
    .line 34
    mul-double v20, v4, v12

    .line 35
    .line 36
    sub-double v23, v6, v20

    .line 37
    .line 38
    mul-double v6, v2, v14

    .line 39
    .line 40
    mul-double v20, v4, v10

    .line 41
    .line 42
    add-double v6, v6, v20

    .line 43
    .line 44
    mul-double v20, v8, v12

    .line 45
    .line 46
    add-double v6, v6, v20

    .line 47
    .line 48
    mul-double v20, v18, v16

    .line 49
    .line 50
    sub-double v25, v6, v20

    .line 51
    .line 52
    mul-double v6, v2, v12

    .line 53
    .line 54
    mul-double v20, v18, v10

    .line 55
    .line 56
    add-double v6, v6, v20

    .line 57
    .line 58
    mul-double v20, v4, v16

    .line 59
    .line 60
    add-double v6, v6, v20

    .line 61
    .line 62
    mul-double v20, v8, v14

    .line 63
    .line 64
    sub-double v27, v6, v20

    .line 65
    .line 66
    mul-double/2addr v2, v10

    .line 67
    mul-double v8, v8, v16

    .line 68
    .line 69
    sub-double/2addr v2, v8

    .line 70
    mul-double/2addr v4, v14

    .line 71
    sub-double/2addr v2, v4

    .line 72
    mul-double v12, v12, v18

    .line 73
    .line 74
    sub-double v29, v2, v12

    .line 75
    .line 76
    new-instance v1, Lcom/ss/texturerender/math/Quaternion;

    .line 77
    .line 78
    move-object/from16 v22, v1

    .line 79
    .line 80
    invoke-direct/range {v22 .. v30}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/ss/texturerender/math/Quaternion;->x0:D

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/ss/texturerender/math/Quaternion;->x1:D

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/ss/texturerender/math/Quaternion;->x2:D

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-wide v4, p0, Lcom/ss/texturerender/math/Quaternion;->x3:D

    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "%.5f i + %.5f j + %.5f k + %.5f"

    .line 34
    .line 35
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
