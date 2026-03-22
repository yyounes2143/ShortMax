.class public Landroidx/webkit/internal/ApiHelperForOMR1;
.super Ljava/lang/Object;
.source "ApiHelperForOMR1.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1b
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static backToSafety(Landroid/webkit/SafeBrowsingResponse;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/webkit/internal/h;->a(Landroid/webkit/SafeBrowsingResponse;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/f;->a()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static proceed(Landroid/webkit/SafeBrowsingResponse;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/webkit/internal/k;->a(Landroid/webkit/SafeBrowsingResponse;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/webkit/internal/g;->a(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showInterstitial(Landroid/webkit/SafeBrowsingResponse;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/webkit/internal/j;->a(Landroid/webkit/SafeBrowsingResponse;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/webkit/internal/i;->a(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
