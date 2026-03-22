.class public Lcom/applovin/impl/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/q0$e;


# static fields
.field private static l:Ljava/lang/ref/WeakReference;

.field private static final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/applovin/impl/l3;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/util/Map;

.field private final k:Lcom/applovin/impl/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/impl/m3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

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
    iput-object v0, p0, Lcom/applovin/impl/m3;->e:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/applovin/impl/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/applovin/impl/m3;->h:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/applovin/impl/m3;->b:Lcom/applovin/impl/sdk/o;

    .line 28
    .line 29
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/applovin/impl/m3;->c:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v1, Lcom/applovin/impl/l3;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/applovin/impl/l3;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/applovin/impl/m3;->d:Lcom/applovin/impl/l3;

    .line 41
    .line 42
    new-instance v0, Lcom/applovin/impl/b0;

    .line 43
    .line 44
    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/b0;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/b0$a;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/applovin/impl/m3;->k:Lcom/applovin/impl/b0;

    .line 48
    .line 49
    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 3
    sget-object v0, Lcom/applovin/impl/m3;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 4
    sput-object p0, Lcom/applovin/impl/m3;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Ljava/util/List;Lcom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 3

    .line 43
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->K()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->K()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->getAdUnitIds()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 44
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 45
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/n;

    .line 47
    invoke-virtual {v1}, Lcom/applovin/impl/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    .line 49
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "required_app_ads_txt_entries"

    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    new-instance v2, Lcom/applovin/impl/a0;

    invoke-direct {v2, v1}, Lcom/applovin/impl/a0;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Lcom/applovin/impl/a0;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/m3;->b:Lcom/applovin/impl/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app-ads.txt entry passed down for validation is misformatted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediationDebuggerService"

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 5

    .line 28
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "networks"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 31
    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    new-instance v3, Lcom/applovin/impl/b3;

    invoke-direct {v3, v2, p2}, Lcom/applovin/impl/b3;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v2, p0, Lcom/applovin/impl/m3;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/applovin/impl/b3;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/List;Lcom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 4

    .line 36
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "ad_units"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 39
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v2, Lcom/applovin/impl/n;

    iget-object v3, p0, Lcom/applovin/impl/m3;->e:Ljava/util/Map;

    invoke-direct {v2, v1, v3, p3}, Lcom/applovin/impl/n;-><init>(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/impl/sdk/k;)V

    .line 41
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p2
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/applovin/impl/m3;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/m3;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/m3;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/b3;

    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/b3;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/b3;->q()Lcom/applovin/impl/b3$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/b3$a;->d:Lcom/applovin/impl/b3$a;

    if-ne v0, v1, :cond_0

    .line 24
    new-instance p1, Lcom/applovin/impl/nc;

    invoke-direct {p1, p0}, Lcom/applovin/impl/nc;-><init>(Lcom/applovin/impl/m3;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 26
    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m3;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/m3;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/m3;)Lcom/applovin/impl/l3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/m3;->d:Lcom/applovin/impl/l3;

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 2
    sget-object v0, Lcom/applovin/impl/m3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/m3;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private c()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/applovin/impl/m3;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->v0()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    const-string v0, "Review Integration Errors"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    const-string v1, "Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/oc;

    invoke-direct {v1, p0}, Lcom/applovin/impl/oc;-><init>(Lcom/applovin/impl/m3;)V

    .line 7
    const-string v2, "Show Mediation Debugger"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8
    const-string v1, "DISMISS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 11
    :cond_1
    :goto_0
    const-string v0, "AppLovinSdk"

    const-string v1, "MAX Mediation Debugger has flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this log will only be shown in your development builds. Live apps will not be affected."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/m3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/m3;->d()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/applovin/impl/m3$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/applovin/impl/m3$a;-><init>(Lcom/applovin/impl/m3;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/applovin/impl/m3;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m3;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p4, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/m3;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 11

    .line 72
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/applovin/impl/m3;->b:Lcom/applovin/impl/sdk/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch mediation debugger info: server returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediationDebuggerService"

    invoke-virtual {p4, v1, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string p4, "AppLovinSdk"

    const-string v0, "Unable to show mediation debugger."

    invoke-static {p4, v0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p4, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p4

    const-string v0, "fetchMediationDebuggerInfo"

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/applovin/impl/m3;->d:Lcom/applovin/impl/l3;

    iget-object v10, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/applovin/impl/l3;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/applovin/impl/sdk/k;)V

    .line 76
    iget-object p1, p0, Lcom/applovin/impl/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 6
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/m3;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 10

    .line 57
    iget-object p1, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/m3;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object p1

    .line 58
    iget-object p3, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {p0, p2, p1, p3}, Lcom/applovin/impl/m3;->a(Lorg/json/JSONObject;Ljava/util/List;Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object v2

    .line 59
    iget-object p3, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {p0, v2, p3}, Lcom/applovin/impl/m3;->a(Ljava/util/List;Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-direct {p0, p2}, Lcom/applovin/impl/m3;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p3

    .line 61
    const-string v0, "alert"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    const-string/jumbo v4, "title"

    invoke-static {v0, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    const-string v4, "message"

    invoke-static {v0, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    const-string v0, "account_id"

    invoke-static {p2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "should_display_cmp_details"

    invoke-static {p2, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 66
    iget-object v0, p0, Lcom/applovin/impl/m3;->d:Lcom/applovin/impl/l3;

    iget-object v9, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/applovin/impl/l3;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/applovin/impl/sdk/k;)V

    .line 67
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/applovin/impl/m3;->k:Lcom/applovin/impl/b0;

    invoke-virtual {p2}, Lcom/applovin/impl/b0;->a()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/m3;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    new-instance p1, Lcom/applovin/impl/mc;

    invoke-direct {p1, p0}, Lcom/applovin/impl/mc;-><init>(Lcom/applovin/impl/m3;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget p3, p0, Lcom/applovin/impl/m3;->h:I

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/m3;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3

    .line 9
    iput-object p1, p0, Lcom/applovin/impl/m3;->j:Ljava/util/Map;

    .line 10
    invoke-virtual {p0}, Lcom/applovin/impl/m3;->e()V

    .line 11
    invoke-direct {p0}, Lcom/applovin/impl/m3;->c()Z

    move-result p1

    const-string v0, "AppLovinSdk"

    if-nez p1, :cond_1

    sget-object p1, Lcom/applovin/impl/m3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-boolean p1, p0, Lcom/applovin/impl/m3;->i:Z

    if-nez p1, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/applovin/impl/m3;->f()V

    .line 14
    iput-boolean v2, p0, Lcom/applovin/impl/m3;->i:Z

    .line 15
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/m3;->c:Landroid/content/Context;

    const-class v2, Lcom/applovin/mediation/MaxDebuggerActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    const-string v1, "Starting mediation debugger..."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/m3;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "Mediation debugger is already showing"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/applovin/impl/m3;->g:Z

    .line 8
    iput p2, p0, Lcom/applovin/impl/m3;->h:I

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/applovin/impl/u5;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/u5;-><init>(Lcom/applovin/impl/q0$e;Lcom/applovin/impl/sdk/k;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/m3;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/m3;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/m3;->a(Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MediationDebuggerService{, listAdapter="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/m3;->d:Lcom/applovin/impl/l3;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "}"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
