.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$b;
.super Ljava/lang/Object;
.source "AdMediaVideoFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$b;-><init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
            "Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object p2, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->PRE:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$b;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$b;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method
