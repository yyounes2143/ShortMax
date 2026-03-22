.class public final Lcom/startshorts/androidplayer/manager/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUpdateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateManager.kt\ncom/startshorts/androidplayer/manager/update/UpdateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n1557#3:205\n1628#3,3:206\n1557#3:209\n1628#3,3:210\n*S KotlinDebug\n*F\n+ 1 UpdateManager.kt\ncom/startshorts/androidplayer/manager/update/UpdateManager\n*L\n182#1:205\n182#1:206,3\n183#1:209\n183#1:210,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lmi/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/update/UpdateData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->i(Lcom/startshorts/androidplayer/bean/update/UpdateData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const/4 v8, 0x6

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v4, p2

    .line 70
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Iterable;

    .line 75
    .line 76
    new-instance p2, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    move v0, v1

    .line 126
    :goto_2
    if-ge v0, p1, :cond_6

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ge v0, v3, :cond_2

    .line 133
    .line 134
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    goto :goto_3

    .line 145
    :cond_2
    move v3, v1

    .line 146
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-ge v0, v4, :cond_3

    .line 151
    .line 152
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/lang/Number;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_4

    .line 163
    :cond_3
    move v4, v1

    .line 164
    :goto_4
    if-eq v3, v4, :cond_5

    .line 165
    .line 166
    if-le v3, v4, :cond_4

    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    goto :goto_5

    .line 170
    :cond_4
    const/4 p1, -0x1

    .line 171
    :goto_5
    return p1

    .line 172
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_6
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "compareVersion exception -> "

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string v0, "UpdateManager"

    .line 199
    .line 200
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_6
    return v1
.end method

.method private final c(Lcom/startshorts/androidplayer/bean/update/UpdateData;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getMinVersion()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ltz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final e(Lcom/startshorts/androidplayer/bean/update/UpdateData;)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getRecentShowDay()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sub-int/2addr v0, p1

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->q()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    return v0
.end method

.method private final f()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "UpdateManager"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v3, "canShowUpdateDialog=false,UpdateRepo.updateData=null."

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getUpdate()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 27
    .line 28
    const-string v3, "canShowUpdateDialog=false,update=UPDATE_NEVER."

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->c(Lcom/startshorts/androidplayer/bean/update/UpdateData;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "canShowUpdateDialog=false,"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, ">="

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getMinVersion()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 76
    .line 77
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getUpdate()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x2

    .line 86
    const/4 v5, 0x1

    .line 87
    if-ne v3, v4, :cond_3

    .line 88
    .line 89
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 90
    .line 91
    const-string v1, "canShowUpdateDialog=true, force=true."

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v5

    .line 97
    :cond_3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->e(Lcom/startshorts/androidplayer/bean/update/UpdateData;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getTipPeriod()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-ge v3, v4, :cond_4

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v5, "canShowUpdateDialog=false,dayGap=("

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, ") < tipPeriod("

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getTipPeriod()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const/16 v0, 0x29

    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 142
    .line 143
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v1

    .line 147
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v4, "canShowUpdateDialog=true dayGap="

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return v5
.end method

.method private static final i(Lcom/startshorts/androidplayer/bean/update/UpdateData;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "init fetchUpdateData -> "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "UpdateManager"

    .line 55
    .line 56
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->h()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const-string v0, "mandatory_updates"

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    const-string v0, "recommended_updates"

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    :goto_1
    const-string v0, ""

    .line 34
    .line 35
    :goto_2
    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    new-instance v1, Lzf/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lzf/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->d(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->h()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->h()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 25
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "isRecommendShowUpdateDialog = "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "UpdateManager"

    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method public final m()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->b:Lmi/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final n()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/update/UpdateManager$logUpdateSuccessEvent$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager$logUpdateSuccessEvent$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logUpdateSuccessEvent"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final o(Landroid/app/Activity;)Lmi/d;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->p()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "UpdateManager"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    const-string v0, "create new UpdateDialog failed,displayAble = false"

    .line 21
    .line 22
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->m()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 33
    .line 34
    const-string v0, "create new UpdateDialog failed,isUpdateDialogShowing = true"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 41
    .line 42
    const-string v1, "create new UpdateDialog"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lmi/d;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lmi/d;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->b:Lmi/d;

    .line 53
    .line 54
    return-object v0
.end method

.method public final p()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->b:Lmi/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sput-object v1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->b:Lmi/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lmi/d;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v2, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->d()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->setRecentShowDay(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->k(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getMinVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->setVersionCodeUpdating(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->k(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
