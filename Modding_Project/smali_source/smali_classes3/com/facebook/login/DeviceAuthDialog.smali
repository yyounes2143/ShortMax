.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DeviceAuthDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$a;,
        Lcom/facebook/login/DeviceAuthDialog$b;,
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeviceAuthDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceAuthDialog.kt\ncom/facebook/login/DeviceAuthDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,545:1\n1#2:546\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/facebook/login/DeviceAuthDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/login/DeviceAuthMethodHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile f:Lcom/facebook/z;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile h:Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Lcom/facebook/login/LoginClient$Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/DeviceAuthDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/DeviceAuthDialog$a;

    .line 8
    .line 9
    const-string v0, "device/login"

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/login/DeviceAuthDialog;->m:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "device/login_status"

    .line 14
    .line 15
    sput-object v0, Lcom/facebook/login/DeviceAuthDialog;->n:Ljava/lang/String;

    .line 16
    .line 17
    const v0, 0x149636

    .line 18
    .line 19
    .line 20
    sput v0, Lcom/facebook/login/DeviceAuthDialog;->o:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    return-void
.end method

.method private static final A(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p6, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p6, "$userId"

    .line 7
    .line 8
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p6, "$permissions"

    .line 12
    .line 13
    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p6, "$accessToken"

    .line 17
    .line 18
    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/facebook/login/DeviceAuthDialog;->n(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final B(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->r(Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->F(Lcom/facebook/login/LoginClient$Request;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->e:Lcom/facebook/login/DeviceAuthMethodHandler$b;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthMethodHandler$b;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/facebook/login/c;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/facebook/login/c;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private static final D(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->y()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final E(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "confirmationCode"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v0, v2

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lt2/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string v0, "instructions"

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v0, v2

    .line 48
    :cond_1
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v0, v2

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    const-string v0, "progressBar"

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object v2, v0

    .line 74
    :goto_0
    const/16 v0, 0x8

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lt2/a;->f(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    new-instance v0, Lcom/facebook/appevents/h0;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Lcom/facebook/appevents/h0;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "fb_smart_login_service"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/facebook/appevents/h0;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->j()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->C()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->y()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

.method private static final G(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->e()Lcom/facebook/FacebookException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/facebook/FacebookException;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_4

    .line 48
    .line 49
    new-instance p1, Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_4
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    const-string v1, "user_code"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->h(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "code"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->g(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "interval"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->E(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/facebook/FacebookException;

    .line 92
    .line 93
    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static synthetic e(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/facebook/login/DeviceAuthDialog;->A(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->G(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/facebook/login/DeviceAuthDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->s(Lcom/facebook/login/DeviceAuthDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/login/DeviceAuthDialog;->B(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/login/DeviceAuthDialog;->D(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->l(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/DeviceAuthDialog;->x(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/b0;)V
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_9

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->g()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget v1, Lcom/facebook/login/DeviceAuthDialog;->o:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v1, 0x149634

    .line 36
    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    :goto_0
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->C()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const v1, 0x149620

    .line 45
    .line 46
    .line 47
    if-ne v0, v1, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lt2/a;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->F(Lcom/facebook/login/LoginClient$Request;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->u()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const v1, 0x149635

    .line 73
    .line 74
    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->u()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->e()Lcom/facebook/FacebookException;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_8

    .line 92
    .line 93
    :cond_7
    new-instance p1, Lcom/facebook/FacebookException;

    .line 94
    .line 95
    invoke-direct {p1}, Lcom/facebook/FacebookException;-><init>()V

    .line 96
    .line 97
    .line 98
    :cond_8
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-nez p1, :cond_a

    .line 107
    .line 108
    new-instance p1, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception p1

    .line 115
    goto :goto_3

    .line 116
    :cond_a
    :goto_2
    const-string v0, "access_token"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "resultObject.getString(\"access_token\")"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v1, "expires_in"

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    const-string v3, "data_access_expiration_time"

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/facebook/login/DeviceAuthDialog;->w(Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :goto_3
    new-instance v0, Lcom/facebook/FacebookException;

    .line 148
    .line 149
    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 153
    .line 154
    .line 155
    :goto_4
    return-void
.end method

.method private final n(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {p2}, Lcom/facebook/login/DeviceAuthDialog$b;->c()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v5, v2

    .line 15
    check-cast v5, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/facebook/login/DeviceAuthDialog$b;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v6, v2

    .line 22
    check-cast v6, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/facebook/login/DeviceAuthDialog$b;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v7, v2

    .line 29
    check-cast v7, Ljava/util/Collection;

    .line 30
    .line 31
    sget-object v8, Lcom/facebook/AccessTokenSource;->DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    move-object v2, p3

    .line 35
    move-object v4, p1

    .line 36
    move-object/from16 v9, p4

    .line 37
    .line 38
    move-object/from16 v11, p5

    .line 39
    .line 40
    invoke-virtual/range {v1 .. v11}, Lcom/facebook/login/DeviceAuthMethodHandler;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private final q()Lcom/facebook/GraphRequest;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v2

    .line 17
    :goto_0
    const-string v3, "code"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->o()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "access_token"

    .line 27
    .line 28
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 32
    .line 33
    sget-object v3, Lcom/facebook/login/DeviceAuthDialog;->n:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v4, Lcom/facebook/login/d;

    .line 36
    .line 37
    invoke-direct {v4, p0}, Lcom/facebook/login/d;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest$c;->B(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method private static final s(Lcom/facebook/login/DeviceAuthDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->u()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final w(Ljava/lang/String;JLjava/lang/Long;)V
    .locals 23

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fields"

    .line 7
    .line 8
    const-string v2, "id,permissions,name"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    cmp-long v3, p2, v1

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-wide/16 v5, 0x3e8

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Ljava/util/Date;

    .line 23
    .line 24
    new-instance v7, Ljava/util/Date;

    .line 25
    .line 26
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    mul-long v9, p2, v5

    .line 34
    .line 35
    add-long/2addr v7, v9

    .line 36
    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v3, v4

    .line 41
    :goto_0
    if-nez p4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    cmp-long v1, v7, v1

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    :goto_1
    if-eqz p4, :cond_2

    .line 53
    .line 54
    new-instance v4, Ljava/util/Date;

    .line 55
    .line 56
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    mul-long/2addr v1, v5

    .line 61
    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 62
    .line 63
    .line 64
    :cond_2
    new-instance v1, Lcom/facebook/AccessToken;

    .line 65
    .line 66
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    const/16 v21, 0x400

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const-string v12, "0"

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    move-object v9, v1

    .line 86
    move-object/from16 v10, p1

    .line 87
    .line 88
    move-object/from16 v17, v3

    .line 89
    .line 90
    move-object/from16 v19, v4

    .line 91
    .line 92
    invoke-direct/range {v9 .. v22}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 96
    .line 97
    new-instance v5, Lcom/facebook/login/f;

    .line 98
    .line 99
    move-object/from16 v6, p0

    .line 100
    .line 101
    move-object/from16 v7, p1

    .line 102
    .line 103
    invoke-direct {v5, v6, v7, v3, v4}, Lcom/facebook/login/f;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 104
    .line 105
    .line 106
    const-string v3, "me"

    .line 107
    .line 108
    invoke-virtual {v2, v1, v3, v5}, Lcom/facebook/GraphRequest$c;->x(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->G(Lcom/facebook/HttpMethod;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->l()Lcom/facebook/z;

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private static final x(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/b0;)V
    .locals 8

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$accessToken"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "response"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p4}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->e()Lcom/facebook/FacebookException;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/facebook/FacebookException;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/facebook/FacebookException;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p4}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    if-nez p4, :cond_3

    .line 51
    .line 52
    new-instance p4, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_0
    const-string v0, "id"

    .line 61
    .line 62
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v0, "jsonObject.getString(\"id\")"

    .line 67
    .line 68
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/DeviceAuthDialog$a;

    .line 72
    .line 73
    invoke-static {v0, p4}, Lcom/facebook/login/DeviceAuthDialog$a;->a(Lcom/facebook/login/DeviceAuthDialog$a;Lorg/json/JSONObject;)Lcom/facebook/login/DeviceAuthDialog$b;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v0, "name"

    .line 78
    .line 79
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const-string p4, "jsonObject.getString(\"name\")"

    .line 84
    .line 85
    invoke-static {v5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    iget-object p4, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 89
    .line 90
    if-eqz p4, :cond_4

    .line 91
    .line 92
    invoke-virtual {p4}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {p4}, Lt2/a;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-static {p4}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;)Lcom/facebook/internal/p;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    if-eqz p4, :cond_5

    .line 108
    .line 109
    invoke-virtual {p4}, Lcom/facebook/internal/p;->w()Ljava/util/EnumSet;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    if-eqz p4, :cond_5

    .line 114
    .line 115
    sget-object v0, Lcom/facebook/internal/SmartLoginOption;->RequireConfirm:Lcom/facebook/internal/SmartLoginOption;

    .line 116
    .line 117
    invoke-virtual {p4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p4

    .line 121
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 p4, 0x0

    .line 127
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p4

    .line 133
    if-eqz p4, :cond_6

    .line 134
    .line 135
    iget-boolean p4, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 136
    .line 137
    if-nez p4, :cond_6

    .line 138
    .line 139
    const/4 p4, 0x1

    .line 140
    iput-boolean p4, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 141
    .line 142
    move-object v1, p0

    .line 143
    move-object v4, p1

    .line 144
    move-object v6, p2

    .line 145
    move-object v7, p3

    .line 146
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/DeviceAuthDialog;->z(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_6
    move-object v1, p0

    .line 151
    move-object v4, p1

    .line 152
    move-object v5, p2

    .line 153
    move-object v6, p3

    .line 154
    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/DeviceAuthDialog;->n(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_2
    new-instance p2, Lcom/facebook/FacebookException;

    .line 159
    .line 160
    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->v(Lcom/facebook/FacebookException;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->f(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->q()Lcom/facebook/GraphRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->l()Lcom/facebook/z;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/z;

    .line 26
    .line 27
    return-void
.end method

.method private final z(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/facebook/common/e;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "resources.getString(R.st\u2026login_confirmation_title)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/facebook/common/e;->f:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "resources.getString(R.st\u2026confirmation_continue_as)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Lcom/facebook/common/e;->e:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "resources.getString(R.st\u2026ogin_confirmation_cancel)"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 47
    .line 48
    filled-new-array/range {p4 .. p4}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "format(format, *args)"

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v11, Lcom/facebook/login/g;

    .line 84
    .line 85
    move-object v4, v11

    .line 86
    move-object v5, p0

    .line 87
    move-object v6, p1

    .line 88
    move-object v7, p2

    .line 89
    move-object v8, p3

    .line 90
    move-object/from16 v9, p5

    .line 91
    .line 92
    move-object/from16 v10, p6

    .line 93
    .line 94
    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/g;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/facebook/login/h;

    .line 102
    .line 103
    move-object v4, p0

    .line 104
    invoke-direct {v1, p0}, Lcom/facebook/login/h;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public F(Lcom/facebook/login/LoginClient$Request;)V
    .locals 4
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->o()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Iterable;

    .line 18
    .line 19
    const-string v2, ","

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "scope"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "redirect_uri"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->j()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u0;->r0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "target_user_id"

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/u0;->r0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->o()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "access_token"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->m()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object p1, v1

    .line 70
    :goto_0
    invoke-static {p1}, Lt2/a;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v2, "device_info"

    .line 75
    .line 76
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 80
    .line 81
    sget-object v2, Lcom/facebook/login/DeviceAuthDialog;->m:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v3, Lcom/facebook/login/e;

    .line 84
    .line 85
    invoke-direct {v3, p0}, Lcom/facebook/login/e;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/facebook/GraphRequest$c;->B(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->l()Lcom/facebook/z;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/internal/v0;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7c

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/facebook/internal/v0;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/facebook/common/f;->b:I

    .line 6
    .line 7
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/login/DeviceAuthDialog$c;-><init>(Lcom/facebook/login/DeviceAuthDialog;Landroidx/fragment/app/FragmentActivity;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lt2/a;->e()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->r(Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "null cannot be cast to non-null type com.facebook.FacebookActivity"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p2, Lcom/facebook/FacebookActivity;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/facebook/FacebookActivity;->j()Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/facebook/login/LoginFragment;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/facebook/login/LoginFragment;->l()Lcom/facebook/login/LoginClient;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->k()Lcom/facebook/login/LoginMethodHandler;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    check-cast p2, Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    const-string p2, "request_state"

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    invoke-direct {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->E(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/z;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->u()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "request_state"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected p(Z)I
    .locals 0
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/facebook/common/d;->d:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/facebook/common/d;->b:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method protected r(Z)Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "requireActivity().layoutInflater"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->p(Z)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "inflater.inflate(getLayo\u2026esId(isSmartLogin), null)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget v0, Lcom/facebook/common/c;->f:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "view.findViewById(R.id.progress_bar)"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    .line 40
    .line 41
    sget v0, Lcom/facebook/common/c;->e:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    .line 48
    .line 49
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 55
    .line 56
    sget v0, Lcom/facebook/common/c;->a:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v3, "null cannot be cast to non-null type android.widget.Button"

    .line 63
    .line 64
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v0, Landroid/widget/Button;

    .line 68
    .line 69
    new-instance v3, Lcom/facebook/login/b;

    .line 70
    .line 71
    invoke-direct {v3, p0}, Lcom/facebook/login/b;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    sget v0, Lcom/facebook/common/c;->b:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    .line 89
    .line 90
    if-nez v0, :cond_0

    .line 91
    .line 92
    const-string v0, "instructions"

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move-object v1, v0

    .line 99
    :goto_0
    sget v0, Lcom/facebook/common/e;->a:I

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-object p1
.end method

.method protected t()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lt2/a;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->z()V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method protected v(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1    # Lcom/facebook/FacebookException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lt2/a;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->A(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method
