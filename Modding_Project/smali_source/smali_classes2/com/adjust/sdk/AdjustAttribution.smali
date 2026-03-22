.class public Lcom/adjust/sdk/AdjustAttribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public adgroup:Ljava/lang/String;

.field public campaign:Ljava/lang/String;

.field public clickLabel:Ljava/lang/String;

.field public costAmount:Ljava/lang/Double;

.field public costCurrency:Ljava/lang/String;

.field public costType:Ljava/lang/String;

.field public creative:Ljava/lang/String;

.field public fbInstallReferrer:Ljava/lang/String;

.field public jsonResponse:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public trackerName:Ljava/lang/String;

.field public trackerToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/io/ObjectStreamField;

    .line 2
    .line 3
    const-string/jumbo v1, "trackerToken"

    .line 4
    .line 5
    .line 6
    const-class v2, Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/ObjectStreamField;

    .line 12
    .line 13
    const-string/jumbo v3, "trackerName"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/io/ObjectStreamField;

    .line 20
    .line 21
    const-string v4, "network"

    .line 22
    .line 23
    invoke-direct {v3, v4, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Ljava/io/ObjectStreamField;

    .line 27
    .line 28
    const-string v5, "campaign"

    .line 29
    .line 30
    invoke-direct {v4, v5, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 34
    .line 35
    const-string v6, "adgroup"

    .line 36
    .line 37
    invoke-direct {v5, v6, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Ljava/io/ObjectStreamField;

    .line 41
    .line 42
    const-string v7, "creative"

    .line 43
    .line 44
    invoke-direct {v6, v7, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Ljava/io/ObjectStreamField;

    .line 48
    .line 49
    const-string v8, "clickLabel"

    .line 50
    .line 51
    invoke-direct {v7, v8, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 55
    .line 56
    const-string v9, "costType"

    .line 57
    .line 58
    invoke-direct {v8, v9, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Ljava/io/ObjectStreamField;

    .line 62
    .line 63
    const-string v10, "costAmount"

    .line 64
    .line 65
    const-class v11, Ljava/lang/Double;

    .line 66
    .line 67
    invoke-direct {v9, v10, v11}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    new-instance v10, Ljava/io/ObjectStreamField;

    .line 71
    .line 72
    const-string v11, "costCurrency"

    .line 73
    .line 74
    invoke-direct {v10, v11, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    new-instance v11, Ljava/io/ObjectStreamField;

    .line 78
    .line 79
    const-string v12, "fbInstallReferrer"

    .line 80
    .line 81
    invoke-direct {v11, v12, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Ljava/io/ObjectStreamField;

    .line 85
    .line 86
    const-string v13, "jsonResponse"

    .line 87
    .line 88
    invoke-direct {v12, v13, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    move-object v2, v3

    .line 92
    move-object v3, v4

    .line 93
    move-object v4, v5

    .line 94
    move-object v5, v6

    .line 95
    move-object v6, v7

    .line 96
    move-object v7, v8

    .line 97
    move-object v8, v9

    .line 98
    move-object v9, v10

    .line 99
    move-object v10, v11

    .line 100
    move-object v11, v12

    .line 101
    filled-new-array/range {v0 .. v11}, [Ljava/io/ObjectStreamField;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/adjust/sdk/AdjustAttribution;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 106
    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Lcom/adjust/sdk/AdjustAttribution;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    return v1

    .line 55
    :cond_5
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    return v1

    .line 66
    :cond_6
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    return v1

    .line 77
    :cond_7
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_8

    .line 86
    .line 87
    return v1

    .line 88
    :cond_8
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_9

    .line 97
    .line 98
    return v1

    .line 99
    :cond_9
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->costType:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->costType:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_a

    .line 108
    .line 109
    return v1

    .line 110
    :cond_a
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->costAmount:Ljava/lang/Double;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->costAmount:Ljava/lang/Double;

    .line 113
    .line 114
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_b

    .line 119
    .line 120
    return v1

    .line 121
    :cond_b
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->costCurrency:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v3, p1, Lcom/adjust/sdk/AdjustAttribution;->costCurrency:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_c

    .line 130
    .line 131
    return v1

    .line 132
    :cond_c
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->fbInstallReferrer:Ljava/lang/String;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->fbInstallReferrer:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v2, p1}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_d

    .line 141
    .line 142
    return v1

    .line 143
    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costType:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costAmount:Ljava/lang/Double;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashDouble(Ljava/lang/Double;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costCurrency:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->fbInstallReferrer:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string/jumbo v2, "trackerToken"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-string/jumbo v2, "trackerName"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v2, "network"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const-string v2, "campaign"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    const-string v2, "adgroup"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    const-string v2, "creative"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    const-string v2, "clickLabel"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_6
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costType:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    const-string v2, "costType"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_7
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costAmount:Ljava/lang/Double;

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "costAmount"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_8
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->costCurrency:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    const-string v2, "costCurrency"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_9
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->fbInstallReferrer:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    const-string v2, "fbInstallReferrer"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_a
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->jsonResponse:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v1, :cond_b

    .line 114
    .line 115
    const-string v2, "jsonResponse"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/adjust/sdk/AdjustAttribution;->costType:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/adjust/sdk/AdjustAttribution;->costAmount:Ljava/lang/Double;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/adjust/sdk/AdjustAttribution;->costCurrency:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/adjust/sdk/AdjustAttribution;->fbInstallReferrer:Ljava/lang/String;

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v1, "tt:%s tn:%s net:%s cam:%s adg:%s cre:%s cl:%s ct:%s ca:%.2f cc:%s fir:%s"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
