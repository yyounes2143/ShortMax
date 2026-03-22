.class public final Lcom/facebook/appevents/AppEvent$SerializationProxyV2;
.super Ljava/lang/Object;
.source "AppEvent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxyV2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEvent$SerializationProxyV2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/facebook/appevents/AppEvent$SerializationProxyV2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/appevents/AppEvent$SerializationProxyV2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->e:Lcom/facebook/appevents/AppEvent$SerializationProxyV2$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "jsonString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operationalJsonString"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->c:Z

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->d:Z

    .line 21
    .line 22
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/appevents/AppEvent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->c:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;->d:Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method
