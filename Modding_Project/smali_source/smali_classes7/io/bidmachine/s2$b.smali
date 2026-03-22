.class Lio/bidmachine/s2$b;
.super Ljava/lang/Object;
.source "BidTokenManager.java"

# interfaces
.implements Lio/bidmachine/ExpirationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/ExpirationListener<",
        "Lio/bidmachine/BidToken;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/s2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/s2$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/s2$b;->b(Lio/bidmachine/BidToken;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic b(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "BidToken expired - %s"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public c(Lio/bidmachine/BidToken;)V
    .locals 2
    .param p1    # Lio/bidmachine/BidToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/t2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/bidmachine/t2;-><init>(Lio/bidmachine/BidToken;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidTokenManager"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/s2;->u(Lio/bidmachine/BidToken;)Lio/bidmachine/BidToken;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lio/bidmachine/BidToken;->destroyAdRequest()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic onExpired(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/BidToken;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/s2$b;->c(Lio/bidmachine/BidToken;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
