.class abstract Lio/bidmachine/AdvertisingDataManager$b;
.super Ljava/lang/Object;
.source "AdvertisingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public c(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$b;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/AdvertisingDataManager$b;->a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lio/bidmachine/AdvertisingDataManager$b;->d(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v1
.end method

.method protected d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdvertisingDataManager$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
