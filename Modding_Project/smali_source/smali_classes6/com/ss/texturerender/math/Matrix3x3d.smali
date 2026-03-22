.class public Lcom/ss/texturerender/math/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 4
    new-array v0, v0, [D

    move-object v1, p0

    iput-object v0, v1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    .line 5
    aput-wide p1, v0, v2

    const/4 v2, 0x1

    .line 6
    aput-wide p3, v0, v2

    const/4 v2, 0x2

    .line 7
    aput-wide p5, v0, v2

    const/4 v2, 0x3

    .line 8
    aput-wide p7, v0, v2

    const/4 v2, 0x4

    .line 9
    aput-wide p9, v0, v2

    const/4 v2, 0x5

    .line 10
    aput-wide p11, v0, v2

    const/4 v2, 0x6

    .line 11
    aput-wide p13, v0, v2

    const/4 v2, 0x7

    .line 12
    aput-wide p15, v0, v2

    const/16 v2, 0x8

    .line 13
    aput-wide p17, v0, v2

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 15
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 16
    iget-object p1, p1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 17
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 18
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 19
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 20
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 21
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 22
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 23
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 24
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-void
.end method

.method public static add(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 5

    .line 1
    iget-object p2, p2, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    iget-object p0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-wide v1, p0, v0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 9
    .line 10
    aget-wide v3, p1, v0

    .line 11
    .line 12
    add-double/2addr v1, v3

    .line 13
    aput-wide v1, p2, v0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aget-wide v1, p0, v0

    .line 17
    .line 18
    aget-wide v3, p1, v0

    .line 19
    .line 20
    add-double/2addr v1, v3

    .line 21
    aput-wide v1, p2, v0

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    aget-wide v1, p0, v0

    .line 25
    .line 26
    aget-wide v3, p1, v0

    .line 27
    .line 28
    add-double/2addr v1, v3

    .line 29
    aput-wide v1, p2, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aget-wide v1, p0, v0

    .line 33
    .line 34
    aget-wide v3, p1, v0

    .line 35
    .line 36
    add-double/2addr v1, v3

    .line 37
    aput-wide v1, p2, v0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    aget-wide v1, p0, v0

    .line 41
    .line 42
    aget-wide v3, p1, v0

    .line 43
    .line 44
    add-double/2addr v1, v3

    .line 45
    aput-wide v1, p2, v0

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    aget-wide v1, p0, v0

    .line 49
    .line 50
    aget-wide v3, p1, v0

    .line 51
    .line 52
    add-double/2addr v1, v3

    .line 53
    aput-wide v1, p2, v0

    .line 54
    .line 55
    const/4 v0, 0x6

    .line 56
    aget-wide v1, p0, v0

    .line 57
    .line 58
    aget-wide v3, p1, v0

    .line 59
    .line 60
    add-double/2addr v1, v3

    .line 61
    aput-wide v1, p2, v0

    .line 62
    .line 63
    const/4 v0, 0x7

    .line 64
    aget-wide v1, p0, v0

    .line 65
    .line 66
    aget-wide v3, p1, v0

    .line 67
    .line 68
    add-double/2addr v1, v3

    .line 69
    aput-wide v1, p2, v0

    .line 70
    .line 71
    const/16 v0, 0x8

    .line 72
    .line 73
    aget-wide v1, p0, v0

    .line 74
    .line 75
    aget-wide p0, p1, v0

    .line 76
    .line 77
    add-double/2addr v1, p0

    .line 78
    aput-wide v1, p2, v0

    .line 79
    .line 80
    return-void
.end method

.method public static matrixToColumnArray(Lcom/ss/texturerender/math/Matrix3x3d;[F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    double-to-float v1, v1

    .line 7
    aput v1, p1, v0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    double-to-float v2, v2

    .line 15
    const/4 v3, 0x4

    .line 16
    aput v2, p1, v3

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {p0, v0, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    double-to-float v3, v3

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    aput v3, p1, v4

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-float v3, v3

    .line 33
    aput v3, p1, v1

    .line 34
    .line 35
    invoke-virtual {p0, v1, v1}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    double-to-float v3, v3

    .line 40
    const/4 v4, 0x5

    .line 41
    aput v3, p1, v4

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    double-to-float v3, v3

    .line 48
    const/16 v4, 0x9

    .line 49
    .line 50
    aput v3, p1, v4

    .line 51
    .line 52
    invoke-virtual {p0, v2, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    double-to-float v0, v3

    .line 57
    aput v0, p1, v2

    .line 58
    .line 59
    invoke-virtual {p0, v2, v1}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    double-to-float v0, v0

    .line 64
    const/4 v1, 0x6

    .line 65
    aput v0, p1, v1

    .line 66
    .line 67
    invoke-virtual {p0, v2, v2}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    double-to-float p0, v0

    .line 72
    const/16 v0, 0xa

    .line 73
    .line 74
    aput p0, p1, v0

    .line 75
    .line 76
    const/16 p0, 0xb

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    aput v0, p1, p0

    .line 80
    .line 81
    const/4 p0, 0x7

    .line 82
    aput v0, p1, p0

    .line 83
    .line 84
    const/4 p0, 0x3

    .line 85
    aput v0, p1, p0

    .line 86
    .line 87
    const/16 p0, 0xe

    .line 88
    .line 89
    aput v0, p1, p0

    .line 90
    .line 91
    const/16 p0, 0xd

    .line 92
    .line 93
    aput v0, p1, p0

    .line 94
    .line 95
    const/16 p0, 0xc

    .line 96
    .line 97
    aput v0, p1, p0

    .line 98
    .line 99
    const/16 p0, 0xf

    .line 100
    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    .line 103
    aput v0, p1, p0

    .line 104
    .line 105
    return-void
.end method

.method public static mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)Lcom/ss/texturerender/math/Matrix3x3d;
    .locals 42

    .line 4
    new-instance v19, Lcom/ss/texturerender/math/Matrix3x3d;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iget-object v13, v1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v5, v13, v1

    move-object/from16 v2, p1

    iget-object v7, v2, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    aget-wide v14, v7, v1

    mul-double v1, v5, v14

    const/4 v3, 0x1

    aget-wide v8, v13, v3

    const/4 v10, 0x3

    aget-wide v16, v7, v10

    mul-double v11, v8, v16

    add-double/2addr v1, v11

    const/4 v11, 0x2

    aget-wide v20, v13, v11

    const/16 v18, 0x6

    aget-wide v22, v7, v18

    mul-double v24, v20, v22

    add-double v1, v1, v24

    aget-wide v24, v7, v3

    mul-double v3, v5, v24

    const/4 v12, 0x4

    aget-wide v26, v7, v12

    mul-double v28, v8, v26

    add-double v3, v3, v28

    const/16 v28, 0x7

    aget-wide v29, v7, v28

    mul-double v31, v20, v29

    add-double v3, v3, v31

    aget-wide v31, v7, v11

    mul-double v5, v5, v31

    const/4 v11, 0x5

    aget-wide v33, v7, v11

    mul-double v8, v8, v33

    add-double/2addr v5, v8

    const/16 v35, 0x8

    aget-wide v36, v7, v35

    mul-double v20, v20, v36

    add-double v5, v5, v20

    aget-wide v20, v13, v10

    mul-double v7, v20, v14

    aget-wide v38, v13, v12

    mul-double v9, v38, v16

    add-double/2addr v7, v9

    aget-wide v11, v13, v11

    mul-double v9, v11, v22

    add-double/2addr v7, v9

    mul-double v9, v20, v24

    mul-double v40, v38, v26

    add-double v9, v9, v40

    mul-double v40, v11, v29

    add-double v9, v9, v40

    mul-double v20, v20, v31

    mul-double v38, v38, v33

    add-double v20, v20, v38

    mul-double v11, v11, v36

    add-double v11, v20, v11

    aget-wide v20, v13, v18

    mul-double v14, v14, v20

    aget-wide v38, v13, v28

    mul-double v16, v16, v38

    add-double v14, v14, v16

    aget-wide v17, v13, v35

    mul-double v22, v22, v17

    add-double v13, v14, v22

    mul-double v24, v24, v20

    mul-double v26, v26, v38

    add-double v24, v24, v26

    mul-double v29, v29, v17

    add-double v15, v24, v29

    mul-double v20, v20, v31

    mul-double v38, v38, v33

    add-double v20, v20, v38

    mul-double v17, v17, v36

    add-double v17, v20, v17

    invoke-direct/range {v0 .. v18}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>(DDDDDDDDD)V

    return-object v19
.end method

.method public static mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 41

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 3
    iget-object v13, v1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v5, v13, v1

    move-object/from16 v2, p1

    iget-object v7, v2, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    aget-wide v14, v7, v1

    mul-double v1, v5, v14

    const/4 v3, 0x1

    aget-wide v8, v13, v3

    const/4 v10, 0x3

    aget-wide v16, v7, v10

    mul-double v11, v8, v16

    add-double/2addr v1, v11

    const/4 v11, 0x2

    aget-wide v18, v13, v11

    const/16 v20, 0x6

    aget-wide v21, v7, v20

    mul-double v23, v18, v21

    add-double v1, v1, v23

    aget-wide v23, v7, v3

    mul-double v3, v5, v23

    const/4 v12, 0x4

    aget-wide v25, v7, v12

    mul-double v27, v8, v25

    add-double v3, v3, v27

    const/16 v27, 0x7

    aget-wide v28, v7, v27

    mul-double v30, v18, v28

    add-double v3, v3, v30

    aget-wide v30, v7, v11

    mul-double v5, v5, v30

    const/4 v11, 0x5

    aget-wide v32, v7, v11

    mul-double v8, v8, v32

    add-double/2addr v5, v8

    const/16 v34, 0x8

    aget-wide v35, v7, v34

    mul-double v18, v18, v35

    add-double v5, v5, v18

    aget-wide v18, v13, v10

    mul-double v7, v18, v14

    aget-wide v37, v13, v12

    mul-double v9, v37, v16

    add-double/2addr v7, v9

    aget-wide v11, v13, v11

    mul-double v9, v11, v21

    add-double/2addr v7, v9

    mul-double v9, v18, v23

    mul-double v39, v37, v25

    add-double v9, v9, v39

    mul-double v39, v11, v28

    add-double v9, v9, v39

    mul-double v18, v18, v30

    mul-double v37, v37, v32

    add-double v18, v18, v37

    mul-double v11, v11, v35

    add-double v11, v18, v11

    aget-wide v18, v13, v20

    mul-double v14, v14, v18

    aget-wide v37, v13, v27

    mul-double v16, v16, v37

    add-double v14, v14, v16

    aget-wide v39, v13, v34

    mul-double v21, v21, v39

    add-double v13, v14, v21

    mul-double v23, v23, v18

    mul-double v25, v25, v37

    add-double v23, v23, v25

    mul-double v28, v28, v39

    add-double v15, v23, v28

    mul-double v18, v18, v30

    mul-double v37, v37, v32

    add-double v18, v18, v37

    mul-double v39, v39, v35

    add-double v17, v18, v39

    invoke-virtual/range {v0 .. v18}, Lcom/ss/texturerender/math/Matrix3x3d;->set(DDDDDDDDD)V

    return-void
.end method

.method public static mult(Lcom/ss/texturerender/math/Matrix3x3d;Lcom/ss/texturerender/math/Vector3d;Lcom/ss/texturerender/math/Vector3d;)V
    .locals 12

    .line 5
    iget-object p0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    iget-wide v2, p1, Lcom/ss/texturerender/math/Vector3d;->x:D

    mul-double/2addr v0, v2

    const/4 v4, 0x1

    aget-wide v4, p0, v4

    iget-wide v6, p1, Lcom/ss/texturerender/math/Vector3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    iget-wide v8, p1, Lcom/ss/texturerender/math/Vector3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    const/4 p1, 0x3

    .line 6
    aget-wide v4, p0, p1

    mul-double/2addr v4, v2

    const/4 p1, 0x4

    aget-wide v10, p0, p1

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    const/4 p1, 0x5

    aget-wide v10, p0, p1

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const/4 p1, 0x6

    .line 7
    aget-wide v10, p0, p1

    mul-double/2addr v10, v2

    const/4 p1, 0x7

    aget-wide v2, p0, p1

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    const/16 p1, 0x8

    aget-wide v2, p0, p1

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    .line 8
    iput-wide v0, p2, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 9
    iput-wide v4, p2, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 10
    iput-wide v10, p2, Lcom/ss/texturerender/math/Vector3d;->z:D

    return-void
.end method

.method public static rotationMatrix3x3(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Matrix3x3d;
    .locals 40

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-double/2addr v0, v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    mul-double/2addr v2, v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    mul-double/2addr v4, v6

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    mul-double/2addr v6, v8

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 42
    .line 43
    .line 44
    move-result-wide v10

    .line 45
    mul-double/2addr v8, v10

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 47
    .line 48
    .line 49
    move-result-wide v10

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    mul-double/2addr v10, v12

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 56
    .line 57
    .line 58
    move-result-wide v12

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 60
    .line 61
    .line 62
    move-result-wide v14

    .line 63
    mul-double/2addr v12, v14

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 69
    .line 70
    .line 71
    move-result-wide v16

    .line 72
    mul-double v14, v14, v16

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 75
    .line 76
    .line 77
    move-result-wide v16

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 79
    .line 80
    .line 81
    move-result-wide v18

    .line 82
    mul-double v16, v16, v18

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 85
    .line 86
    .line 87
    move-result-wide v18

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 89
    .line 90
    .line 91
    move-result-wide v20

    .line 92
    mul-double v18, v18, v20

    .line 93
    .line 94
    new-instance v39, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 95
    .line 96
    move-object/from16 v20, v39

    .line 97
    .line 98
    sub-double v21, v0, v2

    .line 99
    .line 100
    sub-double v21, v21, v4

    .line 101
    .line 102
    add-double v21, v21, v6

    .line 103
    .line 104
    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    .line 105
    .line 106
    mul-double v8, v8, v31

    .line 107
    .line 108
    mul-double v18, v18, v31

    .line 109
    .line 110
    sub-double v23, v8, v18

    .line 111
    .line 112
    mul-double v10, v10, v31

    .line 113
    .line 114
    mul-double v16, v16, v31

    .line 115
    .line 116
    add-double v25, v10, v16

    .line 117
    .line 118
    add-double v27, v8, v18

    .line 119
    .line 120
    neg-double v0, v0

    .line 121
    add-double v8, v0, v2

    .line 122
    .line 123
    sub-double/2addr v8, v4

    .line 124
    add-double v29, v8, v6

    .line 125
    .line 126
    mul-double v12, v12, v31

    .line 127
    .line 128
    mul-double v14, v14, v31

    .line 129
    .line 130
    sub-double v31, v12, v14

    .line 131
    .line 132
    sub-double v33, v10, v16

    .line 133
    .line 134
    add-double v35, v12, v14

    .line 135
    .line 136
    sub-double/2addr v0, v2

    .line 137
    add-double/2addr v0, v4

    .line 138
    add-double v37, v0, v6

    .line 139
    .line 140
    invoke-direct/range {v20 .. v38}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>(DDDDDDDDD)V

    .line 141
    .line 142
    .line 143
    return-object v39
.end method


# virtual methods
.method public determinant()D
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v3, v3}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    const/4 v6, 0x2

    .line 12
    invoke-virtual {p0, v6, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    mul-double/2addr v4, v7

    .line 17
    invoke-virtual {p0, v6, v3}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    invoke-virtual {p0, v3, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    mul-double/2addr v7, v9

    .line 26
    sub-double/2addr v4, v7

    .line 27
    mul-double/2addr v1, v4

    .line 28
    invoke-virtual {p0, v0, v3}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-virtual {p0, v3, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-virtual {p0, v6, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    mul-double/2addr v7, v9

    .line 41
    invoke-virtual {p0, v3, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 42
    .line 43
    .line 44
    move-result-wide v9

    .line 45
    invoke-virtual {p0, v6, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    mul-double/2addr v9, v11

    .line 50
    sub-double/2addr v7, v9

    .line 51
    mul-double/2addr v4, v7

    .line 52
    sub-double/2addr v1, v4

    .line 53
    invoke-virtual {p0, v0, v6}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-virtual {p0, v3, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    invoke-virtual {p0, v6, v3}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    mul-double/2addr v7, v9

    .line 66
    invoke-virtual {p0, v3, v3}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-virtual {p0, v6, v0}, Lcom/ss/texturerender/math/Matrix3x3d;->get(II)D

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    mul-double/2addr v9, v11

    .line 75
    sub-double/2addr v7, v9

    .line 76
    mul-double/2addr v4, v7

    .line 77
    add-double/2addr v1, v4

    .line 78
    return-wide v1
.end method

.method public get(II)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/2addr p1, p2

    .line 6
    aget-wide p1, v0, p1

    .line 7
    .line 8
    return-wide p1
.end method

.method public getColumn(ILcom/ss/texturerender/math/Vector3d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    iput-wide v1, p2, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x3

    .line 8
    .line 9
    aget-wide v1, v0, v1

    .line 10
    .line 11
    iput-wide v1, p2, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x6

    .line 14
    .line 15
    aget-wide v1, v0, p1

    .line 16
    .line 17
    iput-wide v1, p2, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 18
    .line 19
    return-void
.end method

.method public invert(Lcom/ss/texturerender/math/Matrix3x3d;)Z
    .locals 35

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/math/Matrix3x3d;->determinant()D

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
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    div-double/2addr v4, v0

    .line 16
    move-object/from16 v0, p0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    aget-wide v6, v1, v2

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    aget-wide v8, v1, v2

    .line 26
    .line 27
    mul-double v10, v6, v8

    .line 28
    .line 29
    const/4 v2, 0x7

    .line 30
    aget-wide v12, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aget-wide v14, v1, v2

    .line 34
    .line 35
    mul-double v16, v12, v14

    .line 36
    .line 37
    sub-double v10, v10, v16

    .line 38
    .line 39
    mul-double v17, v10, v4

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    aget-wide v10, v1, v2

    .line 43
    .line 44
    mul-double v19, v10, v8

    .line 45
    .line 46
    const/16 v16, 0x2

    .line 47
    .line 48
    aget-wide v27, v1, v16

    .line 49
    .line 50
    mul-double v21, v27, v12

    .line 51
    .line 52
    sub-double v2, v19, v21

    .line 53
    .line 54
    neg-double v2, v2

    .line 55
    mul-double v19, v2, v4

    .line 56
    .line 57
    mul-double v2, v10, v14

    .line 58
    .line 59
    mul-double v21, v27, v6

    .line 60
    .line 61
    sub-double v2, v2, v21

    .line 62
    .line 63
    mul-double v21, v2, v4

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    aget-wide v2, v1, v2

    .line 67
    .line 68
    mul-double v23, v2, v8

    .line 69
    .line 70
    const/16 v25, 0x6

    .line 71
    .line 72
    aget-wide v31, v1, v25

    .line 73
    .line 74
    mul-double v25, v14, v31

    .line 75
    .line 76
    move-wide/from16 v33, v10

    .line 77
    .line 78
    sub-double v10, v23, v25

    .line 79
    .line 80
    neg-double v10, v10

    .line 81
    mul-double v23, v10, v4

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    aget-wide v10, v1, v10

    .line 85
    .line 86
    mul-double/2addr v8, v10

    .line 87
    mul-double v25, v27, v31

    .line 88
    .line 89
    sub-double v8, v8, v25

    .line 90
    .line 91
    mul-double v25, v8, v4

    .line 92
    .line 93
    mul-double/2addr v14, v10

    .line 94
    mul-double v27, v27, v2

    .line 95
    .line 96
    sub-double v14, v14, v27

    .line 97
    .line 98
    neg-double v8, v14

    .line 99
    mul-double v27, v8, v4

    .line 100
    .line 101
    mul-double v8, v2, v12

    .line 102
    .line 103
    mul-double v14, v31, v6

    .line 104
    .line 105
    sub-double/2addr v8, v14

    .line 106
    mul-double v29, v8, v4

    .line 107
    .line 108
    mul-double/2addr v12, v10

    .line 109
    mul-double v31, v31, v33

    .line 110
    .line 111
    sub-double v12, v12, v31

    .line 112
    .line 113
    neg-double v8, v12

    .line 114
    mul-double v31, v8, v4

    .line 115
    .line 116
    mul-double/2addr v10, v6

    .line 117
    mul-double v2, v2, v33

    .line 118
    .line 119
    sub-double/2addr v10, v2

    .line 120
    mul-double v33, v10, v4

    .line 121
    .line 122
    move-object/from16 v16, p1

    .line 123
    .line 124
    invoke-virtual/range {v16 .. v34}, Lcom/ss/texturerender/math/Matrix3x3d;->set(DDDDDDDDD)V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    return v1
.end method

.method public maxNorm()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-wide v1, v0, v1

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 12
    .line 13
    array-length v4, v3

    .line 14
    if-ge v2, v4, :cond_0

    .line 15
    .line 16
    aget-wide v4, v3, v2

    .line 17
    .line 18
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-wide v0
.end method

.method public minusEquals(Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-wide v2, v0, v1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 7
    .line 8
    aget-wide v4, p1, v1

    .line 9
    .line 10
    sub-double/2addr v2, v4

    .line 11
    aput-wide v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-wide v2, v0, v1

    .line 15
    .line 16
    aget-wide v4, p1, v1

    .line 17
    .line 18
    sub-double/2addr v2, v4

    .line 19
    aput-wide v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    aget-wide v2, v0, v1

    .line 23
    .line 24
    aget-wide v4, p1, v1

    .line 25
    .line 26
    sub-double/2addr v2, v4

    .line 27
    aput-wide v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    aget-wide v2, v0, v1

    .line 31
    .line 32
    aget-wide v4, p1, v1

    .line 33
    .line 34
    sub-double/2addr v2, v4

    .line 35
    aput-wide v2, v0, v1

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    aget-wide v2, v0, v1

    .line 39
    .line 40
    aget-wide v4, p1, v1

    .line 41
    .line 42
    sub-double/2addr v2, v4

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    aget-wide v2, v0, v1

    .line 47
    .line 48
    aget-wide v4, p1, v1

    .line 49
    .line 50
    sub-double/2addr v2, v4

    .line 51
    aput-wide v2, v0, v1

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    aget-wide v2, v0, v1

    .line 55
    .line 56
    aget-wide v4, p1, v1

    .line 57
    .line 58
    sub-double/2addr v2, v4

    .line 59
    aput-wide v2, v0, v1

    .line 60
    .line 61
    const/4 v1, 0x7

    .line 62
    aget-wide v2, v0, v1

    .line 63
    .line 64
    aget-wide v4, p1, v1

    .line 65
    .line 66
    sub-double/2addr v2, v4

    .line 67
    aput-wide v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    aget-wide v2, v0, v1

    .line 72
    .line 73
    aget-wide v4, p1, v1

    .line 74
    .line 75
    sub-double/2addr v2, v4

    .line 76
    aput-wide v2, v0, v1

    .line 77
    .line 78
    return-void
.end method

.method public mult(D)Lcom/ss/texturerender/math/Matrix3x3d;
    .locals 6

    .line 1
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, v0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    aget-wide v4, v3, v1

    mul-double/2addr v4, p1

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public plusEquals(Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-wide v2, v0, v1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 7
    .line 8
    aget-wide v4, p1, v1

    .line 9
    .line 10
    add-double/2addr v2, v4

    .line 11
    aput-wide v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-wide v2, v0, v1

    .line 15
    .line 16
    aget-wide v4, p1, v1

    .line 17
    .line 18
    add-double/2addr v2, v4

    .line 19
    aput-wide v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    aget-wide v2, v0, v1

    .line 23
    .line 24
    aget-wide v4, p1, v1

    .line 25
    .line 26
    add-double/2addr v2, v4

    .line 27
    aput-wide v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    aget-wide v2, v0, v1

    .line 31
    .line 32
    aget-wide v4, p1, v1

    .line 33
    .line 34
    add-double/2addr v2, v4

    .line 35
    aput-wide v2, v0, v1

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    aget-wide v2, v0, v1

    .line 39
    .line 40
    aget-wide v4, p1, v1

    .line 41
    .line 42
    add-double/2addr v2, v4

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    aget-wide v2, v0, v1

    .line 47
    .line 48
    aget-wide v4, p1, v1

    .line 49
    .line 50
    add-double/2addr v2, v4

    .line 51
    aput-wide v2, v0, v1

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    aget-wide v2, v0, v1

    .line 55
    .line 56
    aget-wide v4, p1, v1

    .line 57
    .line 58
    add-double/2addr v2, v4

    .line 59
    aput-wide v2, v0, v1

    .line 60
    .line 61
    const/4 v1, 0x7

    .line 62
    aget-wide v2, v0, v1

    .line 63
    .line 64
    aget-wide v4, p1, v1

    .line 65
    .line 66
    add-double/2addr v2, v4

    .line 67
    aput-wide v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    aget-wide v2, v0, v1

    .line 72
    .line 73
    aget-wide v4, p1, v1

    .line 74
    .line 75
    add-double/2addr v2, v4

    .line 76
    aput-wide v2, v0, v1

    .line 77
    .line 78
    return-void
.end method

.method public scale(D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-wide v2, v0, v1

    .line 5
    .line 6
    mul-double/2addr v2, p1

    .line 7
    aput-wide v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget-wide v2, v0, v1

    .line 11
    .line 12
    mul-double/2addr v2, p1

    .line 13
    aput-wide v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    aget-wide v2, v0, v1

    .line 17
    .line 18
    mul-double/2addr v2, p1

    .line 19
    aput-wide v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    aget-wide v2, v0, v1

    .line 23
    .line 24
    mul-double/2addr v2, p1

    .line 25
    aput-wide v2, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    aget-wide v2, v0, v1

    .line 29
    .line 30
    mul-double/2addr v2, p1

    .line 31
    aput-wide v2, v0, v1

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    aget-wide v2, v0, v1

    .line 35
    .line 36
    mul-double/2addr v2, p1

    .line 37
    aput-wide v2, v0, v1

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    aget-wide v2, v0, v1

    .line 41
    .line 42
    mul-double/2addr v2, p1

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x7

    .line 46
    aget-wide v2, v0, v1

    .line 47
    .line 48
    mul-double/2addr v2, p1

    .line 49
    aput-wide v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    aget-wide v2, v0, v1

    .line 54
    .line 55
    mul-double/2addr v2, p1

    .line 56
    aput-wide v2, v0, v1

    .line 57
    .line 58
    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v2, 0x1

    .line 2
    aput-wide p3, v1, v2

    const/4 v2, 0x2

    .line 3
    aput-wide p5, v1, v2

    const/4 v2, 0x3

    .line 4
    aput-wide p7, v1, v2

    const/4 v2, 0x4

    .line 5
    aput-wide p9, v1, v2

    const/4 v2, 0x5

    .line 6
    aput-wide p11, v1, v2

    const/4 v2, 0x6

    .line 7
    aput-wide p13, v1, v2

    const/4 v2, 0x7

    .line 8
    aput-wide p15, v1, v2

    const/16 v2, 0x8

    .line 9
    aput-wide p17, v1, v2

    return-void
.end method

.method public set(IID)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput-wide p3, v0, p1

    return-void
.end method

.method public set(Lcom/ss/texturerender/math/Matrix3x3d;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    iget-object p1, p1, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 11
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 12
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 13
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 14
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 15
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 16
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 17
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 18
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-void
.end method

.method public setColumn(ILcom/ss/texturerender/math/Vector3d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    iget-wide v1, p2, Lcom/ss/texturerender/math/Vector3d;->x:D

    .line 4
    .line 5
    aput-wide v1, v0, p1

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x3

    .line 8
    .line 9
    iget-wide v2, p2, Lcom/ss/texturerender/math/Vector3d;->y:D

    .line 10
    .line 11
    aput-wide v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x6

    .line 14
    .line 15
    iget-wide v1, p2, Lcom/ss/texturerender/math/Vector3d;->z:D

    .line 16
    .line 17
    aput-wide v1, v0, p1

    .line 18
    .line 19
    return-void
.end method

.method public setIdentity()Lcom/ss/texturerender/math/Matrix3x3d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    aput-wide v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    aput-wide v2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    aput-wide v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    aput-wide v2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    aput-wide v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    aput-wide v2, v0, v1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    aput-wide v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    aput-wide v2, v0, v1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aput-wide v2, v0, v1

    .line 34
    .line 35
    return-object p0
.end method

.method public setSameDiagonal(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    aput-wide p1, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    aput-wide p1, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-wide p1, v0, v1

    .line 12
    .line 13
    return-void
.end method

.method public setZero()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    aput-wide v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    aput-wide v2, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    aput-wide v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    aput-wide v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    aput-wide v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    aput-wide v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-wide v2, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-wide v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-wide v2, v0, v1

    .line 32
    .line 33
    return-void
.end method

.method public toEulerPitch()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    aget-wide v1, v0, v1

    .line 5
    .line 6
    neg-double v0, v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public toEulerRoll()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-wide v1, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    aget-wide v3, v0, v3

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public toEulerYaw()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-wide v1, v0, v1

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    aget-wide v3, v0, v3

    .line 9
    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public transpose()Lcom/ss/texturerender/math/Matrix3x3d;
    .locals 15

    .line 1
    new-instance v0, Lcom/ss/texturerender/math/Matrix3x3d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/texturerender/math/Matrix3x3d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-wide v3, v1, v2

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    aget-wide v6, v1, v5

    .line 13
    .line 14
    const/4 v8, 0x5

    .line 15
    aget-wide v9, v1, v8

    .line 16
    .line 17
    iget-object v11, v0, Lcom/ss/texturerender/math/Matrix3x3d;->m:[D

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    aget-wide v13, v1, v12

    .line 21
    .line 22
    aput-wide v13, v11, v12

    .line 23
    .line 24
    const/4 v12, 0x3

    .line 25
    aget-wide v13, v1, v12

    .line 26
    .line 27
    aput-wide v13, v11, v2

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    aget-wide v13, v1, v2

    .line 31
    .line 32
    aput-wide v13, v11, v5

    .line 33
    .line 34
    aput-wide v3, v11, v12

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    aget-wide v4, v1, v3

    .line 38
    .line 39
    aput-wide v4, v11, v3

    .line 40
    .line 41
    const/4 v3, 0x7

    .line 42
    aget-wide v4, v1, v3

    .line 43
    .line 44
    aput-wide v4, v11, v8

    .line 45
    .line 46
    aput-wide v6, v11, v2

    .line 47
    .line 48
    aput-wide v9, v11, v3

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    aget-wide v3, v1, v2

    .line 53
    .line 54
    aput-wide v3, v11, v2

    .line 55
    .line 56
    return-object v0
.end method
