.class public Lcom/huawei/hms/core/aidl/f;
.super Ljava/lang/Object;
.source "MessageCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, v0}, Lcom/huawei/hms/core/aidl/f;->j(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "_next_item_"

    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private b(Ljava/lang/reflect/Field;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    instance-of v1, p2, Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :try_start_0
    move-object v1, p2

    .line 14
    check-cast v1, Landroid/os/Bundle;

    .line 15
    .line 16
    const-string v2, "_val_type_"

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/huawei/hms/core/aidl/f;->h(Ljava/lang/reflect/Type;Landroid/os/Bundle;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/huawei/hms/core/aidl/e;

    .line 46
    .line 47
    check-cast p2, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/core/aidl/f;->f(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/e;)Lcom/huawei/hms/core/aidl/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p1

    .line 54
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p2, "decode, read value of the field exception, field name: "

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "MessageCodec"

    .line 72
    .line 73
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    return-object p1

    .line 78
    :cond_1
    return-object p2
.end method

.method private c(Lcom/huawei/hms/core/aidl/e;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/core/aidl/f;->b(Ljava/lang/reflect/Field;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p2, Ljava/lang/Short;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p2, Ljava/lang/Short;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p3, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    check-cast p2, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    check-cast p2, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p3, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    check-cast p2, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    :goto_0
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :cond_6
    const/4 p1, 0x0

    .line 97
    return p1
.end method

.method private e(Lcom/huawei/hms/core/aidl/e;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v1, p1, p3}, Lcom/huawei/hms/core/aidl/f;->j(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public f(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/e;)Lcom/huawei/hms/core/aidl/e;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_1
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget-object v4, v1, v3

    .line 30
    .line 31
    const-class v5, Lwa/a;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-direct {p0, p2, v4, p1}, Lcom/huawei/hms/core/aidl/f;->c(Lcom/huawei/hms/core/aidl/e;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "decode, set value of the field exception, field name:"

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "MessageCodec"

    .line 65
    .line 66
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-object p2
.end method

.method public g(Lcom/huawei/hms/core/aidl/e;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_1
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    const-class v5, Lwa/a;

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-direct {p0, p1, v4, p2}, Lcom/huawei/hms/core/aidl/f;->e(Lcom/huawei/hms/core/aidl/e;Ljava/lang/reflect/Field;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v6, "encode, get value of the field exception, field name: "

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "MessageCodec"

    .line 54
    .line 55
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    return-object p2
.end method

.method protected h(Ljava/lang/reflect/Type;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_next_item_"

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    if-eqz p2, :cond_5

    .line 13
    .line 14
    const-string v2, "_value_"

    .line 15
    .line 16
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    instance-of v3, v2, Ljava/lang/String;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    instance-of v3, v2, Ljava/io/Serializable;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    instance-of v3, v2, Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    check-cast v2, Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v3, "_val_type_"

    .line 46
    .line 47
    const/4 v4, -0x1

    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x1

    .line 53
    if-eq v3, v4, :cond_2

    .line 54
    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    move-object v3, p1

    .line 58
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x0

    .line 65
    aget-object v3, v3, v4

    .line 66
    .line 67
    check-cast v3, Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/huawei/hms/core/aidl/e;

    .line 74
    .line 75
    invoke-virtual {p0, v2, v3}, Lcom/huawei/hms/core/aidl/f;->f(Landroid/os/Bundle;Lcom/huawei/hms/core/aidl/e;)Lcom/huawei/hms/core/aidl/e;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/InstantiationException;

    .line 84
    .line 85
    const-string p2, "Unknown type can not be supported"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/InstantiationException;

    .line 92
    .line 93
    const-string p2, "Nested List can not be supported"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_2
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    return-object v0
.end method

.method protected i(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "_val_type_"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v2, "_value_"

    .line 33
    .line 34
    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/hms/core/aidl/f;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/core/aidl/f;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p2, Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    instance-of v0, p2, Landroid/os/Parcelable;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p2, Landroid/os/Parcelable;

    .line 26
    .line 27
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    instance-of v0, p2, [B

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    check-cast p2, [B

    .line 36
    .line 37
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    instance-of v0, p2, Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    check-cast p2, Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hms/core/aidl/f;->i(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    instance-of v0, p2, Ljava/io/Serializable;

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    check-cast p2, Ljava/io/Serializable;

    .line 56
    .line 57
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    instance-of v0, p2, Lcom/huawei/hms/core/aidl/e;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    check-cast p2, Lcom/huawei/hms/core/aidl/e;

    .line 66
    .line 67
    new-instance v0, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2, v0}, Lcom/huawei/hms/core/aidl/f;->g(Lcom/huawei/hms/core/aidl/e;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string v0, "_val_type_"

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p3, "cannot support type, "

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "MessageCodec"

    .line 104
    .line 105
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method
