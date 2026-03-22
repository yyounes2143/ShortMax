.class public final synthetic Lio/bidmachine/r2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Lio/bidmachine/BidToken;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/r2;->a:Lio/bidmachine/BidToken;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/r2;->a:Lio/bidmachine/BidToken;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/s2;->d(Lio/bidmachine/BidToken;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
