.class public final Lcom/inmobi/media/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/inmobi/media/ub;

.field public static final c:Lcom/inmobi/commons/core/configs/SignalsConfig;

.field public static d:I

.field public static final e:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "signals"

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 13
    .line 14
    sput-object v0, Lcom/inmobi/media/db;->c:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/cb;->a:Lcom/inmobi/media/cb;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/inmobi/media/db;->e:Lms/i;

    .line 23
    .line 24
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

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/inmobi/media/L3;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    sget-object v1, Lcom/inmobi/media/db;->e:Lms/i;

    .line 15
    .line 16
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance p0, Lcom/inmobi/media/gb;

    .line 29
    .line 30
    const/16 v0, 0x8b6

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/inmobi/media/gb;-><init>(S)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/inmobi/media/kb;->a(Lcom/inmobi/media/jb;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/16 v1, 0x80

    .line 51
    .line 52
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "getApplicationInfo(...)"

    .line 57
    .line 58
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    const-string v0, "com.google.android.play.billingclient.version"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 p0, 0x0

    .line 73
    :goto_0
    sget-object v0, Lcom/inmobi/media/db;->c:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPurchases()Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;->getVersionList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    new-instance v1, Lcom/inmobi/media/ib;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/inmobi/media/ib;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/inmobi/media/kb;->a(Lcom/inmobi/media/jb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move v0, v2

    .line 99
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 100
    .line 101
    return v2

    .line 102
    :cond_4
    sget p0, Lcom/inmobi/media/db;->d:I

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    const/4 v1, 0x1

    .line 106
    if-eq p0, v1, :cond_6

    .line 107
    .line 108
    if-ne p0, v0, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    return v1

    .line 112
    :cond_6
    :goto_2
    new-instance v3, Lcom/inmobi/media/gb;

    .line 113
    .line 114
    if-eq p0, v1, :cond_8

    .line 115
    .line 116
    if-eq p0, v0, :cond_7

    .line 117
    .line 118
    move p0, v2

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    const/16 p0, 0x8b8

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    const/16 p0, 0x8b7

    .line 124
    .line 125
    :goto_3
    invoke-direct {v3, p0}, Lcom/inmobi/media/gb;-><init>(S)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lcom/inmobi/media/kb;->a(Lcom/inmobi/media/jb;)V

    .line 129
    .line 130
    .line 131
    return v2
.end method
