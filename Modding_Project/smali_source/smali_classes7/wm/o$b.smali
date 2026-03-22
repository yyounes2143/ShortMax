.class Lwm/o$b;
.super Ljava/lang/Object;
.source "VisibilityTrackerImpl.java"

# interfaces
.implements Lvm/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwm/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lwm/o;


# direct methods
.method private constructor <init>(Lwm/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm/o$b;->a:Lwm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwm/o;Lwm/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwm/o$b;-><init>(Lwm/o;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lvm/a;->b(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lwm/o$b;->a:Lwm/o;

    .line 5
    .line 6
    invoke-static {p1}, Lwm/o;->o(Lwm/o;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwm/o$b;->a:Lwm/o;

    .line 2
    .line 3
    invoke-static {v0}, Lwm/o;->n(Lwm/o;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwm/o$b;->a:Lwm/o;

    .line 10
    .line 11
    invoke-static {v0}, Lwm/o;->o(Lwm/o;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
