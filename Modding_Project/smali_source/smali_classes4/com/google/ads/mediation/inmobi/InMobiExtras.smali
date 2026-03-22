.class public final Lcom/google/ads/mediation/inmobi/InMobiExtras;
.super Ljava/lang/Object;
.source "InMobiExtras.java"


# instance fields
.field private final keywords:Ljava/lang/String;

.field private final parameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->parameterMap:Ljava/util/HashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->keywords:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->keywords:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParameterMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiExtras;->parameterMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method
