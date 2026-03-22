.class public Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.super Ljava/lang/Object;
.source "UserAgentManager.kt"

# interfaces
.implements Lio/bidmachine/UserAgentManager$UserAgentSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferenceUserAgentSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final field:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "field"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->name:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->field:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "context.applicationContext"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->name:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->field:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    :cond_1
    return-object v0
.end method
