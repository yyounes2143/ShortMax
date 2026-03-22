.class public final synthetic Lio/bidmachine/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lio/bidmachine/h1;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/h1;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/h1;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/h1;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/BidMachine;->j(ZLjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
