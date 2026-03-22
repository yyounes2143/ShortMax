.class public final synthetic Lio/bidmachine/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Lio/bidmachine/AdRequest;

.field public final synthetic b:Lhr/b;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdRequest;Lhr/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/h;->a:Lio/bidmachine/AdRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/h;->b:Lhr/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/h;->a:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/h;->b:Lhr/b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->g(Lio/bidmachine/AdRequest;Lhr/b;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
