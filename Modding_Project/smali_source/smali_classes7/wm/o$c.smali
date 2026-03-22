.class Lwm/o$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lwm/o;


# direct methods
.method private constructor <init>(Lwm/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm/o$c;->a:Lwm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwm/o;Lwm/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwm/o$c;-><init>(Lwm/o;)V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwm/o$c;->a:Lwm/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwm/o;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
