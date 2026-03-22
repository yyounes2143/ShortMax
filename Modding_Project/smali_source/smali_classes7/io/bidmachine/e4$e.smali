.class Lio/bidmachine/e4$e;
.super Ljava/lang/Object;
.source "InitialRequestLoader.java"

# interfaces
.implements Lio/bidmachine/SessionManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/e4;


# direct methods
.method private constructor <init>(Lio/bidmachine/e4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/e4$e;->a:Lio/bidmachine/e4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/e4;Lio/bidmachine/e4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/e4$e;-><init>(Lio/bidmachine/e4;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/SessionManager$Status;)V
    .locals 1
    .param p1    # Lio/bidmachine/SessionManager$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/bidmachine/e4$e;->a:Lio/bidmachine/e4;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/bidmachine/e4;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
