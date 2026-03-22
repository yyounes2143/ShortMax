.class public final Ls1/l$a;
.super Ljava/lang/Object;
.source "ViewIndexer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/l$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ls1/l$a;->c(Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/facebook/b0;)V
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 9
    .line 10
    invoke-static {}, Ls1/l;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "App index sent to FB!"

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "requestType"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v1, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 11
    .line 12
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 13
    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const-string v3, "%s/app_indexing"

    .line 26
    .line 27
    invoke-static {v2, v3, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const-string v2, "format(locale, format, *args)"

    .line 32
    .line 33
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2, p3, v0, v0}, Lcom/facebook/GraphRequest$c;->A(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    if-nez p3, :cond_1

    .line 45
    .line 46
    new-instance p3, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string v0, "tree"

    .line 52
    .line 53
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "app_version"

    .line 57
    .line 58
    invoke-static {}, La2/h;->c()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "platform"

    .line 66
    .line 67
    const-string v0, "android"

    .line 68
    .line 69
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "request_type"

    .line 73
    .line 74
    invoke-virtual {p3, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p1, "app_indexing"

    .line 78
    .line 79
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const-string p1, "device_session_id"

    .line 86
    .line 87
    invoke-static {}, Ls1/e;->g()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p3, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p2, p3}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Ls1/k;

    .line 98
    .line 99
    invoke-direct {p1}, Ls1/k;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/facebook/GraphRequest;->D(Lcom/facebook/GraphRequest$b;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method
