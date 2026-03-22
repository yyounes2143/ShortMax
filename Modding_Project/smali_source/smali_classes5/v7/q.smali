.class public final Lv7/q;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# static fields
.field private static c:Lv7/q;


# instance fields
.field private a:Z

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lv7/q;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lv7/q;
    .locals 1

    .line 1
    sget-object v0, Lv7/q;->c:Lv7/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv7/q;

    .line 6
    .line 7
    invoke-direct {v0}, Lv7/q;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lv7/q;->c:Lv7/q;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lv7/q;->c:Lv7/q;

    .line 13
    .line 14
    return-object v0
.end method

.method private final b(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lv7/q;->b:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lv7/q;->c:Lv7/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lv7/q;->a:Z

    .line 5
    .line 6
    iget-object v0, v0, Lv7/q;->b:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Lv7/q;->c:Lv7/q;

    .line 15
    .line 16
    iget-object v0, v0, Lv7/q;->b:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lv7/q;->c:Lv7/q;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lv7/q;->b:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic d(Lv7/q;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V
    .locals 0

    .line 1
    const-string p0, "com.google.firebase.auth.internal.RECAPTCHA_TOKEN"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lv7/q;->c(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv7/q;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv7/s;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lv7/s;-><init>(Lv7/q;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lv7/q;->b(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lv7/q;->a:Z

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method
