.class final Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;
.super Ljava/lang/Object;
.source "ActActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->h(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->f(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->g(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;ILorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->e(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;ILorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;ILorg/json/JSONObject;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_6

    .line 3
    .line 4
    const/16 v0, 0xd

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string p1, "url"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    if-eqz v1, :cond_7

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/act/d;

    .line 32
    .line 33
    invoke-direct {p1, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/act/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    if-eqz p2, :cond_4

    .line 41
    .line 42
    const-string p1, "key"

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_4
    if-eqz v1, :cond_7

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "=; Expires=Wed, 31 Dec 2015 23:59:59 GMT"

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p0, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/4 p1, 0x1

    .line 90
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 91
    .line 92
    .line 93
    :cond_7
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p0
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->g0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "skuId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->m0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final h(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->X(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final callApp(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lce/j;->a:Lce/j;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 9
    .line 10
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->Y(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 15
    .line 16
    new-instance v7, Lcom/startshorts/androidplayer/ui/activity/act/a;

    .line 17
    .line 18
    invoke-direct {v7, v0}, Lcom/startshorts/androidplayer/ui/activity/act/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 22
    .line 23
    new-instance v8, Lcom/startshorts/androidplayer/ui/activity/act/b;

    .line 24
    .line 25
    invoke-direct {v8, v0}, Lcom/startshorts/androidplayer/ui/activity/act/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 29
    .line 30
    new-instance v9, Lcom/startshorts/androidplayer/ui/activity/act/c;

    .line 31
    .line 32
    invoke-direct {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/act/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const-string v3, "ActActivity"

    .line 37
    .line 38
    move-object v6, p1

    .line 39
    invoke-virtual/range {v1 .. v9}, Lce/j;->q(ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
