.class Lio/bidmachine/iab/vast/processor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lio/bidmachine/iab/vast/processor/c;-><init>(ZZZ)V

    return-void
.end method

.method constructor <init>(Lio/bidmachine/iab/vast/tags/VastXmlTag;)V
    .locals 4

    .line 2
    const-string v0, "followAdditionalWrappers"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->N(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    const-string v2, "allowMultipleAds"

    invoke-virtual {p1, v2, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->N(Ljava/lang/String;Z)Z

    move-result v2

    .line 4
    const-string v3, "fallbackOnNoAd"

    invoke-virtual {p1, v3, v1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->N(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    invoke-direct {p0, v0, v2, p1}, Lio/bidmachine/iab/vast/processor/c;-><init>(ZZZ)V

    return-void
.end method

.method private constructor <init>(ZZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/c;->a:Z

    .line 8
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/processor/c;->b:Z

    .line 9
    iput-boolean p3, p0, Lio/bidmachine/iab/vast/processor/c;->c:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/c;->a:Z

    .line 2
    .line 3
    return v0
.end method
