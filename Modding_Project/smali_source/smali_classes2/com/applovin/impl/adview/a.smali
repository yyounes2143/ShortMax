.class public Lcom/applovin/impl/adview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/a$c;,
        Lcom/applovin/impl/adview/a$d;,
        Lcom/applovin/impl/adview/a$e;,
        Lcom/applovin/impl/adview/a$b;
    }
.end annotation


# instance fields
.field private volatile A:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile C:Lcom/applovin/adview/AppLovinAdViewEventListener;

.field private volatile D:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/applovin/impl/sdk/k;

.field private d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private e:Lcom/applovin/impl/sdk/o;

.field private f:Lcom/applovin/communicator/AppLovinCommunicator;

.field private g:Lcom/applovin/impl/adview/a$b;

.field private final h:Ljava/util/Map;

.field private i:Lcom/applovin/sdk/AppLovinAdSize;

.field private j:Ljava/lang/String;

.field private k:Landroidx/browser/customtabs/CustomTabsSession;

.field private l:Lcom/applovin/impl/adview/c;

.field private m:Lcom/applovin/impl/adview/a$e;

.field private n:Lcom/applovin/impl/adview/b;

.field private o:Landroid/webkit/WebView;

.field private p:Lcom/applovin/impl/adview/k;

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private volatile s:Lcom/applovin/impl/sdk/ad/b;

.field private volatile t:Lcom/applovin/sdk/AppLovinAd;

.field private u:Lcom/applovin/impl/adview/f;

.field private v:Lcom/applovin/impl/adview/f;

.field private final w:Ljava/util/concurrent/atomic/AtomicReference;

.field private final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile y:Z

.field private volatile z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->h:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->t:Lcom/applovin/sdk/AppLovinAd;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->w:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    .line 42
    .line 43
    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 18
    .line 19
    const-string v1, "AppLovinAdView"

    .line 20
    .line 21
    const-string v2, "Destroying..."

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/applovin/impl/l8;->b(Landroid/webkit/WebView;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/applovin/impl/l8;->b(Landroid/webkit/WebView;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->k:Landroidx/browser/customtabs/CustomTabsSession;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->D:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    .line 56
    .line 57
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->p:Lcom/applovin/impl/adview/k;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/a;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private synthetic a(I)V
    .locals 3

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 136
    const-string v0, "Exception while running app load callback"

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    const-string v2, "notifyAdLoadFailedCallback"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->a()V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/applovin/impl/adview/a;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private static synthetic a(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 10
    iput-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 11
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/a;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 12
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 13
    invoke-static {p5}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/a;->f:Lcom/applovin/communicator/AppLovinCommunicator;

    .line 14
    iput-object p3, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    .line 15
    iput-object p4, p0, Lcom/applovin/impl/adview/a;->j:Ljava/lang/String;

    .line 16
    instance-of p4, p5, Lcom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    .line 18
    new-instance p1, Lcom/applovin/impl/adview/c;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->l:Lcom/applovin/impl/adview/c;

    .line 19
    new-instance p1, Lcom/applovin/impl/adview/a$c;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/a$c;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/adview/a$a;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->r:Ljava/lang/Runnable;

    .line 20
    new-instance p1, Lcom/applovin/impl/adview/a$d;

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/a$d;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/adview/a$a;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->q:Ljava/lang/Runnable;

    .line 21
    new-instance p1, Lcom/applovin/impl/adview/a$e;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/a$e;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->m:Lcom/applovin/impl/adview/a$e;

    .line 22
    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad size specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/a;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/adview/a;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while running ad load callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    const-string v2, "notifyAdLoadedCallback"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 145
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gtag(\'event\', \'"

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/v4;->O2:Lcom/applovin/impl/v4;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-static {p2, p1, v0}, Lcom/applovin/impl/l8;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/q4;

    goto :goto_1

    .line 160
    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    invoke-static {p2, p1}, Lcom/applovin/impl/l8;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 141
    invoke-static {p1, p2}, Lcom/applovin/impl/l8;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->r:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/w;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/w;-><init>(Lcom/applovin/impl/adview/a;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Landroid/view/MotionEvent;)V
    .locals 8

    .line 28
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/a;

    if-nez v0, :cond_1

    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    if-nez v0, :cond_2

    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/ad/a;

    .line 32
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-static {v0, v1}, Lcom/applovin/impl/b8;->b(Landroid/view/View;Lcom/applovin/impl/sdk/k;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 34
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 35
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    :cond_4
    new-instance p1, Lcom/applovin/impl/adview/f;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    iget-object v3, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/applovin/impl/adview/f;-><init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/adview/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 37
    new-instance v0, Lcom/applovin/impl/adview/z;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/z;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 39
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    check-cast v1, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/q2;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 40
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 41
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/f;->c()Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/c4;->a(Landroid/view/View;)V

    goto :goto_1

    .line 42
    :cond_5
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to expand ad. No Activity found."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->m()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 44
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->i()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;)V

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    const-string v0, "javascript:al_onFailedExpand();"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v1, :cond_3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 5
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    if-eq p1, v1, :cond_6

    .line 7
    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 9
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v3, p1

    .line 11
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_7

    .line 12
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    :cond_7
    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic b(Landroid/webkit/WebView;)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/c4;->c(Landroid/webkit/WebView;)V

    .line 21
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->p:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/e4;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->p:Lcom/applovin/impl/adview/k;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 23
    invoke-virtual {v2}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/c4;->b(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/c4;->a(Landroid/view/View;)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/c4;->h()V

    .line 27
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/c4;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->C1:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 58
    invoke-static {p1, p2}, Lcom/applovin/impl/l8;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/adview/u;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/u;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lcom/applovin/impl/l8;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/applovin/impl/adview/a;->z:Z

    return p0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/a;)Lcom/applovin/adview/AppLovinAdViewEventListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/adview/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/q;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/impl/adview/a;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/applovin/impl/l8;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/a;)Lcom/applovin/impl/sdk/ad/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/a;)Lcom/applovin/impl/adview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->v()V

    return-void
.end method

.method static synthetic h(Lcom/applovin/impl/adview/a;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/a;)Lcom/applovin/impl/adview/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->p:Lcom/applovin/impl/adview/k;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/adview/a;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic k(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->t()V

    return-void
.end method

.method public static synthetic l(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->s()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinAdView"

    const-string v2, "handleApplicationPaused()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    const-string v0, "javascript:al_onAppPaused();"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->o()V

    return-void
.end method

.method private n()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinAdView"

    const-string v2, "handleApplicationResumed()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    const-string v0, "javascript:al_onAppResumed();"

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->r()V

    return-void
.end method

.method private synthetic o()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v1, "/"

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/applovin/impl/adview/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->d()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/a;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->isOpenMeasurementEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/c4;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/applovin/impl/adview/a;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->a()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->E()V

    return-void
.end method

.method public static synthetic q(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->p()V

    return-void
.end method

.method private synthetic r()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching expanded ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/f;->b()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    iput-object v0, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_1
    return-void
.end method

.method public static synthetic r(Lcom/applovin/impl/adview/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(I)V

    return-void
.end method

.method private synthetic s()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/adview/f;->b()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iput-object v1, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/f;->b()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iput-object v1, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    check-cast v2, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_2
    return-void
.end method

.method public static synthetic s(Lcom/applovin/impl/adview/a;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic t()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->f()Lcom/applovin/impl/adview/b;

    move-result-object v0

    const-string v1, "chrome://crash"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/applovin/impl/adview/a;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic u(Lcom/applovin/impl/adview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->q()V

    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    new-instance v1, Lcom/applovin/impl/s2;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/applovin/impl/s2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/applovin/impl/s2;->a()Lcom/applovin/impl/s2;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lcom/applovin/impl/s2;->a(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/s2;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->i()Lcom/applovin/adview/AppLovinAdView;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/applovin/impl/s2;->a(Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/impl/s2;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/applovin/impl/s2;->a()Lcom/applovin/impl/s2;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "Fullscreen Ad Properties"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/applovin/impl/s2;->a(Ljava/lang/String;)Lcom/applovin/impl/s2;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lcom/applovin/impl/s2;->b(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/s2;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/applovin/impl/s2;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/s2;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/applovin/impl/s2;->a()Lcom/applovin/impl/s2;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/applovin/impl/s2;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "AppLovinAdView"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->c1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->q()Lcom/applovin/impl/sdk/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->c()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->a(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 27
    .line 28
    const-string v1, "javascript:al_muteSwitchOn();"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 38
    .line 39
    const-string v1, "javascript:al_muteSwitchOff();"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 11
    .line 12
    sget-object v1, Lcom/applovin/impl/v4;->C1:Lcom/applovin/impl/v4;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v1, "com.applovin.application_paused"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v1, "com.applovin.application_resumed"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 47
    .line 48
    sget-object v1, Lcom/applovin/impl/v4;->D1:Lcom/applovin/impl/v4;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    .line 63
    .line 64
    const-string v1, "com.applovin.custom_tabs_shown"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    .line 73
    .line 74
    const-string v1, "com.applovin.custom_tabs_hidden"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    .line 83
    .line 84
    const-string v1, "com.applovin.custom_tabs_failure"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 93
    .line 94
    const-string v1, "com.applovin.custom_intent_launch_success"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    .line 103
    .line 104
    const-string v1, "com.applovin.custom_intent_launch_failure"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 113
    .line 114
    sget-object v1, Lcom/applovin/impl/v4;->E1:Lcom/applovin/impl/v4;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    .line 129
    .line 130
    const-string v1, "com.applovin.external_redirect_success"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    .line 139
    .line 140
    const-string v1, "com.applovin.external_redirect_failure"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 149
    .line 150
    sget-object v1, Lcom/applovin/impl/v4;->F1:Lcom/applovin/impl/v4;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    .line 165
    .line 166
    const-string v1, "com.applovin.preload_success"

    .line 167
    .line 168
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    .line 175
    .line 176
    const-string v1, "com.applovin.preload_failure"

    .line 177
    .line 178
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdView"

    .line 10
    .line 11
    const-string v2, "AdView fully watched..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->g:Lcom/applovin/impl/adview/a$b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/applovin/impl/adview/a$b;->a(Lcom/applovin/impl/adview/a;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->B0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/applovin/impl/g;->a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/sdk/k;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string v0, "javascript:al_onAttachedToWindow();"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->m1()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->isOpenMeasurementEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/applovin/impl/c4;->f()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    .line 59
    .line 60
    const-string v1, "AppLovinAdView"

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 75
    .line 76
    const-string v2, "onDetachedFromWindowCalled with expanded ad present"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->c()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 92
    .line 93
    const-string v2, "onDetachedFromWindowCalled without an expanded ad present"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_0
    const-string v0, "javascript:al_onDetachedFromWindow();"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->w:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/a;->c(Lcom/applovin/sdk/AppLovinAd;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->z:Z

    .line 22
    .line 23
    return-void
.end method

.method public a()V
    .locals 1

    .line 125
    new-instance v0, Lcom/applovin/impl/adview/r;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/r;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    const-string v1, "AppLovinAdView"

    if-nez v0, :cond_2

    .line 149
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "GA is not initialized. Cannot fire GA event"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 150
    :cond_2
    const-string v0, "event_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v2, "event_params_json"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "Invalid GA event name. Cannot fire GA event"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 154
    :cond_4
    new-instance v1, Lcom/applovin/impl/adview/y;

    invoke-direct {v1, p0, p1, v0}, Lcom/applovin/impl/adview/y;-><init>(Lcom/applovin/impl/adview/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/applovin/impl/adview/s;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/s;-><init>(Lcom/applovin/impl/adview/a;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/p;

    invoke-direct {v0, p1}, Lcom/applovin/impl/adview/p;-><init>(Landroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->m6:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    return-void

    .line 96
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->t:Lcom/applovin/sdk/AppLovinAd;

    if-eq p2, v0, :cond_6

    .line 97
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    iput-object p2, p0, Lcom/applovin/impl/adview/a;->t:Lcom/applovin/sdk/AppLovinAd;

    .line 98
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->x()V

    .line 99
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/b;->setAdHtmlLoaded(Z)V

    .line 100
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz p2, :cond_5

    .line 101
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->z()Lcom/applovin/impl/d1;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/d1;->d(Ljava/lang/Object;)V

    .line 102
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->C0()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 103
    const-string p2, "details"

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/e2;->b(Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->r:Lcom/applovin/impl/c2;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, v1, v2, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 105
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->J()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 106
    const-string p2, "duration_ms"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 107
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->q:Lcom/applovin/impl/c2;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, v1, v2, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 108
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p2, v0}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 109
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->d1()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 110
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/y4;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/x4;->S:Lcom/applovin/impl/x4;

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/y4;->a(Lcom/applovin/impl/x4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v1, "template_browser_package_name"

    invoke-static {v0, v1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:al_onAdViewRendered("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    const-string v0, "javascript:al_onAdViewRendered();"

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 115
    :goto_1
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->C0()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 116
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onAdRestored( \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 117
    :cond_5
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    instance-of p2, p2, Lcom/applovin/impl/sdk/ad/a;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->isOpenMeasurementEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 118
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object p2

    new-instance v0, Lcom/applovin/impl/p6;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    const-string v2, "StartOMSDK"

    new-instance v3, Lcom/applovin/impl/adview/t;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/adview/t;-><init>(Lcom/applovin/impl/adview/a;Landroid/webkit/WebView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 119
    :goto_2
    const-string p2, "Exception while notifying ad display listener"

    const-string v0, "AppLovinAdView"

    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    if-eqz p2, :cond_6

    .line 121
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    const-string v1, "onAdHtmlLoaded"

    invoke-virtual {p2, v0, v1, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public a(Lcom/applovin/adview/AppLovinAdView;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    .line 39
    const-string p1, "AppLovinAdView"

    const-string p2, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 40
    invoke-static {p6}, Lcom/applovin/impl/s;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_1

    .line 41
    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_1
    move-object v3, p3

    if-nez p5, :cond_2

    .line 42
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p5

    :cond_2
    if-eqz p5, :cond_3

    .line 43
    invoke-virtual {p5}, Lcom/applovin/sdk/AppLovinSdk;->a()Lcom/applovin/impl/sdk/k;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    .line 44
    invoke-static {p6}, Lcom/applovin/impl/s;->b(Landroid/util/AttributeSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->u()V

    :cond_3
    return-void

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/a$b;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->g:Lcom/applovin/impl/adview/a$b;

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    const-string p3, "AppLovinAdView"

    const-string p4, "Unable to process ad click - AppLovinAdView destroyed prematurely"

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->D:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {p2, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_c

    .line 50
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-static {p1, p2}, Lcom/applovin/impl/k7;->b(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/k;)V

    .line 51
    iget-boolean p2, p0, Lcom/applovin/impl/adview/a;->y:Z

    const-string v0, "AppLovinAdView"

    if-eqz p2, :cond_b

    .line 52
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p2

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    const-string v2, "source"

    if-eq p2, v1, :cond_0

    .line 53
    move-object p2, p1

    check-cast p2, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    invoke-static {p2}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object p2

    .line 54
    const-string v1, "renderAd"

    invoke-static {v2, v1, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v1

    sget-object v3, Lcom/applovin/impl/c2;->p:Lcom/applovin/impl/c2;

    invoke-virtual {v1, v3, p2}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-static {p1, p2}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/k;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "error_message"

    if-nez p2, :cond_1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve the loaded ad: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    const-string v0, "Unable to retrieve the loaded ad"

    invoke-static {p2, v0}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    .line 59
    check-cast p1, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object p1

    .line 60
    const-string p2, "noAdToRender"

    invoke-static {v2, p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    iget-object p2, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/c2;->s:Lcom/applovin/impl/c2;

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-ne p2, p1, :cond_5

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to show ad again: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/v4;->G1:Lcom/applovin/impl/v4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "attemptingAdReRender"

    const-string v3, "Attempting to show ad again"

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of p1, p1, Lcom/applovin/impl/k2;

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {p1, v3}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-static {p1}, Lcom/applovin/impl/k7;->c(Lcom/applovin/impl/sdk/k;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 69
    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 70
    iget-object v4, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v4

    sget-object v5, Lcom/applovin/impl/c2;->E0:Lcom/applovin/impl/c2;

    invoke-virtual {v4, v5, p2, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    :goto_0
    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 73
    invoke-static {v1, v3, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c2;->s:Lcom/applovin/impl/c2;

    invoke-virtual {v0, v1, p2, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    return-void

    .line 75
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, v0}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 77
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->isOpenMeasurementEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 78
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/c4;->f()V

    .line 79
    :cond_7
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->w:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->t:Lcom/applovin/sdk/AppLovinAd;

    .line 81
    iput-object p2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 82
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->G0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 83
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->A()Lcom/applovin/impl/e1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/e1;->a(Lcom/applovin/impl/adview/a;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/a;->k:Landroidx/browser/customtabs/CustomTabsSession;

    .line 84
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->A()Lcom/applovin/impl/e1;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->D()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->k:Landroidx/browser/customtabs/CustomTabsSession;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/e1;->b(Ljava/util/List;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 85
    :cond_8
    iget-boolean p1, p0, Lcom/applovin/impl/adview/a;->z:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {p1}, Lcom/applovin/impl/k7;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 86
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/b;)V

    .line 87
    :cond_9
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    if-eqz p1, :cond_a

    .line 88
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->c()V

    .line 89
    :cond_a
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->q:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 90
    :cond_b
    const-string p1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 91
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->D:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/applovin/impl/adview/a;->A:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method protected a(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 5

    const/4 v0, 0x1

    .line 26
    :try_start_0
    new-instance v1, Lcom/applovin/impl/adview/b;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->l:Lcom/applovin/impl/adview/c;

    iget-object v3, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    iget-object v4, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/adview/b;-><init>(Lcom/applovin/impl/adview/c;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {v1, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 29
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    invoke-static {v1, p1}, Lcom/applovin/impl/adview/a;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 32
    iget-boolean p1, p0, Lcom/applovin/impl/adview/a;->y:Z

    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->r:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    new-instance p1, Lcom/applovin/impl/adview/a0;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/a0;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 35
    iput-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    return-void

    :catchall_0
    move-exception p1

    .line 36
    const-string v1, "Failed to initialize AdWebView"

    const-string v2, "AppLovinAdView"

    invoke-static {v2, v1, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v1

    const-string v3, "initAdWebView"

    invoke-virtual {v1, v2, v3, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 48
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onWindowFocusChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 19
    new-instance v0, Lcom/applovin/impl/adview/v;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/v;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 8

    .line 60
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "tracking_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "AppLovinAdView"

    const-string v1, "Invalid tracking id. Cannot initialize GA"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 65
    :cond_3
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    .line 66
    new-instance v1, Lcom/applovin/impl/adview/a$a;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/a$a;-><init>(Lcom/applovin/impl/adview/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    const-string v0, "<script src=\'https://www.googletagmanager.com/gtag/js?id=<G-TRACKING_ID>\'></script><script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag(\'js\', new Date());gtag(\'config\', \'<G-TRACKING_ID>\')</script>"

    const-string v1, "<G-TRACKING_ID>"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v0, "<html><head><link rel=\"icon\" href=\"data:,\"><G-SCRIPT_TAG></head><body></body></html>"

    const-string v1, "<G-SCRIPT_TAG>"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object v2, p0, Lcom/applovin/impl/adview/a;->o:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/v4;->Z6:Lcom/applovin/impl/v4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const-string v5, "text/html"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    const-string v0, "AppLovinAdView"

    if-eqz p1, :cond_2

    .line 46
    iget-boolean v1, p0, Lcom/applovin/impl/adview/a;->z:Z

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/a;->c(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    const-string v2, "Ad view has paused when an ad was received, ad saved for later"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_0
    new-instance v0, Lcom/applovin/impl/adview/b0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b0;-><init>(Lcom/applovin/impl/adview/a;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    const-string v1, "No provided when to the view controller"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, -0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(I)V

    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/b8;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onWindowVisibilityChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/applovin/adview/AppLovinAdViewEventListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->C:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object v0
.end method

.method public f()Lcom/applovin/impl/adview/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->n:Lcom/applovin/impl/adview/b;

    return-object v0
.end method

.method public g()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/adview/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->k:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public i()Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public j()Lcom/applovin/impl/sdk/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public k()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "crash_applovin_ad_webview"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/applovin/impl/adview/x;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/x;-><init>(Lcom/applovin/impl/adview/a;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "com.applovin.custom_intent_launch_success"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    const/16 v0, 0xa

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "com.applovin.preload_failure"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v0, 0x9

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_2
    const-string v1, "com.applovin.preload_success"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_3
    const/16 v0, 0x8

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_3
    const-string v1, "com.applovin.application_resumed"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v0, 0x7

    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v1, "com.applovin.custom_tabs_shown"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 v0, 0x6

    .line 81
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v1, "com.applovin.application_paused"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_6

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    const/4 v0, 0x5

    .line 92
    goto :goto_0

    .line 93
    :sswitch_6
    const-string v1, "com.applovin.custom_tabs_hidden"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    const/4 v0, 0x4

    .line 103
    goto :goto_0

    .line 104
    :sswitch_7
    const-string v1, "com.applovin.external_redirect_failure"

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_8

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_8
    const/4 v0, 0x3

    .line 114
    goto :goto_0

    .line 115
    :sswitch_8
    const-string v1, "com.applovin.custom_tabs_failure"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_9

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    const/4 v0, 0x2

    .line 125
    goto :goto_0

    .line 126
    :sswitch_9
    const-string v1, "com.applovin.external_redirect_success"

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_a

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_a
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 137
    :sswitch_a
    const-string v1, "com.applovin.custom_intent_launch_failure"

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_b

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_b
    const/4 v0, 0x0

    .line 147
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/a;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->n()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_2
    invoke-direct {p0}, Lcom/applovin/impl/adview/a;->m()V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/a;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x6980b7a3 -> :sswitch_a
        -0x61a470d6 -> :sswitch_9
        -0x3340cd13 -> :sswitch_8
        -0x331d7f4f -> :sswitch_7
        -0x2f5b9c19 -> :sswitch_6
        -0x1cb20ad9 -> :sswitch_5
        -0x11707ccc -> :sswitch_4
        -0x90a9f02 -> :sswitch_3
        0x13a6fde3 -> :sswitch_2
        0x422def6a -> :sswitch_1
        0x67f856d6 -> :sswitch_0
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public u()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->c:Lcom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->m:Lcom/applovin/impl/adview/a$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/a;->y:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/a;->i:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/adview/a;->m:Lcom/applovin/impl/adview/a$e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/applovin/impl/m1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->U()Lcom/applovin/impl/sdk/ad/b$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/applovin/impl/sdk/ad/b$b;->b:Lcom/applovin/impl/sdk/ad/b$b;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->a:Landroid/content/Context;

    .line 22
    .line 23
    check-cast v0, Lcom/applovin/impl/m1;

    .line 24
    .line 25
    const-string v1, "postitial_click"

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/applovin/impl/m1;->dismiss(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->u:Lcom/applovin/impl/adview/f;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->v:Lcom/applovin/impl/adview/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->e:Lcom/applovin/impl/sdk/o;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Ad: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " closed."

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "AppLovinAdView"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->r:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/a;->a(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/applovin/impl/adview/a;->B:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/applovin/impl/adview/a;->s:Lcom/applovin/impl/sdk/ad/b;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/a;->a()V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method
