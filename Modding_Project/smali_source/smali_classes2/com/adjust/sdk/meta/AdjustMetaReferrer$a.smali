.class Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;
.super Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;
.source "AdjustMetaReferrer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/meta/AdjustMetaReferrer;->getMetaInstallReferrer(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adjust/sdk/scheduler/AsyncTaskExecutor<",
        "Landroid/content/Context;",
        "Lcom/adjust/sdk/meta/MetaInstallReferrerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a([Landroid/content/Context;)Lcom/adjust/sdk/meta/MetaInstallReferrerResult;
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/adjust/sdk/meta/MetaReferrerClient;->getMetaInstallReferrer(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/ILogger;Z)Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method protected b(Lcom/adjust/sdk/meta/MetaInstallReferrerResult;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;->metaInstallReferrerDetails:Lcom/adjust/sdk/meta/MetaInstallReferrerDetails;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;->onInstallReferrerDetailsRead(Lcom/adjust/sdk/meta/MetaInstallReferrerDetails;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;->error:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;->onFail(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;

    .line 24
    .line 25
    const-string v0, "Meta Install Referrer details null"

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;->onFail(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->c:Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;

    .line 32
    .line 33
    const-string v0, "Meta Install Referrer result null"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/adjust/sdk/meta/OnMetaInstallReferrerReadListener;->onFail(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->a([Landroid/content/Context;)Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/meta/AdjustMetaReferrer$a;->b(Lcom/adjust/sdk/meta/MetaInstallReferrerResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
