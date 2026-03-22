.class public Lcom/huawei/hms/framework/network/grs/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/huawei/hms/framework/network/grs/b;->a:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/huawei/hms/framework/network/grs/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hms/framework/network/grs/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Lcom/huawei/hms/framework/network/grs/b;->a:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/huawei/hms/framework/network/grs/a;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance v4, Lcom/huawei/hms/framework/network/grs/a;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/a;->o(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v3

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v3, "GrsClientManager"

    .line 53
    .line 54
    const-string v4, "The app_name, ser_country, reg_country and issue_country is equal, but other not."

    .line 55
    .line 56
    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/huawei/hms/framework/network/grs/a;

    .line 60
    .line 61
    invoke-direct {v3, p1, p0}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    monitor-exit v0

    .line 87
    return-object v3

    .line 88
    :cond_1
    const-string v3, "GrsClientManager"

    .line 89
    .line 90
    const-string v4, "grsClientImpl == null, and new GrsClientImpl"

    .line 91
    .line 92
    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/huawei/hms/framework/network/grs/a;

    .line 96
    .line 97
    invoke-direct {v3, p1, p0}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    monitor-exit v0

    .line 123
    return-object v3

    .line 124
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method
