.class public final Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;
.super Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.source "UserAgentManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FacebookUserAgentSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.facebook.ads.internal.ua"

    .line 7
    .line 8
    const-string v1, "user_agent"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
