.class public final Lio/bidmachine/analytics/internal/A$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/A$b;->a:Lio/bidmachine/analytics/internal/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAllData()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/A$b;->a:Lio/bidmachine/analytics/internal/f;

    .line 20
    .line 21
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/f;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/A$b;->a:Lio/bidmachine/analytics/internal/f;

    .line 31
    .line 32
    new-instance v1, Lio/bidmachine/analytics/internal/q0;

    .line 33
    .line 34
    const-string v2, "isimp"

    .line 35
    .line 36
    sget-object v3, Lio/bidmachine/analytics/internal/q0$a;->d:Lio/bidmachine/analytics/internal/q0$a;

    .line 37
    .line 38
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, v2, v3, p1}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/f;->a(Lio/bidmachine/analytics/internal/q0;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/A$b;->a:Lio/bidmachine/analytics/internal/f;

    .line 57
    .line 58
    new-instance v6, Lio/bidmachine/analytics/internal/q0;

    .line 59
    .line 60
    const-string v1, "isimp"

    .line 61
    .line 62
    sget-object v2, Lio/bidmachine/analytics/internal/q0$a;->c:Lio/bidmachine/analytics/internal/q0$a;

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    move-object v0, v6

    .line 68
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v6}, Lio/bidmachine/analytics/internal/f;->a(Lio/bidmachine/analytics/internal/q0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :goto_3
    return-void
.end method
