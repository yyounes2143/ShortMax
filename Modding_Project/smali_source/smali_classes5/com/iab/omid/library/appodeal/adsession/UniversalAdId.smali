.class public final Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;
.super Ljava/lang/Object;


# instance fields
.field private final idRegistry:Ljava/lang/String;

.field private final universalAdIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->universalAdIdValue:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->idRegistry:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static createUniversalAdId(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;
    .locals 1

    .line 1
    const-string v0, "UniversalADID is null or empty"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "UniversalADID registry is null or empty"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->universalAdIdValue:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/iab/omid/library/appodeal/adsession/UniversalAdId;->idRegistry:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "%s; %s"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
