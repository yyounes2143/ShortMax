.class public final Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;
.super Ljava/lang/Object;
.source "PersistedEvents.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/PersistedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializationProxyV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->b:Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "proxyEvents"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/appevents/PersistedEvents;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/appevents/PersistedEvents$SerializationProxyV1;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
