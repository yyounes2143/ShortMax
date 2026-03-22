.class public final synthetic Lio/bidmachine/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Ljava/net/URLConnection;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/net/URLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/x0;->a:Ljava/lang/Throwable;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/x0;->b:Ljava/net/URLConnection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/x0;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/x0;->b:Ljava/net/URLConnection;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/ApiRequest;->a(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
