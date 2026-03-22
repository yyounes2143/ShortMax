.class Lcom/applovin/impl/mediation/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/h3;

.field private final c:J

.field private final d:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/h3;JLcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/mediation/h$c;->a:Lcom/applovin/impl/sdk/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/mediation/h$c;->b:Lcom/applovin/impl/h3;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/applovin/impl/mediation/h$c;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/applovin/impl/mediation/h$c;->d:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/h$c;Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/h$c;->a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 10

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/mediation/h$c;->c:J

    sub-long v6, v0, v2

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$c;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/mediation/h$c;->b:Lcom/applovin/impl/h3;

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/applovin/impl/mediation/f;->a(Lcom/applovin/impl/h3;JLcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$c;->d:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;->onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/mediation/b1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/b1;-><init>(Lcom/applovin/impl/mediation/h$c;Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/applovin/impl/mediation/h$c;->b:Lcom/applovin/impl/h3;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->h()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    invoke-static {v0, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
