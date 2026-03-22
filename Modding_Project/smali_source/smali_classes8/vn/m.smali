.class public final synthetic Lvn/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lh7/l;


# instance fields
.field public final synthetic a:Lvn/n;

.field public final synthetic b:Lvn/n$e;


# direct methods
.method public synthetic constructor <init>(Lvn/n;Lvn/n$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvn/m;->a:Lvn/n;

    .line 5
    .line 6
    iput-object p2, p0, Lvn/m;->b:Lvn/n$e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvn/m;->a:Lvn/n;

    .line 2
    .line 3
    iget-object v1, p0, Lvn/m;->b:Lvn/n$e;

    .line 4
    .line 5
    check-cast p1, Lio/bidmachine/media3/common/a;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lvn/n;->w(Lvn/n;Lvn/n$e;Lio/bidmachine/media3/common/a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
