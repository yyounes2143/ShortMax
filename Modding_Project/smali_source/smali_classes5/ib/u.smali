.class public Lib/u;
.super Lib/n;
.source "AccountCpClientInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lib/n;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j(Ljava/lang/String;)Lib/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lib/u;

    .line 7
    .line 8
    invoke-direct {p0}, Lib/u;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lib/u;->k(Lorg/json/JSONObject;)Lib/u;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method protected k(Lorg/json/JSONObject;)Lib/u;
    .locals 4

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lib/n;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "packageName"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lib/n;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "hmsSdkVersion"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, p0, Lib/n;->c:J

    .line 25
    .line 26
    const-string v0, "subAppId"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lib/n;->d:Ljava/lang/String;

    .line 33
    .line 34
    return-object p0
.end method
