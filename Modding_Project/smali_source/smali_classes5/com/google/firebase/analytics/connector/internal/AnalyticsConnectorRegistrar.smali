.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@23.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$getComponents$0(Lw7/d;)Ln7/a;
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/f;

    .line 8
    .line 9
    const-class v1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-interface {p0, v1}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/Context;

    .line 16
    .line 17
    const-class v2, Lt8/d;

    .line 18
    .line 19
    invoke-interface {p0, v2}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lt8/d;

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Ln7/b;->h(Lcom/google/firebase/f;Landroid/content/Context;Lt8/d;)Ln7/a;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method static synthetic zza(Lw7/d;)Ln7/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lw7/d;)Ln7/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ln7/a;

    .line 2
    .line 3
    invoke-static {v0}, Lw7/c;->c(Ljava/lang/Class;)Lw7/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/google/firebase/f;

    .line 8
    .line 9
    invoke-static {v1}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-class v1, Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lt8/d;

    .line 28
    .line 29
    invoke-static {v1}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/firebase/analytics/connector/internal/a;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lw7/c$b;->e()Lw7/c$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lw7/c$b;->d()Lw7/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "fire-analytics"

    .line 52
    .line 53
    const-string v2, "23.0.0"

    .line 54
    .line 55
    invoke-static {v1, v2}, Le9/h;->b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    filled-new-array {v0, v1}, [Lw7/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
