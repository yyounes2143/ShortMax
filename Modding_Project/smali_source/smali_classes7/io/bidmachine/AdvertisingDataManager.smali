.class Lio/bidmachine/AdvertisingDataManager;
.super Ljava/lang/Object;
.source "AdvertisingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdvertisingDataManager$b;,
        Lio/bidmachine/AdvertisingDataManager$AdvertisingData;,
        Lio/bidmachine/AdvertisingDataManager$c;,
        Lio/bidmachine/AdvertisingDataManager$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdvertisingDataManager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lio/bidmachine/AdvertisingDataManager$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->b:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lio/bidmachine/AdvertisingDataManager$c;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, v2}, Lio/bidmachine/AdvertisingDataManager$c;-><init>(Lio/bidmachine/AdvertisingDataManager$a;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Lio/bidmachine/AdvertisingDataManager$d;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lio/bidmachine/AdvertisingDataManager$d;-><init>(Lio/bidmachine/AdvertisingDataManager$a;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object p1, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    :cond_2
    invoke-static {p0}, Lio/bidmachine/AdvertisingDataManager;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_3
    return-object p1
.end method

.method static b()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;->isLimitAdTrackingEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "ad_core_preferences"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    const-string v1, "uuid"

    .line 21
    .line 22
    invoke-static {p0, v1, v0}, Lfr/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->a:Ljava/lang/String;

    .line 38
    .line 39
    sput-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lio/bidmachine/AdvertisingDataManager;->e:Ljava/lang/String;

    .line 55
    .line 56
    return-object p0
.end method

.method static d(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->c:Lio/bidmachine/AdvertisingDataManager$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lio/bidmachine/AdvertisingDataManager$b;->c(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sput-object p0, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    sget-object v0, Lio/bidmachine/AdvertisingDataManager;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lio/bidmachine/AdvertisingDataManager$b;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lio/bidmachine/AdvertisingDataManager$b;->c(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sput-object v1, Lio/bidmachine/AdvertisingDataManager;->c:Lio/bidmachine/AdvertisingDataManager$b;

    .line 39
    .line 40
    sput-object v2, Lio/bidmachine/AdvertisingDataManager;->d:Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 41
    .line 42
    :cond_3
    return-void
.end method
