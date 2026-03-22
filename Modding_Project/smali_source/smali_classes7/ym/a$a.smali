.class Lym/a$a;
.super Ljava/lang/Object;
.source "OMSDKSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lym/a;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lym/a$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/iab/omid/library/appodeal/Omid;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lym/a$a;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/iab/omid/library/appodeal/Omid;->activate(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/iab/omid/library/appodeal/Omid;->updateLastActivity()V

    .line 14
    .line 15
    .line 16
    const-string v0, "Appodeal"

    .line 17
    .line 18
    const-string v1, "1.5.5"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lym/a;->a(Lcom/iab/omid/library/appodeal/adsession/Partner;)Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lym/a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
