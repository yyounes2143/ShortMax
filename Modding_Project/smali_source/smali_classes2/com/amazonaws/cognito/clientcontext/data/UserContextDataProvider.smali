.class public Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
.super Ljava/lang/Object;
.source "UserContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "UserContextDataProvider"


# instance fields
.field private a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

.field private b:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->c()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;-><init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    .line 5
    iput-object p2, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->b:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    return-void
.end method

.method public static c()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;->a()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "contextData"

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string/jumbo p1, "username"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "userPoolId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "timestamp"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->f()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "payload"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p1, "signature"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string/jumbo p1, "version"

    .line 17
    .line 18
    .line 19
    const-string p2, "ANDROID20171114"

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a(Landroid/content/Context;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->b:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    .line 21
    .line 22
    const-string p3, "ANDROID20171114"

    .line 23
    .line 24
    invoke-virtual {p2, p1, p4, p3}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_0
    sget-object p1, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->c:Ljava/lang/String;

    .line 38
    .line 39
    const-string p2, "Exception in creating JSON from context data"

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method protected b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
