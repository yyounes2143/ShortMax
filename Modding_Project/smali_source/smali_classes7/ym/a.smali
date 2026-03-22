.class public Lym/a;
.super Ljava/lang/Object;
.source "OMSDKSettings.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static c:Lcom/iab/omid/library/appodeal/adsession/Partner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lym/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lym/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/iab/omid/library/appodeal/adsession/Partner;)Lcom/iab/omid/library/appodeal/adsession/Partner;
    .locals 0

    .line 1
    sput-object p0, Lym/a;->c:Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lym/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Lio/bidmachine/protobuf/sdk/SDK$Builder;)V
    .locals 1
    .param p0    # Lio/bidmachine/protobuf/sdk/SDK$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Appodeal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setOmidpn(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 4
    .line 5
    .line 6
    const-string v0, "1.5.5"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setOmidpv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static d(Lcom/explorestack/protobuf/Struct$Builder;)V
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/Struct$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Appodeal"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "omidpn"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "1.5.5"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "omidpv"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static e()Lcom/iab/omid/library/appodeal/adsession/Partner;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lym/a;->c:Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 2
    .line 3
    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lym/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lio/bidmachine/ExtraParamsManager;->getInternalDataRetriever(Landroid/content/Context;)Lgr/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "omsdk_disabled"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lgr/d;->l(Ljava/lang/Object;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Lym/a$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lym/a$a;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-object v0, Lym/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
